#!/usr/bin/perl -w
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if 0; #$running_under_some_shell


use strict;
use Data::Dumper;
use File::Find ();
use Text::SimpleTable::AutoWidth;
 

use vars qw/*name *dir/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;


my $FULL_DEBUG = 0;
my $DEBUG = 0;
$FULL_DEBUG = 1 if "@OSGeoLiveDoc_VERBOSE_DEBUG@" =~ /ON/;
$DEBUG = 1 if ("@OSGeoLiveDoc_DEBUG@" =~ /ON/) or $FULL_DEBUG;
my $version = "@OSGeoLiveDoc_VERSION@";
my $projects_info_file = '@CMAKE_SOURCE_DIR@/projects_info.csv';
my $output_file = '@CMAKE_CURRENT_BINARY_DIR@/../presentation.rst';
my $start_file = '@CMAKE_CURRENT_BINARY_DIR@/../start_presentation.txt';
my $section_notes_file = '@CMAKE_CURRENT_BINARY_DIR@/../middle_presentation.txt';
my $end_file = '@CMAKE_CURRENT_BINARY_DIR@/../end_presentation.txt';


######################################################
#VERIFICATION SECTION
######################################################

# Verify file exist
die "ERROR: Failed to find: '$projects_info_file'\n" unless -f $projects_info_file;
die "ERROR: Failed to find: '$start_file'\n" unless -f $start_file;
die "ERROR: Failed to find: '$end_file'\n" unless -f $end_file;

######################################################
# process section
######################################################
#

print "Building the 'overview.rst' file\n" if $DEBUG;

my $configuration = read_and_parse_configuration($projects_info_file);
my $section_notes = read_and_parse_section_notes($section_notes_file);


my $sections;
my $logo_list;
$sections .= read_start($start_file);
$sections .= get_section('Desktop GIS', $section_notes->{'Desktop GIS'}, $configuration);
$sections .= get_section('Browser Facing GIS', $section_notes->{'Browser Facing GIS'}, $configuration);
$sections .= get_section('Web Services', $section_notes->{'Web Services'} , $configuration);
$sections .= get_section('Data Stores', $section_notes->{'Data Stores'} , $configuration);
$sections .= get_section('Navigation and Maps', $section_notes->{'Navigation and Maps'} , $configuration);
$sections .= get_section('Spatial Tools', $section_notes->{'Spatial Tools'} , $configuration);
$sections .= get_section('Domain Specific GIS', $section_notes->{'Domain Specific GIS'} , $configuration);
$sections .= get_section('Data', $section_notes->{'Data'} , $configuration);
$sections .= get_section('Geospatial Libraries',  $section_notes->{'Geospatial Libraries'}, $configuration);
$sections .= read_start($end_file);
write_script($sections);
exit 0;


######################################################
# subroutines
######################################################

# read the beginning of the presentation 
sub read_start {
    my $file = shift;

    my $content;
    open(my $fh, '<', $file) or die "cannot open file $file";
    local $/;
    $content = <$fh>;
    close($fh);
    return $content;
}


# read and parse the .sig file and store the results in a hash
sub read_and_parse_configuration {
    # get the parameter and store it in the variable $file
    my $file = shift;

    #Initialise hash Hash.
    my %hash = ();

    # try to open the file or die
    open(IN, $file) || die "ERROR: Failed to open '$file'\n";

    my $line_number = 0;

    # Reads the file line by line and stores it in $line,
    while (my $line = <IN>) {

        ++$line_number;

        # keeping lines only for documentation
        if (!($line =~ /^[Y|y]/)) {
            next;
        };

        # Remove trailing spaces from the line
        $line =~ s/\s*$//;
        my @values = split('\|', $line);

        #removes spaces of all elements
        s{^\s+|\s+$}{}g foreach @values;

        # push the value in right section
        # put the $line in the bucket that has the name stored in $values[5]
        push @{$hash{$values[5]}}, $line;

        print "Section: '$values[5]' on line $line_number: $line\n" if $DEBUG;

    } # end of while loop

    # close the file
    close(IN);

    # return collected data in a hash data type
    return \%hash;
}

# read and parse the .sig file and store the results in a hash
sub read_and_parse_section_notes {
    # get the parameter and store it in the variable $file
    my $file = shift;

    #Initialise hash Hash.
    my %hash;

    # try to open the file or die
    open(IN, $file) || die "ERROR: Failed to open '$file'\n";

    my $line_number = 0;
    my $current_section='';
    my $current_note='';

    # Reads the file line by line and stores it in $line,
    while (my $line = <IN>) {

        ++$line_number;

        # Processing section
        if ($line =~ /\.\. revealjs::/) {
            # insert on hash
            if (defined $current_section and $current_section ne '' and defined $current_note and $current_note ne '') {
                $hash{$current_section} = $current_note;
            }

            $line =~ s/\.\. revealjs:: //;
            $line =~ s/\s*$//;
            $current_section = $line;
            $current_note='';
            next;
        };

        # Remove trailing spaces from the note
        $line =~ s/\s*$//;
        $current_note .= "\n    $line";
    } # end of while loop

    # close the file
    close(IN);

    # insert on hash
    if (defined $current_section and $current_section ne '' and defined $current_note and $current_note ne '') {
        $hash{$current_section} = $current_note;
    }

    # return collected data in a hash data type
    return \%hash;
}


sub get_section {
    my ($section, $description, $configuration) = @_;

    my $contents;
    my $section_data = $configuration->{$section};

    $contents .=  "
.. revealjs::
    
    .. revealjs:: $section
        :title-heading: h3
  
";

    my @name_line;
    my @img_line;
    my $elem_count = 0;
    my $tbl = Text::SimpleTable::AutoWidth->new();
    my $max = 0;
    my $slides;

    foreach my $line (@{$section_data}) {
        $line =~ s/\s*$//;

        my @values = split('\|', $line);

        s{^\s+|\s+$}{}g foreach @values;

        my $slug = $values[1];
        my $name = $values[11];
        my $note = get_note($slug);

        my $slide = "
    .. revealjs:: $name
        :title-heading: h3
  
        .. image:: ../images/projects/$slug/$slug"."_screenshot.png
            :height: 600

        .. rv_note::
            Note $note\n\n
";
        $slides .= $slide;


        
        push @name_line,  "$name";  
        push @img_line,   "|$slug" . "_logo|";  

        ++$elem_count;
        $max = $elem_count if $elem_count > $max;
        if ($elem_count == 4) {
            $tbl->row(@img_line);
            $tbl->row(@name_line);


            $elem_count = 0;
            @name_line = ();
            @img_line = ();
        }

        $logo_list .= ".. |$slug" . "_logo| image:: ../images/projects/$slug/logo_$slug.png\n";
    }

    if ($elem_count != 0) {
        while ($elem_count < $max) {
            ++$elem_count;
            push @name_line,  "____1234____ ";  
            push @img_line,   "____1234____ ";  
        }
        $tbl->row(@img_line);
        $tbl->row(@name_line);

    }

    if ($max == 1) {
        $contents .= "              @img_line\n           @name_line\n\n";
        $contents .= "$description";
        return "$contents\n$slides";
    }
    my $tbl_info = $tbl->draw;
    $tbl_info = cleanup($tbl_info);
    $contents .= "\n$tbl_info\n\n";
    $contents .= "$description";
    return "$contents\n$slides";
}

sub get_note {
    my ($slug) = $_[0];;
    my $file= "@CMAKE_SOURCE_DIR@/doc/overview/$slug" . "_overview.rst";

    # Read the file and save contents
    open(IN, $file) || die "ERROR: Failed to open '$file'\n";
    my $string = "";
    my $found  = 0;   
    while (<IN>) {
        $found = 1 if  $_ =~ /^.*presentation-note/;
        if ($found == 1) {
            $string .= "        $_";
        }
    }
    close IN;
    $string =~ s/^.*presentation-note//;
    return $string;
}



sub cleanup {
    my ($tbl_info) = @_;
    $tbl_info =~ s/^/            /;
    $tbl_info =~ s/\n/\n            /g;
    $tbl_info =~ s/ \|\n/\n/g;
    $tbl_info =~ s/ \| /   /g;

    $tbl_info =~ s/\.-/==/;
    $tbl_info =~ s/-\./==/;
    $tbl_info =~ s/-'/==/;
    $tbl_info =~ s/'-/==/;
    $tbl_info =~ s/-\+-/= =/g;
    $tbl_info =~ s/--/==/g;
    $tbl_info =~ s/-=/==/g;
    $tbl_info =~ s/____1234____//g;
    $tbl_info =~ s/ *$//;

    $tbl_info =~ s/^(.*)\n/$1\n$1\n/;
    return $tbl_info;
}



sub write_script {
    my ($sections) = @_;
    open(OUT, ">$output_file")
    || die "ERROR: failed to create '$output_file' : $!\n";


    print "sections =\n$sections" if $FULL_DEBUG;
    # write out the header and the commands to clean up the old extension
    print OUT <<EOF;

.. OSGeoLive overview file, created by:
   build_presentation.pl

$sections

$logo_list

EOF

    close(OUT);

    print "Overview can be found at $output_file\n" if $DEBUG;
}



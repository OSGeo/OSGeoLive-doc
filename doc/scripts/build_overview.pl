#!/usr/bin/perl -w
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if 0; #$running_under_some_shell


use strict;
use Data::Dumper;
use File::Find ();


use vars qw/*name *dir/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;


my $FULL_DEBUG = 0;
my $DEBUG = 0;
$FULL_DEBUG = 1 if "@OSGeoLiveDoc_VERBOSE_DEBUG@" =~ /ON/;
$DEBUG = 1 if ("@OSGeoLiveDoc_DEBUG@" =~ /ON/) or $FULL_DEBUG;
my $version = "@OSGeoLiveDoc_VERSION@";
my $projects_info_file = '@CMAKE_SOURCE_DIR@/projects_info.csv';
my $output_file = '@CMAKE_BINARY_DIR@/doc/overview/overview.rst';


######################################################
#VERIFICATION SECTION
######################################################

# Verify file exist
die "ERROR: Failed to find: '$projects_info_file'\n" unless -f $projects_info_file;

######################################################
# process section
######################################################
#

print "Building the 'overview.rst' file\n" if $DEBUG;

my $configuration = read_and_parse_configuration($projects_info_file);

my $sections;
$sections .= get_section('Desktop GIS', 'General GIS viewing, editing, and analysis on the desktop', $configuration);
$sections .= get_section('Browser Facing GIS', 'General GIS viewing, editing and analysis in the browser', $configuration);
$sections .= get_section('Web Services', 'Publishing spatial data to the internet', $configuration);
$sections .= get_section('Data Stores', 'Storing spatial data', $configuration);
$sections .= get_section('Navigation and Maps', ' ', $configuration);
$sections .= get_section('Spatial Tools', 'Specific analysis tools', $configuration);
$sections .= get_section('Domain Specific GIS', 'Applications targeted at a specific domain', $configuration);
$sections .= get_section('Data', 'Spatial data sets', $configuration);
$sections .= get_section('Geospatial Libraries', ' ', $configuration);
$sections .= get_section('Geospatial Standards', ' ', $configuration);
$sections .= get_section('Available in prior OSGeo-Live releases', ' ', $configuration);
write_script($sections);
exit 0;


######################################################
# subroutines
######################################################

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


sub get_section {
    my ($section, $description, $configuration) = @_;

    my $toctree;
    my $bullets;
    my $contents;

    my $section_data = $configuration->{$section};
    $contents .= "$section\n---------------------------------------------------------------\n\n$description\n\n";
    $toctree .= ".. toctree::\n";
    $toctree .= "    :hidden:\n\n";
    #$toctree .= "    :maxdepth: 1\n\n";

    foreach my $line (@{$section_data}) {
        $line =~ s/\s*$//;
        my @values = split('\|', $line);
        s{^\s+|\s+$}{}g foreach @values;

        # Handling the overview
        if($values[4] =~ "Y") {
            #Writting the OSgeoLogo
            if(defined($values[10]) and ($values[10] ne "")) {
                $bullets .= "|$values[10]|";
            } else {
                $bullets .= "|nologo|";
            }

            $toctree .= "    $values[1]_overview\n";
            $bullets .= " :doc:`$values[1]_overview` "
        }

        # Handling the quickstart
        if($values[3] =~ "Y") {
            $toctree .= "    ../quickstart/$values[1]_quickstart\n";
            $bullets .= "- [:doc:`Quickstart <../quickstart/$values[1]_quickstart>`]"
        }

        # Writing the description
        if(defined($values[7]) && ($values[7] ne "")) {
            $bullets .= " - $values[7]\n\n";
        } else {
            $bullets .= "\n\n";
        }
    }

    $toctree .= "\n";
    $bullets .= "\n";

    $contents .= $toctree;
    $contents .= $bullets;

    return $contents;
}




sub write_script {
    my ($sections) = @_;
    open(OUT, ">$output_file")
    || die "ERROR: failed to create '$output_file' : $!\n";


    print "sections =\n$sections" if $FULL_DEBUG;
    # write out the header and the commands to clean up the old extension
    print OUT <<EOF;

.. OSGeoLive overview file, created by:
   build_overview.pl

|osgeolive-version| Contents
================================================================================

.. contents::
    :local:


$sections
    ../prior_applications

:doc:`../prior_applications`

EOF

    close(OUT);

    print "Overview can be found at $output_file\n" if $DEBUG;
}



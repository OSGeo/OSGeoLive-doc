#!/usr/bin/perl -w
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if 0; #$running_under_some_shell


use strict;
use Data::Dumper;
use File::Find ();
use DateTime;


use vars qw/*name *dir *prune/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;
*prune  = *File::Find::prune;

sub Usage {
    die "Usage:\nFrom the cmake:
    build_overview <old_version>";
}

my $DEBUG = "@OSGeoLiveDoc_DEBUG@";
my $version = "@OSGeoLiveDoc_VERSION@";
my $projects_info_file = '@CMAKE_SOURCE_DIR@/projects_info.txt';
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
print "Building the overview.txt files\n" if $DEBUG;

my $configuration = read_and_parse_configuration($projects_info_file);

print "\ngenerating 'overview.rst' file\n" if $DEBUG;
my @sections = ();
push @sections , get_section("Desktop GIS", $configuration);
push @sections , get_section("Browser Facing GIS", $configuration);
push @sections , get_section("Web Services", $configuration);
push @sections , get_section("Data Stores", $configuration);
push @sections , get_section("Navigation and Maps", $configuration);
push @sections , get_section("Spatial Tools", $configuration);
push @sections , get_section("Domain Specific GIS", $configuration);
push @sections , get_section("Data", $configuration);
push @sections , get_section("Other software of interest (not available Live)", $configuration);
write_script(@sections);
exit 0;


######################################################
# subroutines
######################################################

# read and parse the .sig file and store the results in a hash
sub read_and_parse_configuration {
    my $file = shift;

    my %hash = ();

    open(IN, $file) || die "ERROR: Failed to open '$file'\n";

    # state:
    # 0 - starting process
    # 1 - processing types
    # 2 - processing functions
    # Other kinds of postgres objctes are not used in 2.x version of pgRouting
    my $state = 0;
    while (my $line = <IN>) {
        if ($line =~ /^#/) {
            print "found comment: $line\n" if $DEBUG;
            next;
        };
        # Remove spaces from the line
        $line =~ s/\s*$//;
        my @values = split('\|', $line);

        #removes spaces of all elements
        s{^\s+|\s+$}{}g foreach @values;

        if ($values[0] =~ "N") {
            print "Not for documentation: $line\n" if $DEBUG;
            next;
        }
        print "Section: '$values[5]' on line: $line\n" if $DEBUG;
        push @{$hash{$values[5]}}, $line;
    }

    close(IN);

    return \%hash;
}


sub get_section {
    my ($section, $configuration) = @_;

    my @toctree = ();
    my @bullets = ();
    my @contents = ();

    my $section_data = $configuration->{$section};
    push @contents,"$section\n---------------------------------------------------------------\n\n";
    push @toctree,".. toctree::\n";
    push @toctree,"    :maxdepth: 1\n\n";

    foreach my $line (@{$section_data}) {
        $line =~ s/\s*$//;
        my @values = split('\|', $line);
        s{^\s+|\s+$}{}g foreach @values;

        # Handling the overview
        if($values[4] =~ "Y") {
            push @toctree,"    $values[1]_overview\n";
            push @bullets,"* :doc:`$values[1]_overview` "
        }

        # Handling the quickstart
        if($values[3] =~ "Y") {
            push @toctree,"    ../quickstart/$values[1]_quickstart\n";
            push @bullets,"- [:doc:`Quickstart <../quickstart/$values[1]_quickstart>`]"
        }

        #Writting the comment
        if(defined($values[7]) && ($values[7] !~ "")) {
            push @bullets,"- $values[7]\n";
            print "found comment: $values[7]\n";
        } else {
            push @bullets,"\n";
            print "No comment:\n";
        }
    }

    push @toctree,"\n";
    push @bullets,"\n";

    push @contents, @toctree;
    push @contents, @bullets;

    return @contents;
}




sub write_script {
    my (@sections) = @_;
    open(OUT, ">$output_file")
    || die "ERROR: failed to create '$output_file' : $!\n";

    my $content .= $_ foreach @sections;

    print "sections =\n@sections" if $DEBUG;
    my $today = DateTime->now;
    # write out the header and the commands to clean up the old extension
    print OUT <<EOF;

.. OSGeo-Live overview file, created by
   build_overview.pl on $today.

|osgeo-live-version| Contents
================================================================================

$content


EOF

    close(OUT);
}



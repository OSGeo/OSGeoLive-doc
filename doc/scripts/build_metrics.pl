#!/usr/bin/perl -w
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if 0; #$running_under_some_shell


use strict;
use Data::Dumper;
use File::Find ();


use vars qw/*name *dir *prune/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;
*prune  = *File::Find::prune;

sub Usage {
    die "Usage:\nFrom the cmake:
    build_overview <old_version>";
}

my $FULL_DEBUG = 0;
my $DEBUG = 0;
$FULL_DEBUG = 1 if "@OSGeoLiveDoc_VERBOSE_DEBUG@" =~ /ON/;
$DEBUG = 1 if ("@OSGeoLiveDoc_DEBUG@" =~ /ON/) or $FULL_DEBUG;
my $version = "@OSGeoLiveDoc_VERSION@";
my $projects_info_file = '@CMAKE_SOURCE_DIR@/projects_info.csv';
my $output_file = '@CMAKE_BINARY_DIR@/doc/metrics.rst';


######################################################
#VERIFICATION SECTION
######################################################

# Verify file exist
die "ERROR: Failed to find: '$projects_info_file'\n" unless -f $projects_info_file;


######################################################
# process section 
######################################################

print "\nBuilding the 'metrics.rst' file\n" if $DEBUG;

my $configuration = read_and_parse_configuration($projects_info_file);

my $sections;
$sections .= get_section("Desktop GIS", $configuration);
$sections .= get_section("Browser Facing GIS", $configuration);
$sections .= get_section("Web Services", $configuration);
$sections .= get_section("Data Stores", $configuration);
$sections .= get_section("Navigation and Maps", $configuration);
$sections .= get_section("Spatial Tools", $configuration);
$sections .= get_section("Domain Specific GIS", $configuration);
$sections .= get_section("Data", $configuration);
$sections .= get_section("Geospatial Libraries", $configuration);
$sections .= get_section("Other software of interest (not available Live)", $configuration);
write_script($sections);
exit 0;


######################################################
# subroutines
######################################################

# read and parse the configuration file and store the results in a hash
# Input parameter: file name of the projects configuration
sub read_and_parse_configuration {
    # get the parameter and store it in the variable $file
    my $file = shift;

    #Initialise hash Hash.
    my %hash = ();

    open(IN, $file) || die "ERROR: Failed to open '$file'\n";
    my $line_number = 0;

    # Reads the file line by line and stores it in $line
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
    }

    close(IN);

    return \%hash;
}


sub get_section {
    my ($section, $configuration) = @_;

    my $contents = "";

    my $section_data = $configuration->{$section};
    if (not defined $section_data) {
        return $contents;
    }

    my $count = 0;
    $contents .= "\n$section\n---------------------------------------------------------------\n\n";
    $contents .= ".. raw:: html\n\n";

    foreach my $line (@{$section_data}) {
        $line =~ s/\s*$//;
        my @values = split('\|', $line);
        s{^\s+|\s+$}{}g foreach @values;


        
        if(defined($values[8]) && ($values[8] !~ "NA")) {
            ++$count;
            $contents .= "    <script type=\"text/javascript\" src=\"https://www.openhub.net/p/$values[8]/widgets/project_factoids_stats?format=js\"></script>\n";
        }
    }

    $contents .= "\n";
    if ($count == 0) {
        return "";
    }
    return $contents;
}




sub write_script {
    my ($sections) = @_;
    open(OUT, ">$output_file")
    || die "ERROR: failed to create '$output_file' : $!\n";


    print "Sections = $sections\n" if $FULL_DEBUG;
    # write out the header and the commands to clean up the old extension
    print OUT <<EOF;

.. OSGeoLive metrics.rst file, created by:
   build_metrics.pl

|osgeolive-version| Project Metrics
================================================================================

Metrics provided by `OpenHUB <https://www.openhub.net/>`_ which are derived
from the projects' code repositories. Note these metrics have known deficiencies
(such as caused by repositories moving), and only provide partial indications
about the projects' development. Lack of change in smaller, concise packages
and libraries may simply reflect a level of maturity and completeness.

Viewing the metrics requires an Internet connection and Javascript to be enabled.

.. raw:: html

  <script type="text/javascript" src="https://www.openhub.net/p/OSGeoLive/widgets/project_factoids_stats?format=js"></script><br/>

  $sections


EOF

    close(OUT);
    print "Metrics can be found at $output_file\n" if $DEBUG;
}



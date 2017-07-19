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

my $DEBUG = "@OSGeoLiveDoc_DEBUG@";
my $version = "@OSGeoLiveDoc_VERSION@";
my $projects_info_file = '@CMAKE_SOURCE_DIR@/projects_info.txt';
my $output_file = '@CMAKE_CURRENT_BINARY_DIR@/../metrics.rst';


######################################################
#VERIFICATION SECTION
######################################################

# Verify file exist
die "ERROR: Failed to find: '$projects_info_file'\n" unless -f $projects_info_file;

######################################################
# process section 
######################################################
#
my $configuration = read_and_parse_configuration($projects_info_file);

print "\ngenerating 'metrics.rst' file\n" if $DEBUG;
my $sections;
$sections .= get_section("Desktop GIS", $configuration);
$sections .= get_section("Browser Facing GIS", $configuration);
$sections .= get_section("Web Services", $configuration);
$sections .= get_section("Data Stores", $configuration);
$sections .= get_section("Navigation and Maps", $configuration);
$sections .= get_section("Spatial Tools", $configuration);
$sections .= get_section("Domain Specific GIS", $configuration);
$sections .= get_section("Data", $configuration);
$sections .= get_section("Other software of interest (not available Live)", $configuration);
write_script($sections);
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

    my $contents;

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


    print "sections =\n$sections" if $DEBUG;
    # write out the header and the commands to clean up the old extension
    print OUT <<EOF;

.. OSGeo-Live metrics.rst file, created by:
   build_metrics.pl

|osgeo-live-version| Project Metrics
================================================================================

Metrics provided by `OpenHUB <https://www.openhub.net/>`_ which are derived
from the projects' code repositories. Note these metrics have known deficiencies
(such as caused by repositories moving), and only provide partial indications
about the projects' development. Lack of change in smaller, concise packages
and libraries may simply reflect a level of maturity and completeness.

Viewing the metrics requires an Internet connection and Javascript to be enabled.

.. raw:: html

  <script type="text/javascript" src="https://www.openhub.net/p/OSGeo-Live/widgets/project_factoids_stats?format=js"></script><br/>

  $sections


EOF

    close(OUT);
}



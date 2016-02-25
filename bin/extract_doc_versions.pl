#!/usr/bin/perl
###############################################################################
# 
# Purpose: Provide translation status of OSGeoLive docs, extracted from git
# Author:  Cameron Shorter
# Usage: extract_doc_versions -o outputfile.html
#
###############################################################################
# Copyright (c) 2012 Open Source Geospatial Foundation (OSGeo)
# Copyright (c) 2012 LISAsoft
# Copyright (c) 2012 Cameron Shorter
#
# Licensed under the GNU LGPL.
# 
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This library is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".
###############################################################################

use strict;
use warnings;
use File::Basename;
use Getopt::Std;
use Cwd;

# initialise variables
my $osgeolive_docs_url="http://adhoc.osgeo.osuosl.org/livedvd/docs/";
my %gitinfo;
my $line;

# Get output file from the -o option, otherwise print to stdout
my %options=();
getopts("o:", \%options);
my $outfile = *STDOUT;
if ($options{o}) {
  open $outfile, ">", $options{o} || die "can't open output file $options{o}: $!\n";
}

# cd to the git document directory
my $thisdir;
my $newdirfile;
$thisdir = cwd();
my $outstd = *STDOUT;
chdir(dirname($0)."/..");

&extract_app_version;
&extract_git_info;

#&extract_review_status;
&print_header;
&print_summary;
&print_lang_versions;
&print_footer;

###############################################################################
# Print Header html
###############################################################################
sub print_header() {
  print $outfile "<!DOCTYPE HTML>\n";
  print $outfile "<html>\n";
  print $outfile "  <head>\n";
  print $outfile "    <meta charset='utf-8'>\n";
  print $outfile "    <title>OSGeo-Live Documentation translation status</title>\n";
  print $outfile "    <style>";
  print $outfile "        a:link.colored {color: red;}\n";
  print $outfile "        a:visited.colored {color: orange;}\n";
  print $outfile "    </style>";
  print $outfile "  </head>\n";
  print $outfile "  <body>\n";
  print $outfile "    <h1>OSGeo-Live Documentation translation status</h1>\n";
  print $outfile "    <p>Help translate - <a href='http://wiki.osgeo.org/wiki/Live_GIS_Translate'>click here!</a></p>\n";
  print $outfile "    <p><b>Last Updated:</b> ", `date`;
  print $outfile ". This page is calculated from document version numbers in git.</p>\n";
}

###############################################################################
# Print Footer html
###############################################################################
sub print_footer() {
  print $outfile "  </body>";
  print $outfile "</html>";
}

###############################################################################
# Extract git info for osgeo-live document files and store in
# a hash array @gitlist
###############################################################################
sub extract_git_info() {
  my @files = split(/\n/, `git ls-tree -r --name-only HEAD`);

  foreach (@files) {
    if (
      m#^[a-z][a-z]/# # Match directories starting with 2 letter country code
      #&& m#.rst## # Only look at rst source docs
    ) {
      my $dir_file = $_;

      # extract $lang/$dir/$file
      my @file_bits = split /\//, $dir_file;
      my $lang=$file_bits[0];
      my $file=$file_bits[$#file_bits];
      my $dir;
      if ($#file_bits==2) {
        $dir=$file_bits[1];
      } else {
        $dir=".";
      }
      
      # Extract $commit_hash,$author, $date, $date_id
      my @atribs= split (/,/, `git log -1 --format="%h,%an,%ai,%at" -- filename $dir_file`);

      # Extract info into a hash array
      $gitinfo{$lang}{"$dir/$file"}{"dir"}=$dir;
      $gitinfo{$lang}{"$dir/$file"}{"file"}=$file;
      $gitinfo{$lang}{"$dir/$file"}{"commit_hash"}=$atribs[0];
      $gitinfo{$lang}{"$dir/$file"}{"author"}=$atribs[1];
      $gitinfo{$lang}{"$dir/$file"}{"date"}=$atribs[2];
      $gitinfo{$lang}{"$dir/$file"}{"date_id"}=$atribs[3];

      #print $outfile "lang=$lang,dir=$dir,file=$file,commit_hash=$atribs[0],author=$atribs[1],date=$atribs[2],date_id=$atribs[3]\n";
      #exit;
    }
  }
}

###############################################################################
# Extract git info for osgeo-live document files and store in
# a hash array @gitlist
###############################################################################
sub extract_app_version() {
  # Check docs have been built
  if (!-d "_build") {
    print STDERR "Warning: Docs haven't been built yet. Doc version has not been extracted. Run 'make html' from root directory\n";
  } else {
  
    my @lines = `grep " Version:" _build/html/en/overview/*`;
    foreach (@lines) {
      $_ =~ m#(^.*overview/)(.+)(_overview.html.* Version:.+strong>*) *(.*)(</p>.*)#;
      $gitinfo{"en"}{"overview/$2_overview.rst"}{"app_version"}=$4;
      #print $outfile "$2,$4\n";
    }
  }
}

###############################################################################
# Extract Overview and Quickstart written and review status from Google
# Spreadsheet
###############################################################################
#sub extract_review_status() {
#  my $csv = Text::CSV->new();
#  my $google_doc_status_csv="https://docs.google.com/feeds/download/spreadsheets/Export?exportFormat=tsv&key=0Al9zh8DjmU_RdGIzd0VLLTBpQVJuNVlHMlBWSDhKLXc#gid=13"
#
#  open (my $file, "<", $google_doc_status_csv) or die $!;
#
#  while (my $line = <$file>) {
#    my @columns = split(/\t/, $line);
#    print "@columns\n";
#  }
#  close $file;
#}

###############################################################################
# Summarise tranlation status
###############################################################################
sub print_summary() {

  print $outfile "<a name='summary'/><h2>Summary</h2>\n";
  print $outfile "<table border='1'>\n";
  print $outfile "<tr><th>language</th><th>Sum up to date</th><th>Sum translated</th></tr>\n";

  # number of english files to translate
  my $sum_files=scalar keys %{$gitinfo{"en"}};

  # loop through languages
  foreach my $lang (sort keys %gitinfo) {
    # loop through filenames
    my $up_to_date=0;
    foreach my $dir_file (keys %{$gitinfo{"en"}}) {
      if (exists $gitinfo{$lang}{$dir_file}) {
        if ($gitinfo{$lang}{$dir_file}{'date_id'} >= $gitinfo{"en"}{$dir_file}{'date_id'}) {
          $up_to_date++;
        }
      }
    }
    my $translations=scalar keys %{$gitinfo{$lang}};
    my $translations_percent=int($translations*100/$sum_files);
    my $up_to_date_percent=int($up_to_date*100/$sum_files);
    print $outfile "<tr><td>$lang</td><td>$up_to_date ($up_to_date_percent%)</td>";
    print $outfile "<td>$translations ($translations_percent%)</td></tr>\n";
  }
  print $outfile "</table>\n";
}

###############################################################################
# print table showing file versions for each language
###############################################################################
sub print_lang_versions() {

  print $outfile "<a name='lang_versions'/><h2>Per file translation status</h2>\n";
  print $outfile "<p>Hyperlinks point to the difference in the English document since last translated.</p>\n";
  print $outfile "<table border='1'>\n";
  print $outfile "<tr><th>dir/file</th><th>App Version in Overview</td><th>en</th>\n";
  foreach my $lang (sort keys %gitinfo) {
    $lang =~ /en/ && next;
    print $outfile "<th>$lang</th>";
  }
  print $outfile "</tr>\n";

  # loop through filenames
  foreach my $dir_file (sort keys %{$gitinfo{"en"}}) {

    # print file/dir and url
    my $html_file=$gitinfo{'en'}{$dir_file}{'file'};
    $html_file=~s#.rst$#.html#;
    print $outfile "<tr><td>";
    print $outfile "<a href='$osgeolive_docs_url/en/";
    print $outfile "$gitinfo{'en'}{$dir_file}{'dir'}/$html_file'>";
    print $outfile "$dir_file</a></td>";

    # print date
    #print $outfile "<td>$gitinfo{'en'}{$dir_file}{'date'}</td>";

    # print app version
    if ( $gitinfo{'en'}{$dir_file}{'app_version'} ) {
      print $outfile "<td>$gitinfo{'en'}{$dir_file}{'app_version'}</td>";
    }

    # print english doc date
    print $outfile "<td>$gitinfo{'en'}{$dir_file}{'date'}</td>";

    # loop through languages
    foreach my $lang (sort keys %gitinfo) {
      $lang =~ /en/ && next;

      # print language's version
      print $outfile "<td>";
      if (exists $gitinfo{$lang}{$dir_file} ) {
        my $color="red";
        if ($gitinfo{$lang}{$dir_file}{'date_id'} >= $gitinfo{"en"}{$dir_file}{'date_id'}) {
          $color="green";
        }
        print $outfile "<font color=$color>";
        if ($color eq "red"){
            $newdirfile = $dir_file;
            $newdirfile =~ s:/:_:;
            $newdirfile =~ s:.::;
            system("echo '<!DOCTYPE HTML>\n<html>\n  <head>\n    <meta charset='utf-8'>\n    <title>OSGeo-Live diff $lang $dir_file</title>\n  </head>\n  <body>\n    <h1>OSGeo-Live diff $lang $dir_file</h1>\n    <pre>\n' > $thisdir/$lang.$newdirfile.html");
            system("sh $thisdir/diff_last_translation.sh $lang $dir_file >> $thisdir/$lang.$newdirfile.html");
            system("echo '    </pre>\n  </body>\n</html>\n' >> $thisdir/$lang.$newdirfile.html");
            print $outfile "<a href='$lang.$newdirfile.html' target='_blank' class='colored'>";
            print $outfile "$gitinfo{$lang}{$dir_file}{'date'}";
            print $outfile "</a>";
        } else {
            print $outfile "$gitinfo{$lang}{$dir_file}{'date'}";
        }
        print $outfile "</font>";
      }
      print $outfile "</td>";
    }
    print $outfile "</tr>\n";
  }
  print $outfile "</table>\n";
}


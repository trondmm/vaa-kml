This repository contains a Perl script for converting Volcanic Ash Advisory
messages to Keyhole Markup Language (KML) files suitable for use with Diana.
The script was written by Trond Michelsen and imported here by David Boddie
for further development.

Install the script's Perl dependencies:

  sudo apt-get install libhtml-template-dumper-perl libtemplate-perl \
                       libxml-treebuilder-perl libregexp-grammars-perl

The script is run with a single argument to specify the HTML file to
process:

  ./metno-vaa-kml <HTML file>

A KML file will be created with the same name as the original HTML file but
with a .kml file extension.

Suitable HTML files can be obtained from the following page:

  http://www.meteo.fr/vaac/evaa.html

For convenience, there is also a Python script to fetch the latest 10
advisories from the Toulouse Volcanic Advisory Centre site and convert them
to KML using the Perl script. Run this in the following way:

  ./fetch_vaa_html.py http://www.meteo.fr/vaac/evaa.html files

The HTML files fetched from the site and the KML files created by the Perl
script will be stored in the newly created directory, called "files" in this
example.

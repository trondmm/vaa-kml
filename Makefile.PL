#!/usr/bin/env perl

use strict;
use warnings;
use inc::Module::Install;

name 'metno-vaa-kml';
version '0.3.5';

requires 'LWP::Simple';
requires 'HTML::TreeBuilder';
requires 'Template';
requires 'Data::Dumper';

install_script 'metno-vaa-kml';

postamble <<'END_OF_MAKEFILE';
install:: extra_install
pure_install:: extra_install
install_vendor:: extra_install

extra_install:
	install -d $(DESTDIR)/usr/share/metno-vaa-kml
	install -m 640 share/metno-vaa-kml/volcano.tt $(DESTDIR)/usr/share/metno-vaa-kml/volcano.tt
END_OF_MAKEFILE

WriteAll;

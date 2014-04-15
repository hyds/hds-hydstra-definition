use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'Hydstra';
all_from 'lib/Hydstra.pm';
author   q{Sholto Maud <sholto.maud@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/shotlom/Hydstra.git',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
  'local::lib'        => 0.01,
  'FindBin'           => 0.01       
);

install_as_cpan;
auto_install;
WriteAll;

#my $gitrepo =  'git://github.com/shotlom/Hydstra.git';
#system("cpanm $gitrepo"); 
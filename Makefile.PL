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
   #homepage   => 'http://yourwebsitehere.com',
   #IRC        => 'irc://irc.perl.org/#Hydstra',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/Sholto Maud/Hydstra.git',
   #bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Hydstra',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
   #'ABC'              => 1.6,
   #'Foo::Bar::Module' => 5.0401,
);

install_as_cpan;
auto_install;
WriteAll;

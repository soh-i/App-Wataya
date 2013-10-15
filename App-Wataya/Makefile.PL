use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'App-Wataya';
all_from 'lib/App/Wataya.pm';
author   q{yukke <soh.ishiguro3914@gmail.com>};
license  'mit';

configure_requires 'Module::Install' => 0;

build_requires 'Test::More' => 0;

requires 
    'Encode' => 0,
    'File::Which' => 0,
    'LWP::UserAgent' => 0,
    'HTML::TreeBuilder' => 0;

install_script 'bin/wataya';

tests 't/*.t';

WriteAll;

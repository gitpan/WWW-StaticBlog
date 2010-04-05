
use strict;
use warnings;

 BEGIN { require 5.010; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t t/lib/Test/WWW/StaticBlog/*.t'
                                 },
                       'NAME' => 'WWW::StaticBlog',
                       'DISTNAME' => 'WWW-StaticBlog',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Jacob Helwig <jhelwig@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Directory::Scratch' => '0',
                                             'Test::TempDir' => '0',
                                             'Test::More' => '0',
                                             'Data::Faker' => '0',
                                             'Text::Lorem' => '0',
                                             'File::Temp' => '0',
                                             'Text::Outdent' => '0',
                                             'Test::Mini::Unit' => '0',
                                             'Data::Faker::DateTime' => '0'
                                           },
                       'ABSTRACT' => 'Generate a set of static pages for a blog.',
                       'EXE_FILES' => [
                                        'bin/www-staticblog',
                                        'bin/www-staticblog'
                                      ],
                       'VERSION' => '0.001',
                       'PREREQ_PM' => {
                                        'MooseX::Types::Moose' => '0',
                                        'DateTime' => '0',
                                        'MooseX::Declare' => '0',
                                        'Class::MOP' => '0',
                                        'File::Spec' => '0',
                                        'Text::CSV' => '0',
                                        'aliased' => '0',
                                        'MooseX::Method::Signatures' => '0',
                                        'File::Find' => '0',
                                        'XML::Atom::SimpleFeed' => '0',
                                        'File::Path' => '0',
                                        'Email::Simple' => '0',
                                        'List::MoreUtils' => '0',
                                        'Moose' => '0',
                                        'File::Slurp' => '0',
                                        'List::PowerSet' => '0',
                                        'Text::Multi' => '0',
                                        'Hash::Merge' => '0',
                                        'Data::Dumper' => '0',
                                        'Time::SoFar' => '0',
                                        'Date::Parse' => '0',
                                        'Moose::Exporter' => '0',
                                        'DateTime::TimeZone' => '0',
                                        'MooseX::Types' => '0',
                                        'Set::Object' => '0',
                                        'File::Copy::Recursive' => '0',
                                        'Config::JFDI' => '0',
                                        'Cwd' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




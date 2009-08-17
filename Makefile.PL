use 5.000000;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    EXE_FILES		=> [ 'nam' ],
    NAME                => 'File::Namaste',
    AUTHOR              => 'John A. Kunze <jak@ucop.edu>',
    VERSION_FROM        => 'VERSION',
    ABSTRACT_FROM       => 'lib/File/Namaste.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'Apache2')
      : ()),
    PM			=> {
    	'lib/File/Namaste.pm' => 'blib/lib/File/Namaste.pm',
    },
    PL_FILES            => {},
    PREREQ_PM => {
	'Getopt::Long'	=> 0,
	'Pod::Usage'	=> 0,
	'File::ANVL'	=> 0.15,
	'File::ERC'	=> 0.01,
	'File::Spec'	=> 0,
	'File::Value'	=> 0.15,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'File-Namaste-*' },
);


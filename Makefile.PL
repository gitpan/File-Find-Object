# $Id: Makefile.PL 90 2007-07-31 13:26:06Z shlomif $

use ExtUtils::MakeMaker;

sub MY::postamble {
    <<MAKECHANGELOG;
.PHONY: ChangeLog

ChangeLog:
	cvs2cl -W 400 -I ChangeLog --accum -U ../common/username
	rm -f *.bak

MAKECHANGELOG
}

WriteMakefile(
    NAME	 => 'File::Find::Object',
    VERSION_FROM => 'lib/File/Find/Object.pm',
    PREREQ_PM =>
    {
        'Class::Accessor' => 0,
    },
    PL_FILES => {},
);

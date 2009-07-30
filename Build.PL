
use strict;
use warnings;

use File::Spec;
use lib File::Spec->catdir(File::Spec->curdir(), "inc");

use Test::Run::Builder;

my $builder = Test::Run::Builder->new(
    'module_name' => "File::Find::Object",
    'build_requires' =>
    {
        'File::Path' => 0,
        'Test::More' => 0,
    },
    'requires' =>
    {
        'base' => 0,
        'Carp' => 0,
        'Class::XSAccessor' => 0,
        'Fcntl' => 0,
        'File::Spec' => 0,
        'List::Util' => 0,
        'strict' => 0,
        'warnings' => 0,
    },
    'license' => "perl",
    meta_merge => {
        resources => {
            homepage => "http://www.shlomifish.org/open-source/projects/File-Find-Object/",
            license => "http://www.perlfoundation.org/artistic_license_2_0",
            Repository => "svn+ssh://nanardon.zarb.org/home/svn/File-Find-Object/trunk",
        },
        keywords =>
        [
            "alternative-to-core",
            "directories",
            "directory",
            "directory-traversal",
            "directory-tree",
            "directory-trees",
            "file",
            "file-find",
            "find",
            "instance",
            "instantiated",
            "instantiation",
            "iterative",
            "object",
            "object-oriented",
            "oop",
            "prune",
            "traversal",
            "traverse",
            "tree",
        ]
    },
);
$builder->create_build_script;
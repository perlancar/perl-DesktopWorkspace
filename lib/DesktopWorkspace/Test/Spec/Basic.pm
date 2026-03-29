package DesktopWorkspace::Test::Spec::Basic;

use strict;
use warnings;

use Data::Clone;
use Role::Tiny::With;

with 'DesktopWorkspaceRole::Spec::Basic';

# AUTHORITY
# DATE
# DIST
# VERSION

my $spec = {
    summary => 'A summary',
    kde_activity => 'foo',
    items => [
        {url => 'https://www.example.com'},
        {file => '/foo'},
        {dir => '/bar'},
        {app_path => '/usr/bin/dolphin'},
    ],
};

sub new {
    my $class = shift;
    bless clone($spec), $class;
}

sub items {
    my $self = shift;
    if (@_) {
        $self->{items} = $_[0];
    } else {
        $self->{items};
    }
}

sub kde_activity {
    my $self = shift;
    if (@_) {
        $self->{kde_activity} = $_[0];
    } else {
        $self->{kde_activity};
    }
}

sub new_browser_window {
    my $self = shift;
    if (@_) {
        $self->{new_browser_window} = $_[0];
    } else {
        $self->{new_browse_window};
    }
}

1;

# ABSTRACT: A test desktop workspace

=for Pod::Coverage ^(.+)$

package DesktopWorkspaceRole::Spec::Basic;

use strict;
use warnings;

use Role::Tiny;
use Role::Tiny::With;

# AUTHORITY
# DATE
# DIST
# VERSION

# constructor
requires 'new';

# other required methods
requires 'items';
requires 'kde_activity';
requires 'new_browser_window';

# mixin
#with 'Role::TinyCommons::Iterator::Resettable';
#with 'Role::TinyCommons::Collection::GetItemByPos';

# provides

###

1;
# ABSTRACT: Required methods for all DesktopWorkspace::* modules

=head1 DESCRIPTION

 category                     method name                   note
 --------                     -----------                   -------
 instantiating                new(%args)

 properties                   items([ $val ])
                              kde_activity([ $val ])
                              new_browser_window([ $val ])


=head1 ROLES MIXED IN

None.


=head1 REQUIRED METHODS

=head2 new

Usage:

 my $dw = DesktopWorkspace::Foo->new([ %args ]);

Constructor. Must accept a pair of argument names and values.

=head2 items

Get or set items.

=head2 kde_activity

Get or set the C<kde_activity> property.

=head2 new_browser_window

Get or set the C<new_browser_window> property.


=head1 PROVIDED METHODS

None.


=head1 SEE ALSO

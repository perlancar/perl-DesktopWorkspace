## no critic: TestingAndDebugging::ProhibitNoStrict
package DesktopWorkspace;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: DesktopWorkspace specification

=head1 DESCRIPTION

This document specifies a way to describe windows and applications to set up for
a workspace on the desktop.


=head1 SPECIFICATION STATUS

The series 1.x is still unstable. 2.x is expected to be the first series to be
stable.


=head1 SPECIFICATION VERSION

1


=head1 GLOSSARY

=head2 DesktopWorkspace specification

A specification of what windows, applications, URLs in browser tabs should be
present in a workspace on the desktop.

=head2 DesktopWorkspace specification module

A Perl module under C<DesktopWorkspace::> namespace (or some other namespace
specified, e.g. C<CPANID::DesktopWorkspace::>, C<Some::App::DesktopWorkspace::>)
that follows at least the L<DesktopWorkspaceRole::Spec::Basic> role.

Some example module names:

=over

=item * PERLANCAR::DesktopWorkspace::Coding

Specifies items to be opened in the desktop workspace for coding, e.g. which
Konsole terminal tabs to open, which IDE to open.

=item * PERLANCAR::DesktopWorkspace::LLM

Specifies PERLANCAR's standard sets of AI LLM websites usually opened.

=item * SHARYANTO::DesktopWorkspace::Writing

Specifies items to be opened in the desktop workspace for writing stuffs, e.g.
which dictionary, translation, and AI LLM websites to open, which directories to
open in the file manager.

=item * SHARYANTO::DesktopWorkspace::Acme::RND

Specifies items to be opened in the desktop workspace for Steven's R&D work for
the company Acme, e.g. which LibreOffice Calc spreadsheets and Google
spreadsheets to open, which directories to open in the file manager.

=back

=head2 Workspace item

Either an application, a directory/file, or a URL.


=head1 SPECIFICATION

=head2 Desktop workspace specification

A desktop workspace specification is a L<DefHash> structure that contains the
following properties:

=over

=item * items

An array of L</workspace item>s.

=item * new_browser_window

Bool. When opening one or more URL's, use a new window.

=item * kde_activity

Str. Switch to a KDE activity of the specified name.

=back

=head2 Workspace item

A L<DefHash> structure that contain the following properties:

=over

=item * url

A URL to be opened in a browser.

=item * file

Path to a file to be opened by an appropriate desktop application.

=item * dir

Path to a directory to be opened by an appropriate desktop application (usually
a file manager).

=item * app_path

Path to a program to be run.

=item * firefox_container

Str. When using Firefox to open the item, use this container.

=item * new_browser_window

Bool. When opening the URL, use a new browser window.

=back

Exactly one of C<url>, C<file>, C<dir>, C<app_path> must be specified.


=head1 NOTES

Currently a single desktop workspace specification can only describe items for a
single KDE activity. To setup multiple KDE activities, use a separate desktop
workspace specification for each.


=head1 WISHLIST

Open directories in konsole tabs.

Open C<screen> or C<tmux> sessions, along with detailed specification on window
size, etc.


=head1 HISTORY


=head1 SEE ALSO

L<DefHash>

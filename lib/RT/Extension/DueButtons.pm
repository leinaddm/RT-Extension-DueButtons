use strict;
use warnings;
package RT::Extension::DueButtons;

our $VERSION = '0.03';

=head1 NAME

RT-Extension-DueButtons - shortcut buttons to quickly set due dates for ticket

=head1 DESCRIPTION

After installing this extension, on the ticket's page, you should see
new buttons to set the ticket due date to: tomorrow, next week, next
monday, next month or to reset it. The first four buttons will also
Stall the ticket. The reset button doesn't change the ticket status.

=head1 INSTALLATION 

=over

=item perl Makefile.PL

=item make

=item make install

May need root permissions

=item Edit your /opt/rt4/etc/RT_SiteConfig.pm

Add this line:

    Set(@Plugins, qw(RT::Extension::DueButtons));

or add C<RT::Extension::DueButtons> to your existing C<@Plugins> line.

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

Daniel De Marco <ddm@didiemme.net>

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2013 by Daniel De Marco

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;

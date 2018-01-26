use strict;
use warnings;
package RT::Extension::DueButtons;

our $VERSION = '0.05';

$RT::Config::META{'DueButtons'} = {
    Section         => 'Ticket display',
    Overridable     => 1,
    Widget          => '/Widgets/Form/Boolean',
    WidgetArguments => {
        Description => 'Display Due Date Buttons at Dates Widget', # loc
        Hints       => '(' . __PACKAGE__ . ')',
    },
};


=head1 NAME

RT-Extension-DueButtons - shortcut buttons to quickly set due dates for ticket

=head1 DESCRIPTION

After installing this extension, on the ticket's page, you should see
new buttons to set the ticket due date. 

The +1d, +2d, +3d, +1w, +1m buttons will advance the current due date
for the ticket by the corresponding time amount. If the due date is not
set at the moment, they will assume today's date as the base for the
advancement.

The tomorrow, next monday and reset buttons will set the due date to
tomorrow, next monday or reset it respectively. 

All buttons except for the reset one will also set the ticket status to
Stalled. The reset button does not change the ticket status.

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

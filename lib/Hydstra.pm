
{
package Hydstra;
use Moose;
use Hydstra::Stnini;
  use Hydstra::Wrehouse;
  use Hydstra::Ratepts;
  use Hydstra::Sewrconf;
  use Hydstra::Hydmeas;
  use Hydstra::History;
  use Hydstra::Gaugings;
  use Hydstra::Period;
  use Hydstra::Artpress;
  use Hydstra::Sectsurv;
  use Hydstra::Samples;
  use Hydstra::Drilexam;
  use Hydstra::Drilling;
  use Hydstra::Artsumm;
  use Hydstra::Ttabhed;
  use Hydstra::Aquifer;
  use Hydstra::Drilhist;
  use Hydstra::Lithdril;
  use Hydstra::Artdist;
  use Hydstra::Artflows;
  use Hydstra::Series;
  use Hydstra::Summary;
  use Hydstra::Resextr;
  use Hydstra::Resdflt;
  use Hydstra::Pumpread;
  use Hydstra::Sections;
  use Hydstra::Drilslic;
  use Hydstra::Station;
  use Hydstra::Sshift;
  use Hydstra::Drilapp;
  use Hydstra::Drilexp;
  use Hydstra::Site;
  use Hydstra::Lithgeo;
  use Hydstra::Tshift;
  use Hydstra::Insthist;
  use Hydstra::Gwpurp;
  use Hydstra::Swfvar;
  use Hydstra::Gaugmeas;
  use Hydstra::Nrstn;
  use Hydstra::Sampextr;
  use Hydstra::Rateper;
  use Hydstra::Bench;
  use Hydstra::Aresite;
  use Hydstra::Sampdflt;
  use Hydstra::Lithstra;
  use Hydstra::Hydrlmp;
  use Hydstra::Gwtreat;
  use Hydstra::Swfhist;
  use Hydstra::Areasmt;
  use Hydstra::Casing;
  use Hydstra::Drilequp;
  use Hydstra::Rateeqn;
  use Hydstra::Peaktime;
  use Hydstra::Gwtrace;
  use Hydstra::Sewrsite;
  use Hydstra::Gwdevel;
  use Hydstra::Gravel;
  use Hydstra::Drillic;
  use Hydstra::Secthed;
  use Hydstra::Swfsite;
  use Hydstra::Swfparm;
  use Hydstra::Gwhole;
  use Hydstra::Gwpipe;
  use Hydstra::Pumptest;
  use Hydstra::Ttabpts;
  use Hydstra::Gwtracer;
  use Hydstra::Ratehed;
  use Hydstra::Driller;
  use Hydstra::Results;
  
__PACKAGE__->meta->error_class('Moose::Error::Croak');

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a Hydstra tables 

=cut
  
no Moose;
}

  
=head1 AUTHOR

Sholto Maud, C<< <sholto.maud at gmail.com> >>

=head1 BUGS

Please report any bugs in the issues wiki.

=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2014 Sholto Maud.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS AS IS AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut  
  
1;

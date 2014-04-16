
{
package Hydstra::Peaktime;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'PEAKTIME';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( series );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a peaktime table 

=cut

subtype 'PeaktimeEdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeaktimeUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeaktimePeaktype', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'PeaktimeTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeaktimeSdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeaktimeVarfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PeaktimeVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeaktimeTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeaktimeDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeaktimeRtime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeaktimeQmin', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'PeaktimeStime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeaktimeStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'PeaktimeTmin', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeaktimeDbver14', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'PeaktimeDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeaktimeEtime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeaktimeUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeaktimeRdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'peaktime_edate'  => ( is => 'rw', isa => 'PeaktimeEdate' ); 
 has 'peaktime_usermod'  => ( is => 'rw', isa => 'PeaktimeUsermod' ); 
 has 'peaktime_peaktype'  => ( is => 'rw', isa => 'PeaktimePeaktype' ); 
 has 'peaktime_timecreate'  => ( is => 'rw', isa => 'PeaktimeTimecreate' ); 
 has 'peaktime_sdate'  => ( is => 'rw', isa => 'PeaktimeSdate' ); 
 has 'peaktime_varfrom'  => ( is => 'rw', isa => 'PeaktimeVarfrom' ); 
 has 'peaktime_varto'  => ( is => 'rw', isa => 'PeaktimeVarto' ); 
 has 'peaktime_timemod'  => ( is => 'rw', isa => 'PeaktimeTimemod' ); 
 has 'peaktime_datemod'  => ( is => 'rw', isa => 'PeaktimeDatemod' ); 
 has 'peaktime_rtime'  => ( is => 'rw', isa => 'PeaktimeRtime' ); 
 has 'peaktime_qmin'  => ( is => 'rw', isa => 'PeaktimeQmin' ); 
 has 'peaktime_stime'  => ( is => 'rw', isa => 'PeaktimeStime' ); 
 has 'peaktime_station'  => ( is => 'rw', isa => 'PeaktimeStation' ); 
 has 'peaktime_tmin'  => ( is => 'rw', isa => 'PeaktimeTmin' ); 
 has 'peaktime_dbver14'  => ( is => 'rw', isa => 'PeaktimeDbver14' ); 
 has 'peaktime_datecreate'  => ( is => 'rw', isa => 'PeaktimeDatecreate' ); 
 has 'peaktime_etime'  => ( is => 'rw', isa => 'PeaktimeEtime' ); 
 has 'peaktime_usercreate'  => ( is => 'rw', isa => 'PeaktimeUsercreate' ); 
 has 'peaktime_rdate'  => ( is => 'rw', isa => 'PeaktimeRdate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables peaktime is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables peaktime is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS PEAKTIME ( Station TEXT,  Varfrom NUMERIC,  Varto NUMERIC,  Peaktype TEXT,  Qmin NUMERIC,  Tmin NUMERIC,  Sdate TEXT,  Stime NUMERIC,  Edate TEXT,  Etime NUMERIC,  Rdate TEXT,  Rtime NUMERIC,  Dbver14 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Varfrom, Varto, Peaktype))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO PEAKTIME VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Peaktime::Validation;
  use Moose;
  extends 'Peaktime';

 has '+peaktime_peaktype' => ( required => 1,  ); 
 has '+peaktime_varfrom' => ( required => 1,  ); 
 has '+peaktime_varto' => ( required => 1,  ); 
 has '+peaktime_station' => ( required => 1,  ); 

  
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

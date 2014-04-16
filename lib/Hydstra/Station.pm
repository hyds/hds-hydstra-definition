
{
package Hydstra::Station;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'STATION';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( sewrsite );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a station table 

=cut

subtype 'StationCtf', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'StationTelemetry', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'StationUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'StationTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'StationDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationMaxgaug', as 'Num', where { length($_) <= 12 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [12] and decimals [3].~"  };
subtype 'StationOrder', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'StationGaugfacil', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'StationDownst', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'StationEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationQmin', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'StationCatcharea', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [5].~"  };
subtype 'StationControl', as 'Str', where { length($_) <= 40 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [40] char, not [$length] characters.~"  };
subtype 'StationContcode', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'StationStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'StationTmin', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'StationDbver21', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'StationMaxgdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationPhone', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'StationStreamdist', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'StationCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationGauge', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'StationUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'StationSpillway', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'StationDatum', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'StationHut', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'StationBedslope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };

 has 'station_ctf'  => ( is => 'rw', isa => 'StationCtf' ); 
 has 'station_telemetry'  => ( is => 'rw', isa => 'StationTelemetry' ); 
 has 'station_usermod'  => ( is => 'rw', isa => 'StationUsermod' ); 
 has 'station_timecreate'  => ( is => 'rw', isa => 'StationTimecreate' ); 
 has 'station_timemod'  => ( is => 'rw', isa => 'StationTimemod' ); 
 has 'station_datemod'  => ( is => 'rw', isa => 'StationDatemod' ); 
 has 'station_maxgaug'  => ( is => 'rw', isa => 'StationMaxgaug' ); 
 has 'station_order'  => ( is => 'rw', isa => 'StationOrder' ); 
 has 'station_gaugfacil'  => ( is => 'rw', isa => 'StationGaugfacil' ); 
 has 'station_downst'  => ( is => 'rw', isa => 'StationDownst' ); 
 has 'station_enteredby'  => ( is => 'rw', isa => 'StationEnteredby' ); 
 has 'station_qmin'  => ( is => 'rw', isa => 'StationQmin' ); 
 has 'station_catcharea'  => ( is => 'rw', isa => 'StationCatcharea' ); 
 has 'station_control'  => ( is => 'rw', isa => 'StationControl' ); 
 has 'station_contcode'  => ( is => 'rw', isa => 'StationContcode' ); 
 has 'station_station'  => ( is => 'rw', isa => 'StationStation' ); 
 has 'station_tmin'  => ( is => 'rw', isa => 'StationTmin' ); 
 has 'station_dbver21'  => ( is => 'rw', isa => 'StationDbver21' ); 
 has 'station_maxgdate'  => ( is => 'rw', isa => 'StationMaxgdate' ); 
 has 'station_datecreate'  => ( is => 'rw', isa => 'StationDatecreate' ); 
 has 'station_phone'  => ( is => 'rw', isa => 'StationPhone' ); 
 has 'station_streamdist'  => ( is => 'rw', isa => 'StationStreamdist' ); 
 has 'station_checkedby'  => ( is => 'rw', isa => 'StationCheckedby' ); 
 has 'station_gauge'  => ( is => 'rw', isa => 'StationGauge' ); 
 has 'station_usercreate'  => ( is => 'rw', isa => 'StationUsercreate' ); 
 has 'station_spillway'  => ( is => 'rw', isa => 'StationSpillway' ); 
 has 'station_datum'  => ( is => 'rw', isa => 'StationDatum' ); 
 has 'station_hut'  => ( is => 'rw', isa => 'StationHut' ); 
 has 'station_bedslope'  => ( is => 'rw', isa => 'StationBedslope' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables station is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables station is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS STATION ( Station TEXT,  Gauge NUMERIC,  Datum TEXT,  Control TEXT,  Contcode TEXT,  Ctf NUMERIC,  Downst NUMERIC,  Gaugfacil TEXT,  Hut NUMERIC,  Telemetry NUMERIC,  Streamdist NUMERIC,  Phone TEXT,  Spillway NUMERIC,  Qmin NUMERIC,  Tmin NUMERIC,  Maxgaug NUMERIC,  Maxgdate TEXT,  Catcharea NUMERIC,  Enteredby TEXT,  Checkedby TEXT,  Bedslope NUMERIC,  Order NUMERIC,  Dbver21 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO STATION VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Station::Validation;
  use Moose;
  extends 'Station';

 has '+station_station' => ( required => 1,  ); 

  
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

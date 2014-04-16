
{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Startsgh NUMERIC,  Usermod TEXT,  Maxvel NUMERIC,  Dbver29 NUMERIC,  Ph NUMERIC,  Deviation NUMERIC,  M_gh NUMERIC,  Meter_no TEXT,  Timemod NUMERIC,  Datemod TEXT,  Maxdepth NUMERIC,  End_time NUMERIC,  Flow NUMERIC,  Sample NUMERIC,  Enteredby TEXT,  Wettedper NUMERIC,  Cond NUMERIC,  Start_gh NUMERIC,  Start_time NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Temp NUMERIC,  Slope NUMERIC,  Width NUMERIC,  Ctf NUMERIC,  Sediment NUMERIC,  Area NUMERIC,  Timecreate NUMERIC,  Varfrom NUMERIC,  Varto NUMERIC,  Method_8 NUMERIC,  Velocity NUMERIC,  Meas_date TEXT,  Mannings NUMERIC,  Spare2 TEXT,  End_gh NUMERIC,  Method TEXT,  Method_2 NUMERIC,  Sections NUMERIC,  Spare1 TEXT,  Quality NUMERIC,  Datecreate TEXT,  Party TEXT,  Stn TEXT,  Checkedby TEXT,  Rawdata TEXT,  Gshift NUMERIC,  Gauge_no NUMERIC,  Usercreate TEXT,  Wmgh NUMERIC,  Method_6 NUMERIC,  Endsgh NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 
Field [startsgh]false
Field [usermod]false
Field [maxvel]false
Field [dbver29]false
Field [ph]false
Field [deviation]false
Field [m_gh]false
Field [meter_no]false
Field [timemod]false
Field [datemod]false
Field [maxdepth]false
Field [end_time]false
Field [flow]false
Field [sample]false
Field [enteredby]false
Field [wettedper]false
Field [cond]false
Field [start_gh]false
Field [start_time]true
Field [commnt]false
Field [rawtype]false
Field [temp]false
Field [slope]false
Field [width]false
Field [ctf]false
Field [sediment]false
Field [area]false
Field [timecreate]false
Field [varfrom]true
Field [varto]true
Field [method_8]false
Field [velocity]false
Field [meas_date]true
Field [mannings]false
Field [spare2]false
Field [end_gh]false
Field [method]false
Field [method_2]false
Field [sections]false
Field [spare1]false
Field [quality]false
Field [datecreate]false
Field [party]false
Field [stn]true
Field [checkedby]false
Field [rawdata]false
Field [gshift]false
Field [gauge_no]false
Field [usercreate]false
Field [wmgh]false
Field [method_6]false
Field [endsgh]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Startsgh NUMERIC,  Usermod TEXT,  Maxvel NUMERIC,  Dbver29 NUMERIC,  Ph NUMERIC,  Deviation NUMERIC,  M_gh NUMERIC,  Meter_no TEXT,  Timemod NUMERIC,  Datemod TEXT,  Maxdepth NUMERIC,  End_time NUMERIC,  Flow NUMERIC,  Sample NUMERIC,  Enteredby TEXT,  Wettedper NUMERIC,  Cond NUMERIC,  Start_gh NUMERIC,  Start_time NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Temp NUMERIC,  Slope NUMERIC,  Width NUMERIC,  Ctf NUMERIC,  Sediment NUMERIC,  Area NUMERIC,  Timecreate NUMERIC,  Varfrom NUMERIC,  Varto NUMERIC,  Method_8 NUMERIC,  Velocity NUMERIC,  Meas_date TEXT,  Mannings NUMERIC,  Spare2 TEXT,  End_gh NUMERIC,  Method TEXT,  Method_2 NUMERIC,  Sections NUMERIC,  Spare1 TEXT,  Quality NUMERIC,  Datecreate TEXT,  Party TEXT,  Stn TEXT,  Checkedby TEXT,  Rawdata TEXT,  Gshift NUMERIC,  Gauge_no NUMERIC,  Usercreate TEXT,  Wmgh NUMERIC,  Method_6 NUMERIC,  Endsgh NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 
Field [startsgh] key value [false]
Field [usermod] key value [false]
Field [maxvel] key value [false]
Field [dbver29] key value [false]
Field [ph] key value [false]
Field [deviation] key value [false]
Field [m_gh] key value [false]
Field [meter_no] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [maxdepth] key value [false]
Field [end_time] key value [false]
Field [flow] key value [false]
Field [sample] key value [false]
Field [enteredby] key value [false]
Field [wettedper] key value [false]
Field [cond] key value [false]
Field [start_gh] key value [false]
Field [start_time] key value [true]
Field [commnt] key value [false]
Field [rawtype] key value [false]
Field [temp] key value [false]
Field [slope] key value [false]
Field [width] key value [false]
Field [ctf] key value [false]
Field [sediment] key value [false]
Field [area] key value [false]
Field [timecreate] key value [false]
Field [varfrom] key value [true]
Field [varto] key value [true]
Field [method_8] key value [false]
Field [velocity] key value [false]
Field [meas_date] key value [true]
Field [mannings] key value [false]
Field [spare2] key value [false]
Field [end_gh] key value [false]
Field [method] key value [false]
Field [method_2] key value [false]
Field [sections] key value [false]
Field [spare1] key value [false]
Field [quality] key value [false]
Field [datecreate] key value [false]
Field [party] key value [false]
Field [stn] key value [true]
Field [checkedby] key value [false]
Field [rawdata] key value [false]
Field [gshift] key value [false]
Field [gauge_no] key value [false]
Field [usercreate] key value [false]
Field [wmgh] key value [false]
Field [method_6] key value [false]
Field [endsgh] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Startsgh NUMERIC,  Usermod TEXT,  Maxvel NUMERIC,  Dbver29 NUMERIC,  Ph NUMERIC,  Deviation NUMERIC,  M_gh NUMERIC,  Meter_no TEXT,  Timemod NUMERIC,  Datemod TEXT,  Maxdepth NUMERIC,  End_time NUMERIC,  Flow NUMERIC,  Sample NUMERIC,  Enteredby TEXT,  Wettedper NUMERIC,  Cond NUMERIC,  Start_gh NUMERIC,  Start_time NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Temp NUMERIC,  Slope NUMERIC,  Width NUMERIC,  Ctf NUMERIC,  Sediment NUMERIC,  Area NUMERIC,  Timecreate NUMERIC,  Varfrom NUMERIC,  Varto NUMERIC,  Method_8 NUMERIC,  Velocity NUMERIC,  Meas_date TEXT,  Mannings NUMERIC,  Spare2 TEXT,  End_gh NUMERIC,  Method TEXT,  Method_2 NUMERIC,  Sections NUMERIC,  Spare1 TEXT,  Quality NUMERIC,  Datecreate TEXT,  Party TEXT,  Stn TEXT,  Checkedby TEXT,  Rawdata TEXT,  Gshift NUMERIC,  Gauge_no NUMERIC,  Usercreate TEXT,  Wmgh NUMERIC,  Method_6 NUMERIC,  Endsgh NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Startsgh NUMERIC,  Usermod TEXT,  Maxvel NUMERIC,  Dbver29 NUMERIC,  Ph NUMERIC,  Deviation NUMERIC,  M_gh NUMERIC,  Meter_no TEXT,  Timemod NUMERIC,  Datemod TEXT,  Maxdepth NUMERIC,  End_time NUMERIC,  Flow NUMERIC,  Sample NUMERIC,  Enteredby TEXT,  Wettedper NUMERIC,  Cond NUMERIC,  Start_gh NUMERIC,  Start_time NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Temp NUMERIC,  Slope NUMERIC,  Width NUMERIC,  Ctf NUMERIC,  Sediment NUMERIC,  Area NUMERIC,  Timecreate NUMERIC,  Varfrom NUMERIC,  Varto NUMERIC,  Method_8 NUMERIC,  Velocity NUMERIC,  Meas_date TEXT,  Mannings NUMERIC,  Spare2 TEXT,  End_gh NUMERIC,  Method TEXT,  Method_2 NUMERIC,  Sections NUMERIC,  Spare1 TEXT,  Quality NUMERIC,  Datecreate TEXT,  Party TEXT,  Stn TEXT,  Checkedby TEXT,  Rawdata TEXT,  Gshift NUMERIC,  Gauge_no NUMERIC,  Usercreate TEXT,  Wmgh NUMERIC,  Method_6 NUMERIC,  Endsgh NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Startsgh NUMERIC,  Usermod TEXT,  Maxvel NUMERIC,  Dbver29 NUMERIC,  Ph NUMERIC,  Deviation NUMERIC,  M_gh NUMERIC,  Meter_no TEXT,  Timemod NUMERIC,  Datemod TEXT,  Maxdepth NUMERIC,  End_time NUMERIC,  Flow NUMERIC,  Sample NUMERIC,  Enteredby TEXT,  Wettedper NUMERIC,  Cond NUMERIC,  Start_gh NUMERIC,  Start_time NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Temp NUMERIC,  Slope NUMERIC,  Width NUMERIC,  Ctf NUMERIC,  Sediment NUMERIC,  Area NUMERIC,  Timecreate NUMERIC,  Varfrom NUMERIC,  Varto NUMERIC,  Method_8 NUMERIC,  Velocity NUMERIC,  Meas_date TEXT,  Mannings NUMERIC,  Spare2 TEXT,  End_gh NUMERIC,  Method TEXT,  Method_2 NUMERIC,  Sections NUMERIC,  Spare1 TEXT,  Quality NUMERIC,  Datecreate TEXT,  Party TEXT,  Stn TEXT,  Checkedby TEXT,  Rawdata TEXT,  Gshift NUMERIC,  Gauge_no NUMERIC,  Usercreate TEXT,  Wmgh NUMERIC,  Method_6 NUMERIC,  Endsgh NUMERIC, PRIMARY KEY (Start_time, Varfrom, Varto, Meas_date, Stn))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Placeholder ,  Stn TEXT,  Varfrom NUMERIC,  Varto NUMERIC,  Meas_date TEXT,  Start_time NUMERIC,  End_time NUMERIC,  Gauge_no NUMERIC,  Start_gh NUMERIC,  End_gh NUMERIC,  M_gh NUMERIC,  Flow NUMERIC,  Deviation NUMERIC,  Quality NUMERIC,  Method TEXT,  Meter_no TEXT,  Wmgh NUMERIC,  Party TEXT,  Area NUMERIC,  Velocity NUMERIC,  Maxdepth NUMERIC,  Maxvel NUMERIC,  Slope NUMERIC,  Mannings NUMERIC,  Wettedper NUMERIC,  Ctf NUMERIC,  Temp NUMERIC,  Ph NUMERIC,  Cond NUMERIC,  Sediment NUMERIC,  Sample NUMERIC,  Width NUMERIC,  Sections NUMERIC,  Method_2 NUMERIC,  Method_6 NUMERIC,  Method_8 NUMERIC,  Gshift NUMERIC,  Startsgh NUMERIC,  Endsgh NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Rawdata TEXT,  Enteredby TEXT,  Checkedby TEXT,  Spare1 TEXT,  Spare2 TEXT,  Dbver29 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Stn, Varfrom, Varto, Meas_date, Start_time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

{
package Hydstra::Gaugings;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGINGS';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( gaugmeas );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugings table 

=cut

subtype 'GaugingsStartsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxvel', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'GaugingsDeviation', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsM_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeter_no', as 'Str', where { length($_) <= 9 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [9] char, not [$length] characters.~"  };
subtype 'GaugingsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMaxdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'GaugingsEnd_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsFlow', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [6].~"  };
subtype 'GaugingsSample', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWettedper', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsCond', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GaugingsStart_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugingsCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsRawtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GaugingsTemp', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'GaugingsSlope', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [5].~"  };
subtype 'GaugingsWidth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GaugingsCtf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GaugingsSediment', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,7})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [3].~"  };
subtype 'GaugingsArea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [4].~"  };
subtype 'GaugingsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsMethod_8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsVelocity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GaugingsSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsEnd_gh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GaugingsMethod', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'GaugingsMethod_2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsSections', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugingsSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugingsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsParty', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GaugingsStn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugingsCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsRawdata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugingsGshift', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GaugingsGauge_no', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'GaugingsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugingsWmgh', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsMethod_6', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GaugingsEndsgh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };

 has 'gaugings_startsgh'  => ( is => 'rw', isa => 'GaugingsStartsgh' ); 
 has 'gaugings_usermod'  => ( is => 'rw', isa => 'GaugingsUsermod' ); 
 has 'gaugings_maxvel'  => ( is => 'rw', isa => 'GaugingsMaxvel' ); 
 has 'gaugings_dbver29'  => ( is => 'rw', isa => 'GaugingsDbver29' ); 
 has 'gaugings_ph'  => ( is => 'rw', isa => 'GaugingsPh' ); 
 has 'gaugings_deviation'  => ( is => 'rw', isa => 'GaugingsDeviation' ); 
 has 'gaugings_m_gh'  => ( is => 'rw', isa => 'GaugingsM_gh' ); 
 has 'gaugings_meter_no'  => ( is => 'rw', isa => 'GaugingsMeter_no' ); 
 has 'gaugings_timemod'  => ( is => 'rw', isa => 'GaugingsTimemod' ); 
 has 'gaugings_datemod'  => ( is => 'rw', isa => 'GaugingsDatemod' ); 
 has 'gaugings_maxdepth'  => ( is => 'rw', isa => 'GaugingsMaxdepth' ); 
 has 'gaugings_end_time'  => ( is => 'rw', isa => 'GaugingsEnd_time' ); 
 has 'gaugings_flow'  => ( is => 'rw', isa => 'GaugingsFlow' ); 
 has 'gaugings_sample'  => ( is => 'rw', isa => 'GaugingsSample' ); 
 has 'gaugings_enteredby'  => ( is => 'rw', isa => 'GaugingsEnteredby' ); 
 has 'gaugings_wettedper'  => ( is => 'rw', isa => 'GaugingsWettedper' ); 
 has 'gaugings_cond'  => ( is => 'rw', isa => 'GaugingsCond' ); 
 has 'gaugings_start_gh'  => ( is => 'rw', isa => 'GaugingsStart_gh' ); 
 has 'gaugings_start_time'  => ( is => 'rw', isa => 'GaugingsStart_time' ); 
 has 'gaugings_commnt'  => ( is => 'rw', isa => 'GaugingsCommnt' ); 
 has 'gaugings_rawtype'  => ( is => 'rw', isa => 'GaugingsRawtype' ); 
 has 'gaugings_temp'  => ( is => 'rw', isa => 'GaugingsTemp' ); 
 has 'gaugings_slope'  => ( is => 'rw', isa => 'GaugingsSlope' ); 
 has 'gaugings_width'  => ( is => 'rw', isa => 'GaugingsWidth' ); 
 has 'gaugings_ctf'  => ( is => 'rw', isa => 'GaugingsCtf' ); 
 has 'gaugings_sediment'  => ( is => 'rw', isa => 'GaugingsSediment' ); 
 has 'gaugings_area'  => ( is => 'rw', isa => 'GaugingsArea' ); 
 has 'gaugings_timecreate'  => ( is => 'rw', isa => 'GaugingsTimecreate' ); 
 has 'gaugings_varfrom'  => ( is => 'rw', isa => 'GaugingsVarfrom' ); 
 has 'gaugings_varto'  => ( is => 'rw', isa => 'GaugingsVarto' ); 
 has 'gaugings_method_8'  => ( is => 'rw', isa => 'GaugingsMethod_8' ); 
 has 'gaugings_velocity'  => ( is => 'rw', isa => 'GaugingsVelocity' ); 
 has 'gaugings_meas_date'  => ( is => 'rw', isa => 'GaugingsMeas_date' ); 
 has 'gaugings_mannings'  => ( is => 'rw', isa => 'GaugingsMannings' ); 
 has 'gaugings_spare2'  => ( is => 'rw', isa => 'GaugingsSpare2' ); 
 has 'gaugings_end_gh'  => ( is => 'rw', isa => 'GaugingsEnd_gh' ); 
 has 'gaugings_method'  => ( is => 'rw', isa => 'GaugingsMethod' ); 
 has 'gaugings_method_2'  => ( is => 'rw', isa => 'GaugingsMethod_2' ); 
 has 'gaugings_sections'  => ( is => 'rw', isa => 'GaugingsSections' ); 
 has 'gaugings_spare1'  => ( is => 'rw', isa => 'GaugingsSpare1' ); 
 has 'gaugings_quality'  => ( is => 'rw', isa => 'GaugingsQuality' ); 
 has 'gaugings_datecreate'  => ( is => 'rw', isa => 'GaugingsDatecreate' ); 
 has 'gaugings_party'  => ( is => 'rw', isa => 'GaugingsParty' ); 
 has 'gaugings_stn'  => ( is => 'rw', isa => 'GaugingsStn' ); 
 has 'gaugings_checkedby'  => ( is => 'rw', isa => 'GaugingsCheckedby' ); 
 has 'gaugings_rawdata'  => ( is => 'rw', isa => 'GaugingsRawdata' ); 
 has 'gaugings_gshift'  => ( is => 'rw', isa => 'GaugingsGshift' ); 
 has 'gaugings_gauge_no'  => ( is => 'rw', isa => 'GaugingsGauge_no' ); 
 has 'gaugings_usercreate'  => ( is => 'rw', isa => 'GaugingsUsercreate' ); 
 has 'gaugings_wmgh'  => ( is => 'rw', isa => 'GaugingsWmgh' ); 
 has 'gaugings_method_6'  => ( is => 'rw', isa => 'GaugingsMethod_6' ); 
 has 'gaugings_endsgh'  => ( is => 'rw', isa => 'GaugingsEndsgh' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugings is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gaugings is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGINGS ( Stn TEXT,  Varfrom NUMERIC,  Varto NUMERIC,  Meas_date TEXT,  Start_time NUMERIC,  End_time NUMERIC,  Gauge_no NUMERIC,  Start_gh NUMERIC,  End_gh NUMERIC,  M_gh NUMERIC,  Flow NUMERIC,  Deviation NUMERIC,  Quality NUMERIC,  Method TEXT,  Meter_no TEXT,  Wmgh NUMERIC,  Party TEXT,  Area NUMERIC,  Velocity NUMERIC,  Maxdepth NUMERIC,  Maxvel NUMERIC,  Slope NUMERIC,  Mannings NUMERIC,  Wettedper NUMERIC,  Ctf NUMERIC,  Temp NUMERIC,  Ph NUMERIC,  Cond NUMERIC,  Sediment NUMERIC,  Sample NUMERIC,  Width NUMERIC,  Sections NUMERIC,  Method_2 NUMERIC,  Method_6 NUMERIC,  Method_8 NUMERIC,  Gshift NUMERIC,  Startsgh NUMERIC,  Endsgh NUMERIC,  Commnt TEXT,  Rawtype TEXT,  Rawdata TEXT,  Enteredby TEXT,  Checkedby TEXT,  Spare1 TEXT,  Spare2 TEXT,  Dbver29 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Stn, Varfrom, Varto, Meas_date, Start_time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGINGS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gaugings::Validation;
  use Moose;
  extends 'Gaugings';

 has '+gaugings_start_time' => ( required => 1,  ); 
 has '+gaugings_varfrom' => ( required => 1,  ); 
 has '+gaugings_varto' => ( required => 1,  ); 
 has '+gaugings_meas_date' => ( required => 1,  ); 
 has '+gaugings_stn' => ( required => 1,  ); 

  
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

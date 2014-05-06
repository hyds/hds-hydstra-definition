
{
package Hydstra::Pumptest;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'PUMPTEST';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( pumpread );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a pumptest table 

=cut

subtype 'PumptestUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'PumptestDbver29', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'PumptestComments', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'PumptestYield', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [2].~"  };
subtype 'PumptestTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PumptestDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PumptestTransmiss', as 'Num', where { length($_) <= 12 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [12] and decimals [6].~"  };
subtype 'PumptestRecbywho', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'PumptestStarttime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PumptestEc', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'PumptestRecdur', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PumptestTesttype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestDepthbefor', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PumptestTestdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PumptestDuration', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PumptestBoredepth', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'PumptestSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'PumptestTestedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestRawdatasrc', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'PumptestRecpumpset', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'PumptestFlmeasequp', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestEquipment', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestDepthafter', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PumptestWlmeasequp', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestTimeoftest', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestSwlvalue', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'PumptestDdlvalue', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'PumptestPumpdepth', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'PumptestTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PumptestCoef', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [6].~"  };
subtype 'PumptestMpheight', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'PumptestMpagl', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [2].~"  };
subtype 'PumptestSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'PumptestSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'PumptestRecwl', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PumptestVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'PumptestMeassource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'PumptestStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'PumptestAnalysisby', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'PumptestDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PumptestHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'PumptestUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PumptestRecmaxrate', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'pumptest_usermod'  => ( is => 'rw', isa => 'PumptestUsermod' ); 
 has 'pumptest_pipe'  => ( is => 'rw', isa => 'PumptestPipe' ); 
 has 'pumptest_dbver29'  => ( is => 'rw', isa => 'PumptestDbver29' ); 
 has 'pumptest_comments'  => ( is => 'rw', isa => 'PumptestComments' ); 
 has 'pumptest_yield'  => ( is => 'rw', isa => 'PumptestYield' ); 
 has 'pumptest_timemod'  => ( is => 'rw', isa => 'PumptestTimemod' ); 
 has 'pumptest_datemod'  => ( is => 'rw', isa => 'PumptestDatemod' ); 
 has 'pumptest_transmiss'  => ( is => 'rw', isa => 'PumptestTransmiss' ); 
 has 'pumptest_recbywho'  => ( is => 'rw', isa => 'PumptestRecbywho' ); 
 has 'pumptest_starttime'  => ( is => 'rw', isa => 'PumptestStarttime' ); 
 has 'pumptest_ec'  => ( is => 'rw', isa => 'PumptestEc' ); 
 has 'pumptest_recdur'  => ( is => 'rw', isa => 'PumptestRecdur' ); 
 has 'pumptest_testtype'  => ( is => 'rw', isa => 'PumptestTesttype' ); 
 has 'pumptest_depthbefor'  => ( is => 'rw', isa => 'PumptestDepthbefor' ); 
 has 'pumptest_testdate'  => ( is => 'rw', isa => 'PumptestTestdate' ); 
 has 'pumptest_duration'  => ( is => 'rw', isa => 'PumptestDuration' ); 
 has 'pumptest_boredepth'  => ( is => 'rw', isa => 'PumptestBoredepth' ); 
 has 'pumptest_spare3'  => ( is => 'rw', isa => 'PumptestSpare3' ); 
 has 'pumptest_testedby'  => ( is => 'rw', isa => 'PumptestTestedby' ); 
 has 'pumptest_rawdatasrc'  => ( is => 'rw', isa => 'PumptestRawdatasrc' ); 
 has 'pumptest_recpumpset'  => ( is => 'rw', isa => 'PumptestRecpumpset' ); 
 has 'pumptest_flmeasequp'  => ( is => 'rw', isa => 'PumptestFlmeasequp' ); 
 has 'pumptest_equipment'  => ( is => 'rw', isa => 'PumptestEquipment' ); 
 has 'pumptest_depthafter'  => ( is => 'rw', isa => 'PumptestDepthafter' ); 
 has 'pumptest_wlmeasequp'  => ( is => 'rw', isa => 'PumptestWlmeasequp' ); 
 has 'pumptest_timeoftest'  => ( is => 'rw', isa => 'PumptestTimeoftest' ); 
 has 'pumptest_swlvalue'  => ( is => 'rw', isa => 'PumptestSwlvalue' ); 
 has 'pumptest_ddlvalue'  => ( is => 'rw', isa => 'PumptestDdlvalue' ); 
 has 'pumptest_pumpdepth'  => ( is => 'rw', isa => 'PumptestPumpdepth' ); 
 has 'pumptest_timecreate'  => ( is => 'rw', isa => 'PumptestTimecreate' ); 
 has 'pumptest_coef'  => ( is => 'rw', isa => 'PumptestCoef' ); 
 has 'pumptest_mpheight'  => ( is => 'rw', isa => 'PumptestMpheight' ); 
 has 'pumptest_mpagl'  => ( is => 'rw', isa => 'PumptestMpagl' ); 
 has 'pumptest_spare2'  => ( is => 'rw', isa => 'PumptestSpare2' ); 
 has 'pumptest_sampflag'  => ( is => 'rw', isa => 'PumptestSampflag' ); 
 has 'pumptest_recwl'  => ( is => 'rw', isa => 'PumptestRecwl' ); 
 has 'pumptest_verified'  => ( is => 'rw', isa => 'PumptestVerified' ); 
 has 'pumptest_meassource'  => ( is => 'rw', isa => 'PumptestMeassource' ); 
 has 'pumptest_spare1'  => ( is => 'rw', isa => 'PumptestSpare1' ); 
 has 'pumptest_station'  => ( is => 'rw', isa => 'PumptestStation' ); 
 has 'pumptest_analysisby'  => ( is => 'rw', isa => 'PumptestAnalysisby' ); 
 has 'pumptest_datecreate'  => ( is => 'rw', isa => 'PumptestDatecreate' ); 
 has 'pumptest_hole'  => ( is => 'rw', isa => 'PumptestHole' ); 
 has 'pumptest_usercreate'  => ( is => 'rw', isa => 'PumptestUsercreate' ); 
 has 'pumptest_recmaxrate'  => ( is => 'rw', isa => 'PumptestRecmaxrate' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables pumptest is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole pipe testdate starttime );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables pumptest is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables pumptest is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole pipe testdate starttime testtype duration equipment mpagl mpheight meassource swlvalue ddlvalue yield recmaxrate pumpdepth recpumpset recbywho coef transmiss ec depthbefor depthafter testedby analysisby wlmeasequp flmeasequp recwl recdur timeoftest verified boredepth sampflag rawdatasrc comments spare1 spare2 spare3 dbver29 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS PUMPTEST ( 'Station' TEXT,  'Hole' NUMERIC,  'Pipe' NUMERIC,  'Testdate' TEXT,  'Starttime' NUMERIC,  'Testtype' TEXT,  'Duration' NUMERIC,  'Equipment' TEXT,  'Mpagl' NUMERIC,  'Mpheight' NUMERIC,  'Meassource' TEXT,  'Swlvalue' NUMERIC,  'Ddlvalue' NUMERIC,  'Yield' NUMERIC,  'Recmaxrate' NUMERIC,  'Pumpdepth' NUMERIC,  'Recpumpset' NUMERIC,  'Recbywho' TEXT,  'Coef' NUMERIC,  'Transmiss' NUMERIC,  'Ec' NUMERIC,  'Depthbefor' NUMERIC,  'Depthafter' NUMERIC,  'Testedby' TEXT,  'Analysisby' TEXT,  'Wlmeasequp' TEXT,  'Flmeasequp' TEXT,  'Recwl' NUMERIC,  'Recdur' NUMERIC,  'Timeoftest' TEXT,  'Verified' NUMERIC,  'Boredepth' NUMERIC,  'Sampflag' NUMERIC,  'Rawdatasrc' TEXT,  'Comments' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver29' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Pipe, Testdate, Starttime))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO PUMPTEST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Pumptest::Validation;
  use Moose;
  extends 'Hydstra::Pumptest';

 has '+pumptest_pipe' => ( required => 1, default => 1, ); 
 has '+pumptest_starttime' => ( required => 1, default => 0, ); 
 has '+pumptest_testdate' => ( required => 1,  ); 
 has '+pumptest_station' => ( required => 1,  ); 
 has '+pumptest_hole' => ( required => 1, default => 1, ); 

  
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

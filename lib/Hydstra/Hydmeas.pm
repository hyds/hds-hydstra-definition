
{
package Hydstra::Hydmeas;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HYDMEAS';

use constant CHILD_OF => qw( gwpipe );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a hydmeas table 

=cut

subtype 'HydmeasSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'HydmeasTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'HydmeasStatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'HydmeasTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HydmeasMeascond3', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasFlag', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'HydmeasTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HydmeasDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasMeascond2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'HydmeasMeascond1', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'HydmeasLogger', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'HydmeasSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'HydmeasStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HydmeasValue', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'HydmeasDbver21', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'HydmeasDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydmeasSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'HydmeasMeasuredby', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'HydmeasHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'HydmeasComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HydmeasUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'hydmeas_source'  => ( is => 'rw', isa => 'HydmeasSource' ); 
 has 'hydmeas_usermod'  => ( is => 'rw', isa => 'HydmeasUsermod' ); 
 has 'hydmeas_variable'  => ( is => 'rw', isa => 'HydmeasVariable' ); 
 has 'hydmeas_time'  => ( is => 'rw', isa => 'HydmeasTime' ); 
 has 'hydmeas_status'  => ( is => 'rw', isa => 'HydmeasStatus' ); 
 has 'hydmeas_date'  => ( is => 'rw', isa => 'HydmeasDate' ); 
 has 'hydmeas_pipe'  => ( is => 'rw', isa => 'HydmeasPipe' ); 
 has 'hydmeas_timecreate'  => ( is => 'rw', isa => 'HydmeasTimecreate' ); 
 has 'hydmeas_meascond3'  => ( is => 'rw', isa => 'HydmeasMeascond3' ); 
 has 'hydmeas_flag'  => ( is => 'rw', isa => 'HydmeasFlag' ); 
 has 'hydmeas_timemod'  => ( is => 'rw', isa => 'HydmeasTimemod' ); 
 has 'hydmeas_datemod'  => ( is => 'rw', isa => 'HydmeasDatemod' ); 
 has 'hydmeas_meascond2'  => ( is => 'rw', isa => 'HydmeasMeascond2' ); 
 has 'hydmeas_spare2'  => ( is => 'rw', isa => 'HydmeasSpare2' ); 
 has 'hydmeas_meascond1'  => ( is => 'rw', isa => 'HydmeasMeascond1' ); 
 has 'hydmeas_quality'  => ( is => 'rw', isa => 'HydmeasQuality' ); 
 has 'hydmeas_logger'  => ( is => 'rw', isa => 'HydmeasLogger' ); 
 has 'hydmeas_spare1'  => ( is => 'rw', isa => 'HydmeasSpare1' ); 
 has 'hydmeas_station'  => ( is => 'rw', isa => 'HydmeasStation' ); 
 has 'hydmeas_value'  => ( is => 'rw', isa => 'HydmeasValue' ); 
 has 'hydmeas_dbver21'  => ( is => 'rw', isa => 'HydmeasDbver21' ); 
 has 'hydmeas_datecreate'  => ( is => 'rw', isa => 'HydmeasDatecreate' ); 
 has 'hydmeas_spare3'  => ( is => 'rw', isa => 'HydmeasSpare3' ); 
 has 'hydmeas_measuredby'  => ( is => 'rw', isa => 'HydmeasMeasuredby' ); 
 has 'hydmeas_hole'  => ( is => 'rw', isa => 'HydmeasHole' ); 
 has 'hydmeas_comment'  => ( is => 'rw', isa => 'HydmeasComment' ); 
 has 'hydmeas_usercreate'  => ( is => 'rw', isa => 'HydmeasUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables hydmeas is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables hydmeas is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HYDMEAS ( Station TEXT,  Hole NUMERIC,  Pipe NUMERIC,  Date TEXT,  Time NUMERIC,  Variable NUMERIC,  Value NUMERIC,  Quality NUMERIC,  Flag TEXT,  Status TEXT,  Source TEXT,  Measuredby TEXT,  Meascond1 TEXT,  Meascond2 TEXT,  Meascond3 TEXT,  Logger NUMERIC,  Comment TEXT,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver21 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time, Variable))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HYDMEAS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Hydmeas::Validation;
  use Moose;
  extends 'Hydstra::Hydmeas';

 has '+hydmeas_variable' => ( required => 1,  ); 
 has '+hydmeas_time' => ( required => 1, default => 1200, ); 
 has '+hydmeas_date' => ( required => 1, default => 18991231, ); 
 has '+hydmeas_pipe' => ( required => 1, default => 1, ); 
 has '+hydmeas_station' => ( required => 1,  ); 
 has '+hydmeas_hole' => ( required => 1, default => 1, ); 

  
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

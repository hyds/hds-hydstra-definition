
{
package Hydstra::Artflows;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTFLOWS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artflows table 

=cut

subtype 'ArtflowsWeirwidth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'ArtflowsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtflowsTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtflowsDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtflowsPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtflowsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtflowsDbver5', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtflowsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtflowsDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtflowsVelocity', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtflowsBackpress', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'ArtflowsSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtflowsFlowdepth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'ArtflowsFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtflowsSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtflowsStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtflowsMeasdevice', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtflowsDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtflowsSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtflowsHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtflowsTemp', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'ArtflowsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'artflows_weirwidth'  => ( is => 'rw', isa => 'ArtflowsWeirwidth' ); 
 has 'artflows_usermod'  => ( is => 'rw', isa => 'ArtflowsUsermod' ); 
 has 'artflows_time'  => ( is => 'rw', isa => 'ArtflowsTime' ); 
 has 'artflows_date'  => ( is => 'rw', isa => 'ArtflowsDate' ); 
 has 'artflows_pipe'  => ( is => 'rw', isa => 'ArtflowsPipe' ); 
 has 'artflows_timecreate'  => ( is => 'rw', isa => 'ArtflowsTimecreate' ); 
 has 'artflows_dbver5'  => ( is => 'rw', isa => 'ArtflowsDbver5' ); 
 has 'artflows_timemod'  => ( is => 'rw', isa => 'ArtflowsTimemod' ); 
 has 'artflows_datemod'  => ( is => 'rw', isa => 'ArtflowsDatemod' ); 
 has 'artflows_velocity'  => ( is => 'rw', isa => 'ArtflowsVelocity' ); 
 has 'artflows_backpress'  => ( is => 'rw', isa => 'ArtflowsBackpress' ); 
 has 'artflows_spare2'  => ( is => 'rw', isa => 'ArtflowsSpare2' ); 
 has 'artflows_flowdepth'  => ( is => 'rw', isa => 'ArtflowsFlowdepth' ); 
 has 'artflows_flow'  => ( is => 'rw', isa => 'ArtflowsFlow' ); 
 has 'artflows_spare1'  => ( is => 'rw', isa => 'ArtflowsSpare1' ); 
 has 'artflows_station'  => ( is => 'rw', isa => 'ArtflowsStation' ); 
 has 'artflows_measdevice'  => ( is => 'rw', isa => 'ArtflowsMeasdevice' ); 
 has 'artflows_datecreate'  => ( is => 'rw', isa => 'ArtflowsDatecreate' ); 
 has 'artflows_spare3'  => ( is => 'rw', isa => 'ArtflowsSpare3' ); 
 has 'artflows_hole'  => ( is => 'rw', isa => 'ArtflowsHole' ); 
 has 'artflows_temp'  => ( is => 'rw', isa => 'ArtflowsTemp' ); 
 has 'artflows_usercreate'  => ( is => 'rw', isa => 'ArtflowsUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables artflows is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole pipe date time );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables artflows is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artflows is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole pipe date time measdevice flowdepth temp velocity backpress flow weirwidth spare1 spare2 spare3 dbver5 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTFLOWS ( 'Station' TEXT,  'Hole' NUMERIC,  'Pipe' NUMERIC,  'Date' TEXT,  'Time' NUMERIC,  'Measdevice' TEXT,  'Flowdepth' NUMERIC,  'Temp' NUMERIC,  'Velocity' NUMERIC,  'Backpress' NUMERIC,  'Flow' NUMERIC,  'Weirwidth' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver5' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTFLOWS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artflows::Validation;
  use Moose;
  extends 'Hydstra::Artflows';

 has '+artflows_time' => ( required => 1, default => 1200, ); 
 has '+artflows_date' => ( required => 1, default => 18991231, ); 
 has '+artflows_pipe' => ( required => 1, default => 1, ); 
 has '+artflows_station' => ( required => 1,  ); 
 has '+artflows_hole' => ( required => 1, default => 1, ); 

  
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


{
package Hydstra::Artdist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTDIST';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artdist table 

=cut

subtype 'ArtdistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtdistWeirwidth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'ArtdistTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtdistDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'ArtdistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtdistPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtdistDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtdistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtdistDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'ArtdistVelocity', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtdistBackpress', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'ArtdistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtdistFlowdepth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'ArtdistFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtdistPointid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'ArtdistOnarrival', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtdistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtdistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtdistMeasdevice', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtdistDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'ArtdistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtdistHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtdistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtdistPointname', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };

 has 'artdist_usermod'  => ( is => 'rw', isa => 'ArtdistUsermod' ); 
 has 'artdist_weirwidth'  => ( is => 'rw', isa => 'ArtdistWeirwidth' ); 
 has 'artdist_time'  => ( is => 'rw', isa => 'ArtdistTime' ); 
 has 'artdist_date'  => ( is => 'rw', isa => 'ArtdistDate' ); 
 has 'artdist_timecreate'  => ( is => 'rw', isa => 'ArtdistTimecreate' ); 
 has 'artdist_pipe'  => ( is => 'rw', isa => 'ArtdistPipe' ); 
 has 'artdist_dbver8'  => ( is => 'rw', isa => 'ArtdistDbver8' ); 
 has 'artdist_timemod'  => ( is => 'rw', isa => 'ArtdistTimemod' ); 
 has 'artdist_datemod'  => ( is => 'rw', isa => 'ArtdistDatemod' ); 
 has 'artdist_velocity'  => ( is => 'rw', isa => 'ArtdistVelocity' ); 
 has 'artdist_backpress'  => ( is => 'rw', isa => 'ArtdistBackpress' ); 
 has 'artdist_spare2'  => ( is => 'rw', isa => 'ArtdistSpare2' ); 
 has 'artdist_flowdepth'  => ( is => 'rw', isa => 'ArtdistFlowdepth' ); 
 has 'artdist_flow'  => ( is => 'rw', isa => 'ArtdistFlow' ); 
 has 'artdist_pointid'  => ( is => 'rw', isa => 'ArtdistPointid' ); 
 has 'artdist_onarrival'  => ( is => 'rw', isa => 'ArtdistOnarrival' ); 
 has 'artdist_spare1'  => ( is => 'rw', isa => 'ArtdistSpare1' ); 
 has 'artdist_station'  => ( is => 'rw', isa => 'ArtdistStation' ); 
 has 'artdist_measdevice'  => ( is => 'rw', isa => 'ArtdistMeasdevice' ); 
 has 'artdist_datecreate'  => ( is => 'rw', isa => 'ArtdistDatecreate' ); 
 has 'artdist_spare3'  => ( is => 'rw', isa => 'ArtdistSpare3' ); 
 has 'artdist_hole'  => ( is => 'rw', isa => 'ArtdistHole' ); 
 has 'artdist_usercreate'  => ( is => 'rw', isa => 'ArtdistUsercreate' ); 
 has 'artdist_pointname'  => ( is => 'rw', isa => 'ArtdistPointname' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables artdist is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole pipe date time onarrival measdevice pointid );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables artdist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artdist is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole pipe date time onarrival measdevice pointid pointname flowdepth velocity backpress flow weirwidth spare1 spare2 spare3 dbver8 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTDIST ( 'Station' TEXT,  'Hole' NUMERIC,  'Pipe' NUMERIC,  'Date' TEXT,  'Time' NUMERIC,  'Onarrival' TEXT,  'Measdevice' TEXT,  'Pointid' NUMERIC,  'Pointname' TEXT,  'Flowdepth' NUMERIC,  'Velocity' NUMERIC,  'Backpress' NUMERIC,  'Flow' NUMERIC,  'Weirwidth' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver8' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time, Onarrival, Measdevice, Pointid))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO ARTDIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

=head2 id_date()
  
  Tell me whether the field is a date field

=cut

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|startdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|endtime|enddate|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Artdist::Validation;
  use Moose;
  extends 'Hydstra::Artdist';

 has '+artdist_time' => ( required => 1, default => 1200, ); 
 has '+artdist_date' => ( required => 1, default => 18991231, ); 
 has '+artdist_pipe' => ( required => 1, default => 1, ); 
 has '+artdist_pointid' => ( required => 1,  ); 
 has '+artdist_onarrival' => ( required => 1,  ); 
 has '+artdist_station' => ( required => 1,  ); 
 has '+artdist_measdevice' => ( required => 1,  ); 
 has '+artdist_hole' => ( required => 1, default => 1, ); 

  
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

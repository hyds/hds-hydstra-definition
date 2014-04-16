
{
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Source TEXT,  Usermod TEXT,  Date TEXT,  Timecreate NUMERIC,  Time NUMERIC,  Interpret TEXT,  Comments TEXT,  Timemod NUMERIC,  Datemod TEXT,  Group TEXT,  Depthfrom NUMERIC,  Spare2 TEXT,  Person TEXT,  Verified NUMERIC,  Endmarker NUMERIC,  Spare1 TEXT,  Geoprov TEXT,  Station TEXT,  Hgunumber NUMERIC,  Formation TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver26 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 
Field [source]false
Field [usermod]false
Field [date]false
Field [timecreate]false
Field [time]false
Field [interpret]true
Field [comments]false
Field [timemod]false
Field [datemod]false
Field [group]false
Field [depthfrom]true
Field [spare2]false
Field [person]false
Field [verified]false
Field [endmarker]false
Field [spare1]false
Field [geoprov]false
Field [station]true
Field [hgunumber]false
Field [formation]false
Field [depthto]false
Field [datecreate]false
Field [spare3]false
Field [hole]true
Field [usercreate]false
Field [dbver26]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Source TEXT,  Usermod TEXT,  Date TEXT,  Timecreate NUMERIC,  Time NUMERIC,  Interpret TEXT,  Comments TEXT,  Timemod NUMERIC,  Datemod TEXT,  Group TEXT,  Depthfrom NUMERIC,  Spare2 TEXT,  Person TEXT,  Verified NUMERIC,  Endmarker NUMERIC,  Spare1 TEXT,  Geoprov TEXT,  Station TEXT,  Hgunumber NUMERIC,  Formation TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver26 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 
Field [source] key value [false]
Field [usermod] key value [false]
Field [date] key value [false]
Field [timecreate] key value [false]
Field [time] key value [false]
Field [interpret] key value [true]
Field [comments] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [group] key value [false]
Field [depthfrom] key value [true]
Field [spare2] key value [false]
Field [person] key value [false]
Field [verified] key value [false]
Field [endmarker] key value [false]
Field [spare1] key value [false]
Field [geoprov] key value [false]
Field [station] key value [true]
Field [hgunumber] key value [false]
Field [formation] key value [false]
Field [depthto] key value [false]
Field [datecreate] key value [false]
Field [spare3] key value [false]
Field [hole] key value [true]
Field [usercreate] key value [false]
Field [dbver26] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Source TEXT,  Usermod TEXT,  Date TEXT,  Timecreate NUMERIC,  Time NUMERIC,  Interpret TEXT,  Comments TEXT,  Timemod NUMERIC,  Datemod TEXT,  Group TEXT,  Depthfrom NUMERIC,  Spare2 TEXT,  Person TEXT,  Verified NUMERIC,  Endmarker NUMERIC,  Spare1 TEXT,  Geoprov TEXT,  Station TEXT,  Hgunumber NUMERIC,  Formation TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver26 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Source TEXT,  Usermod TEXT,  Date TEXT,  Timecreate NUMERIC,  Time NUMERIC,  Interpret TEXT,  Comments TEXT,  Timemod NUMERIC,  Datemod TEXT,  Group TEXT,  Depthfrom NUMERIC,  Spare2 TEXT,  Person TEXT,  Verified NUMERIC,  Endmarker NUMERIC,  Spare1 TEXT,  Geoprov TEXT,  Station TEXT,  Hgunumber NUMERIC,  Formation TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver26 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Source TEXT,  Usermod TEXT,  Date TEXT,  Timecreate NUMERIC,  Time NUMERIC,  Interpret TEXT,  Comments TEXT,  Timemod NUMERIC,  Datemod TEXT,  Group TEXT,  Depthfrom NUMERIC,  Spare2 TEXT,  Person TEXT,  Verified NUMERIC,  Endmarker NUMERIC,  Spare1 TEXT,  Geoprov TEXT,  Station TEXT,  Hgunumber NUMERIC,  Formation TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver26 NUMERIC, PRIMARY KEY (Interpret, Depthfrom, Station, Hole))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Placeholder ,  Station TEXT,  Hole NUMERIC,  Interpret TEXT,  Depthfrom NUMERIC,  Depthto NUMERIC,  Date TEXT,  Time NUMERIC,  Person TEXT,  Source TEXT,  Hgunumber NUMERIC,  Geoprov TEXT,  Formation TEXT,  Group TEXT,  Endmarker NUMERIC,  Comments TEXT,  Verified NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver26 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Interpret, Depthfrom))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithstra;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHSTRA';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithstra table 

=cut

subtype 'LithstraSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithstraTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithstraDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraGroup', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithstraVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraEndmarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithstraSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraGeoprov', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithstraHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'LithstraFormation', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithstraDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithstraHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithstraUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithstraDbver26', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'lithstra_source'  => ( is => 'rw', isa => 'LithstraSource' ); 
 has 'lithstra_usermod'  => ( is => 'rw', isa => 'LithstraUsermod' ); 
 has 'lithstra_date'  => ( is => 'rw', isa => 'LithstraDate' ); 
 has 'lithstra_timecreate'  => ( is => 'rw', isa => 'LithstraTimecreate' ); 
 has 'lithstra_time'  => ( is => 'rw', isa => 'LithstraTime' ); 
 has 'lithstra_interpret'  => ( is => 'rw', isa => 'LithstraInterpret' ); 
 has 'lithstra_comments'  => ( is => 'rw', isa => 'LithstraComments' ); 
 has 'lithstra_timemod'  => ( is => 'rw', isa => 'LithstraTimemod' ); 
 has 'lithstra_datemod'  => ( is => 'rw', isa => 'LithstraDatemod' ); 
 has 'lithstra_group'  => ( is => 'rw', isa => 'LithstraGroup' ); 
 has 'lithstra_depthfrom'  => ( is => 'rw', isa => 'LithstraDepthfrom' ); 
 has 'lithstra_spare2'  => ( is => 'rw', isa => 'LithstraSpare2' ); 
 has 'lithstra_person'  => ( is => 'rw', isa => 'LithstraPerson' ); 
 has 'lithstra_verified'  => ( is => 'rw', isa => 'LithstraVerified' ); 
 has 'lithstra_endmarker'  => ( is => 'rw', isa => 'LithstraEndmarker' ); 
 has 'lithstra_spare1'  => ( is => 'rw', isa => 'LithstraSpare1' ); 
 has 'lithstra_geoprov'  => ( is => 'rw', isa => 'LithstraGeoprov' ); 
 has 'lithstra_station'  => ( is => 'rw', isa => 'LithstraStation' ); 
 has 'lithstra_hgunumber'  => ( is => 'rw', isa => 'LithstraHgunumber' ); 
 has 'lithstra_formation'  => ( is => 'rw', isa => 'LithstraFormation' ); 
 has 'lithstra_depthto'  => ( is => 'rw', isa => 'LithstraDepthto' ); 
 has 'lithstra_datecreate'  => ( is => 'rw', isa => 'LithstraDatecreate' ); 
 has 'lithstra_spare3'  => ( is => 'rw', isa => 'LithstraSpare3' ); 
 has 'lithstra_hole'  => ( is => 'rw', isa => 'LithstraHole' ); 
 has 'lithstra_usercreate'  => ( is => 'rw', isa => 'LithstraUsercreate' ); 
 has 'lithstra_dbver26'  => ( is => 'rw', isa => 'LithstraDbver26' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithstra is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithstra is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHSTRA ( Station TEXT,  Hole NUMERIC,  Interpret TEXT,  Depthfrom NUMERIC,  Depthto NUMERIC,  Date TEXT,  Time NUMERIC,  Person TEXT,  Source TEXT,  Hgunumber NUMERIC,  Geoprov TEXT,  Formation TEXT,  Group TEXT,  Endmarker NUMERIC,  Comments TEXT,  Verified NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver26 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Interpret, Depthfrom))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHSTRA VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithstra::Validation;
  use Moose;
  extends 'Lithstra';

 has '+lithstra_date' => (  default => 18991231, ); 
 has '+lithstra_time' => (  default => 1200, ); 
 has '+lithstra_interpret' => ( required => 1,  ); 
 has '+lithstra_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithstra_station' => ( required => 1,  ); 
 has '+lithstra_hole' => ( required => 1, default => 1, ); 

  
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

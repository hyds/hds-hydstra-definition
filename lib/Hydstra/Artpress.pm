
{
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Usermod TEXT,  Readinga NUMERIC,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Headwater NUMERIC,  Spare2 TEXT,  Flow NUMERIC,  Readingb NUMERIC,  Spare1 TEXT,  Valveleak NUMERIC,  Station TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver7 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 
Field [usermod]false
Field [readinga]false
Field [time]true
Field [date]true
Field [pipe]true
Field [timecreate]false
Field [timemod]false
Field [datemod]false
Field [headwater]false
Field [spare2]false
Field [flow]false
Field [readingb]false
Field [spare1]false
Field [valveleak]false
Field [station]true
Field [datecreate]false
Field [spare3]false
Field [hole]true
Field [usercreate]false
Field [dbver7]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Usermod TEXT,  Readinga NUMERIC,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Headwater NUMERIC,  Spare2 TEXT,  Flow NUMERIC,  Readingb NUMERIC,  Spare1 TEXT,  Valveleak NUMERIC,  Station TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver7 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 
Field [usermod] key value [false]
Field [readinga] key value [false]
Field [time] key value [true]
Field [date] key value [true]
Field [pipe] key value [true]
Field [timecreate] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [headwater] key value [false]
Field [spare2] key value [false]
Field [flow] key value [false]
Field [readingb] key value [false]
Field [spare1] key value [false]
Field [valveleak] key value [false]
Field [station] key value [true]
Field [datecreate] key value [false]
Field [spare3] key value [false]
Field [hole] key value [true]
Field [usercreate] key value [false]
Field [dbver7] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Usermod TEXT,  Readinga NUMERIC,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Headwater NUMERIC,  Spare2 TEXT,  Flow NUMERIC,  Readingb NUMERIC,  Spare1 TEXT,  Valveleak NUMERIC,  Station TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver7 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Usermod TEXT,  Readinga NUMERIC,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Headwater NUMERIC,  Spare2 TEXT,  Flow NUMERIC,  Readingb NUMERIC,  Spare1 TEXT,  Valveleak NUMERIC,  Station TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver7 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Usermod TEXT,  Readinga NUMERIC,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Headwater NUMERIC,  Spare2 TEXT,  Flow NUMERIC,  Readingb NUMERIC,  Spare1 TEXT,  Valveleak NUMERIC,  Station TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Usercreate TEXT,  Dbver7 NUMERIC, PRIMARY KEY (Time, Date, Pipe, Station, Hole))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Placeholder ,  Station TEXT,  Hole NUMERIC,  Pipe NUMERIC,  Date TEXT,  Time NUMERIC,  Headwater NUMERIC,  Readinga NUMERIC,  Readingb NUMERIC,  Flow NUMERIC,  Valveleak NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver7 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Artpress;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTPRESS';

use constant CHILD_OF => qw( artsumm );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artpress table 

=cut

subtype 'ArtpressUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressReadinga', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtpressDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressHeadwater', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'ArtpressSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressFlow', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressReadingb', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ArtpressSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressValveleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtpressStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtpressDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtpressHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtpressUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtpressDbver7', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'artpress_usermod'  => ( is => 'rw', isa => 'ArtpressUsermod' ); 
 has 'artpress_readinga'  => ( is => 'rw', isa => 'ArtpressReadinga' ); 
 has 'artpress_time'  => ( is => 'rw', isa => 'ArtpressTime' ); 
 has 'artpress_date'  => ( is => 'rw', isa => 'ArtpressDate' ); 
 has 'artpress_pipe'  => ( is => 'rw', isa => 'ArtpressPipe' ); 
 has 'artpress_timecreate'  => ( is => 'rw', isa => 'ArtpressTimecreate' ); 
 has 'artpress_timemod'  => ( is => 'rw', isa => 'ArtpressTimemod' ); 
 has 'artpress_datemod'  => ( is => 'rw', isa => 'ArtpressDatemod' ); 
 has 'artpress_headwater'  => ( is => 'rw', isa => 'ArtpressHeadwater' ); 
 has 'artpress_spare2'  => ( is => 'rw', isa => 'ArtpressSpare2' ); 
 has 'artpress_flow'  => ( is => 'rw', isa => 'ArtpressFlow' ); 
 has 'artpress_readingb'  => ( is => 'rw', isa => 'ArtpressReadingb' ); 
 has 'artpress_spare1'  => ( is => 'rw', isa => 'ArtpressSpare1' ); 
 has 'artpress_valveleak'  => ( is => 'rw', isa => 'ArtpressValveleak' ); 
 has 'artpress_station'  => ( is => 'rw', isa => 'ArtpressStation' ); 
 has 'artpress_datecreate'  => ( is => 'rw', isa => 'ArtpressDatecreate' ); 
 has 'artpress_spare3'  => ( is => 'rw', isa => 'ArtpressSpare3' ); 
 has 'artpress_hole'  => ( is => 'rw', isa => 'ArtpressHole' ); 
 has 'artpress_usercreate'  => ( is => 'rw', isa => 'ArtpressUsercreate' ); 
 has 'artpress_dbver7'  => ( is => 'rw', isa => 'ArtpressDbver7' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artpress is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables artpress is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTPRESS ( Station TEXT,  Hole NUMERIC,  Pipe NUMERIC,  Date TEXT,  Time NUMERIC,  Headwater NUMERIC,  Readinga NUMERIC,  Readingb NUMERIC,  Flow NUMERIC,  Valveleak NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver7 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTPRESS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artpress::Validation;
  use Moose;
  extends 'Artpress';

 has '+artpress_time' => ( required => 1, default => 1200, ); 
 has '+artpress_date' => ( required => 1, default => 18991231, ); 
 has '+artpress_pipe' => ( required => 1, default => 1, ); 
 has '+artpress_station' => ( required => 1,  ); 
 has '+artpress_hole' => ( required => 1, default => 1, ); 

  
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

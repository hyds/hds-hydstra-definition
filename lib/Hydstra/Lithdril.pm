
{
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Usermod TEXT,  Timecreate NUMERIC,  Interpret TEXT,  Timemod NUMERIC,  Descript TEXT,  Rocktype TEXT,  Datemod TEXT,  Depthfrom NUMERIC,  Dbver23 NUMERIC,  Spare2 TEXT,  Verified NUMERIC,  Spare1 TEXT,  Station TEXT,  Depthto NUMERIC,  Name TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Comment TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 
Field [usermod]false
Field [timecreate]false
Field [interpret]true
Field [timemod]false
Field [descript]false
Field [rocktype]false
Field [datemod]false
Field [depthfrom]true
Field [dbver23]false
Field [spare2]false
Field [verified]false
Field [spare1]false
Field [station]true
Field [depthto]false
Field [name]false
Field [datecreate]false
Field [spare3]false
Field [hole]true
Field [comment]false
Field [usercreate]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Usermod TEXT,  Timecreate NUMERIC,  Interpret TEXT,  Timemod NUMERIC,  Descript TEXT,  Rocktype TEXT,  Datemod TEXT,  Depthfrom NUMERIC,  Dbver23 NUMERIC,  Spare2 TEXT,  Verified NUMERIC,  Spare1 TEXT,  Station TEXT,  Depthto NUMERIC,  Name TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Comment TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 
Field [usermod] key value [false]
Field [timecreate] key value [false]
Field [interpret] key value [true]
Field [timemod] key value [false]
Field [descript] key value [false]
Field [rocktype] key value [false]
Field [datemod] key value [false]
Field [depthfrom] key value [true]
Field [dbver23] key value [false]
Field [spare2] key value [false]
Field [verified] key value [false]
Field [spare1] key value [false]
Field [station] key value [true]
Field [depthto] key value [false]
Field [name] key value [false]
Field [datecreate] key value [false]
Field [spare3] key value [false]
Field [hole] key value [true]
Field [comment] key value [false]
Field [usercreate] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Usermod TEXT,  Timecreate NUMERIC,  Interpret TEXT,  Timemod NUMERIC,  Descript TEXT,  Rocktype TEXT,  Datemod TEXT,  Depthfrom NUMERIC,  Dbver23 NUMERIC,  Spare2 TEXT,  Verified NUMERIC,  Spare1 TEXT,  Station TEXT,  Depthto NUMERIC,  Name TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Comment TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Usermod TEXT,  Timecreate NUMERIC,  Interpret TEXT,  Timemod NUMERIC,  Descript TEXT,  Rocktype TEXT,  Datemod TEXT,  Depthfrom NUMERIC,  Dbver23 NUMERIC,  Spare2 TEXT,  Verified NUMERIC,  Spare1 TEXT,  Station TEXT,  Depthto NUMERIC,  Name TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Comment TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Usermod TEXT,  Timecreate NUMERIC,  Interpret TEXT,  Timemod NUMERIC,  Descript TEXT,  Rocktype TEXT,  Datemod TEXT,  Depthfrom NUMERIC,  Dbver23 NUMERIC,  Spare2 TEXT,  Verified NUMERIC,  Spare1 TEXT,  Station TEXT,  Depthto NUMERIC,  Name TEXT,  Datecreate TEXT,  Spare3 TEXT,  Hole NUMERIC,  Comment TEXT,  Usercreate TEXT, PRIMARY KEY (Interpret, Depthfrom, Station, Hole))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Placeholder ,  Station TEXT,  Hole NUMERIC,  Interpret TEXT,  Depthfrom NUMERIC,  Depthto NUMERIC,  Rocktype TEXT,  Name TEXT,  Descript TEXT,  Comment TEXT,  Verified NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver23 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Interpret, Depthfrom))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Lithdril;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHDRIL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithdril table 

=cut

subtype 'LithdrilUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithdrilDescript', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'LithdrilRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithdrilSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithdrilDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithdrilName', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'LithdrilDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithdrilSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithdrilHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithdrilComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'LithdrilUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithdril_usermod'  => ( is => 'rw', isa => 'LithdrilUsermod' ); 
 has 'lithdril_timecreate'  => ( is => 'rw', isa => 'LithdrilTimecreate' ); 
 has 'lithdril_interpret'  => ( is => 'rw', isa => 'LithdrilInterpret' ); 
 has 'lithdril_timemod'  => ( is => 'rw', isa => 'LithdrilTimemod' ); 
 has 'lithdril_descript'  => ( is => 'rw', isa => 'LithdrilDescript' ); 
 has 'lithdril_rocktype'  => ( is => 'rw', isa => 'LithdrilRocktype' ); 
 has 'lithdril_datemod'  => ( is => 'rw', isa => 'LithdrilDatemod' ); 
 has 'lithdril_depthfrom'  => ( is => 'rw', isa => 'LithdrilDepthfrom' ); 
 has 'lithdril_dbver23'  => ( is => 'rw', isa => 'LithdrilDbver23' ); 
 has 'lithdril_spare2'  => ( is => 'rw', isa => 'LithdrilSpare2' ); 
 has 'lithdril_verified'  => ( is => 'rw', isa => 'LithdrilVerified' ); 
 has 'lithdril_spare1'  => ( is => 'rw', isa => 'LithdrilSpare1' ); 
 has 'lithdril_station'  => ( is => 'rw', isa => 'LithdrilStation' ); 
 has 'lithdril_depthto'  => ( is => 'rw', isa => 'LithdrilDepthto' ); 
 has 'lithdril_name'  => ( is => 'rw', isa => 'LithdrilName' ); 
 has 'lithdril_datecreate'  => ( is => 'rw', isa => 'LithdrilDatecreate' ); 
 has 'lithdril_spare3'  => ( is => 'rw', isa => 'LithdrilSpare3' ); 
 has 'lithdril_hole'  => ( is => 'rw', isa => 'LithdrilHole' ); 
 has 'lithdril_comment'  => ( is => 'rw', isa => 'LithdrilComment' ); 
 has 'lithdril_usercreate'  => ( is => 'rw', isa => 'LithdrilUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables lithdril is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithdril is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHDRIL ( Station TEXT,  Hole NUMERIC,  Interpret TEXT,  Depthfrom NUMERIC,  Depthto NUMERIC,  Rocktype TEXT,  Name TEXT,  Descript TEXT,  Comment TEXT,  Verified NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver23 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Interpret, Depthfrom))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO LITHDRIL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Lithdril::Validation;
  use Moose;
  extends 'Lithdril';

 has '+lithdril_interpret' => ( required => 1,  ); 
 has '+lithdril_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithdril_station' => ( required => 1,  ); 
 has '+lithdril_hole' => ( required => 1, default => 1, ); 

  
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

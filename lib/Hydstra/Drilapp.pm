
{
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Otherinfo TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Drillic TEXT,  Receiptnum TEXT,  Timemod NUMERIC,  Feepaid NUMERIC,  Datemod TEXT,  Spare2 TEXT,  Applfee NUMERIC,  Appldate TEXT,  Spare1 TEXT,  Appltype TEXT,  Adticadvis NUMERIC,  Feesrefund NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Feespaid NUMERIC,  Usercreate TEXT,  Dbver4 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 
Field [otherinfo]false
Field [spare5]false
Field [spare4]false
Field [usermod]false
Field [timecreate]false
Field [drillic]true
Field [receiptnum]false
Field [timemod]false
Field [feepaid]false
Field [datemod]false
Field [spare2]false
Field [applfee]false
Field [appldate]true
Field [spare1]false
Field [appltype]true
Field [adticadvis]false
Field [feesrefund]false
Field [datecreate]false
Field [spare3]false
Field [feespaid]false
Field [usercreate]false
Field [dbver4]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Otherinfo TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Drillic TEXT,  Receiptnum TEXT,  Timemod NUMERIC,  Feepaid NUMERIC,  Datemod TEXT,  Spare2 TEXT,  Applfee NUMERIC,  Appldate TEXT,  Spare1 TEXT,  Appltype TEXT,  Adticadvis NUMERIC,  Feesrefund NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Feespaid NUMERIC,  Usercreate TEXT,  Dbver4 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 
Field [otherinfo] key value [false]
Field [spare5] key value [false]
Field [spare4] key value [false]
Field [usermod] key value [false]
Field [timecreate] key value [false]
Field [drillic] key value [true]
Field [receiptnum] key value [false]
Field [timemod] key value [false]
Field [feepaid] key value [false]
Field [datemod] key value [false]
Field [spare2] key value [false]
Field [applfee] key value [false]
Field [appldate] key value [true]
Field [spare1] key value [false]
Field [appltype] key value [true]
Field [adticadvis] key value [false]
Field [feesrefund] key value [false]
Field [datecreate] key value [false]
Field [spare3] key value [false]
Field [feespaid] key value [false]
Field [usercreate] key value [false]
Field [dbver4] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Otherinfo TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Drillic TEXT,  Receiptnum TEXT,  Timemod NUMERIC,  Feepaid NUMERIC,  Datemod TEXT,  Spare2 TEXT,  Applfee NUMERIC,  Appldate TEXT,  Spare1 TEXT,  Appltype TEXT,  Adticadvis NUMERIC,  Feesrefund NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Feespaid NUMERIC,  Usercreate TEXT,  Dbver4 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Otherinfo TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Drillic TEXT,  Receiptnum TEXT,  Timemod NUMERIC,  Feepaid NUMERIC,  Datemod TEXT,  Spare2 TEXT,  Applfee NUMERIC,  Appldate TEXT,  Spare1 TEXT,  Appltype TEXT,  Adticadvis NUMERIC,  Feesrefund NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Feespaid NUMERIC,  Usercreate TEXT,  Dbver4 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Otherinfo TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Drillic TEXT,  Receiptnum TEXT,  Timemod NUMERIC,  Feepaid NUMERIC,  Datemod TEXT,  Spare2 TEXT,  Applfee NUMERIC,  Appldate TEXT,  Spare1 TEXT,  Appltype TEXT,  Adticadvis NUMERIC,  Feesrefund NUMERIC,  Datecreate TEXT,  Spare3 TEXT,  Feespaid NUMERIC,  Usercreate TEXT,  Dbver4 NUMERIC, PRIMARY KEY (Drillic, Appldate, Appltype))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Placeholder ,  Drillic TEXT,  Appltype TEXT,  Appldate TEXT,  Applfee NUMERIC,  Feepaid NUMERIC,  Receiptnum TEXT,  Feespaid NUMERIC,  Feesrefund NUMERIC,  Adticadvis NUMERIC,  Otherinfo TEXT,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Spare4 TEXT,  Spare5 TEXT,  Dbver4 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Drillic, Appltype, Appldate))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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
package Hydstra::Drilapp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILAPP';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilapp table 

=cut

subtype 'DrilappOtherinfo', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappSpare5', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappSpare4', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilappReceiptnum', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'DrilappTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilappFeepaid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappApplfee', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappAppltype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappAdticadvis', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappFeesrefund', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilappDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilappFeespaid', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'DrilappUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilappDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'drilapp_otherinfo'  => ( is => 'rw', isa => 'DrilappOtherinfo' ); 
 has 'drilapp_spare5'  => ( is => 'rw', isa => 'DrilappSpare5' ); 
 has 'drilapp_spare4'  => ( is => 'rw', isa => 'DrilappSpare4' ); 
 has 'drilapp_usermod'  => ( is => 'rw', isa => 'DrilappUsermod' ); 
 has 'drilapp_timecreate'  => ( is => 'rw', isa => 'DrilappTimecreate' ); 
 has 'drilapp_drillic'  => ( is => 'rw', isa => 'DrilappDrillic' ); 
 has 'drilapp_receiptnum'  => ( is => 'rw', isa => 'DrilappReceiptnum' ); 
 has 'drilapp_timemod'  => ( is => 'rw', isa => 'DrilappTimemod' ); 
 has 'drilapp_feepaid'  => ( is => 'rw', isa => 'DrilappFeepaid' ); 
 has 'drilapp_datemod'  => ( is => 'rw', isa => 'DrilappDatemod' ); 
 has 'drilapp_spare2'  => ( is => 'rw', isa => 'DrilappSpare2' ); 
 has 'drilapp_applfee'  => ( is => 'rw', isa => 'DrilappApplfee' ); 
 has 'drilapp_appldate'  => ( is => 'rw', isa => 'DrilappAppldate' ); 
 has 'drilapp_spare1'  => ( is => 'rw', isa => 'DrilappSpare1' ); 
 has 'drilapp_appltype'  => ( is => 'rw', isa => 'DrilappAppltype' ); 
 has 'drilapp_adticadvis'  => ( is => 'rw', isa => 'DrilappAdticadvis' ); 
 has 'drilapp_feesrefund'  => ( is => 'rw', isa => 'DrilappFeesrefund' ); 
 has 'drilapp_datecreate'  => ( is => 'rw', isa => 'DrilappDatecreate' ); 
 has 'drilapp_spare3'  => ( is => 'rw', isa => 'DrilappSpare3' ); 
 has 'drilapp_feespaid'  => ( is => 'rw', isa => 'DrilappFeespaid' ); 
 has 'drilapp_usercreate'  => ( is => 'rw', isa => 'DrilappUsercreate' ); 
 has 'drilapp_dbver4'  => ( is => 'rw', isa => 'DrilappDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilapp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilapp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILAPP ( Drillic TEXT,  Appltype TEXT,  Appldate TEXT,  Applfee NUMERIC,  Feepaid NUMERIC,  Receiptnum TEXT,  Feespaid NUMERIC,  Feesrefund NUMERIC,  Adticadvis NUMERIC,  Otherinfo TEXT,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Spare4 TEXT,  Spare5 TEXT,  Dbver4 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Drillic, Appltype, Appldate))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILAPP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilapp::Validation;
  use Moose;
  extends 'Drilapp';

 has '+drilapp_drillic' => ( required => 1,  ); 
 has '+drilapp_appldate' => ( required => 1,  ); 
 has '+drilapp_appltype' => ( required => 1,  ); 

  
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

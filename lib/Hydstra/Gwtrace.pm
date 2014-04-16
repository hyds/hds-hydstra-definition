
{
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Usermod TEXT,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Operator TEXT,  Dbver3 NUMERIC,  Step NUMERIC,  Depthfrom NUMERIC,  Instserial TEXT,  Station TEXT,  Instmake TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Hole NUMERIC,  Instmod TEXT,  Comment TEXT,  Usercreate TEXT,  Type TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 
Field [usermod]false
Field [time]true
Field [date]true
Field [pipe]true
Field [timecreate]false
Field [timemod]false
Field [datemod]false
Field [operator]false
Field [dbver3]false
Field [step]false
Field [depthfrom]false
Field [instserial]false
Field [station]true
Field [instmake]false
Field [depthto]false
Field [datecreate]false
Field [hole]true
Field [instmod]false
Field [comment]false
Field [usercreate]false
Field [type]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Usermod TEXT,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Operator TEXT,  Dbver3 NUMERIC,  Step NUMERIC,  Depthfrom NUMERIC,  Instserial TEXT,  Station TEXT,  Instmake TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Hole NUMERIC,  Instmod TEXT,  Comment TEXT,  Usercreate TEXT,  Type TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 
Field [usermod] key value [false]
Field [time] key value [true]
Field [date] key value [true]
Field [pipe] key value [true]
Field [timecreate] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [operator] key value [false]
Field [dbver3] key value [false]
Field [step] key value [false]
Field [depthfrom] key value [false]
Field [instserial] key value [false]
Field [station] key value [true]
Field [instmake] key value [false]
Field [depthto] key value [false]
Field [datecreate] key value [false]
Field [hole] key value [true]
Field [instmod] key value [false]
Field [comment] key value [false]
Field [usercreate] key value [false]
Field [type] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Usermod TEXT,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Operator TEXT,  Dbver3 NUMERIC,  Step NUMERIC,  Depthfrom NUMERIC,  Instserial TEXT,  Station TEXT,  Instmake TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Hole NUMERIC,  Instmod TEXT,  Comment TEXT,  Usercreate TEXT,  Type TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Usermod TEXT,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Operator TEXT,  Dbver3 NUMERIC,  Step NUMERIC,  Depthfrom NUMERIC,  Instserial TEXT,  Station TEXT,  Instmake TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Hole NUMERIC,  Instmod TEXT,  Comment TEXT,  Usercreate TEXT,  Type TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Usermod TEXT,  Time NUMERIC,  Date TEXT,  Pipe NUMERIC,  Timecreate NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Operator TEXT,  Dbver3 NUMERIC,  Step NUMERIC,  Depthfrom NUMERIC,  Instserial TEXT,  Station TEXT,  Instmake TEXT,  Depthto NUMERIC,  Datecreate TEXT,  Hole NUMERIC,  Instmod TEXT,  Comment TEXT,  Usercreate TEXT,  Type TEXT, PRIMARY KEY (Time, Date, Pipe, Station, Hole))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Placeholder ,  Station TEXT,  Hole NUMERIC,  Pipe NUMERIC,  Date TEXT,  Time NUMERIC,  Depthfrom NUMERIC,  Depthto NUMERIC,  Instmake TEXT,  Instmod TEXT,  Instserial TEXT,  Operator TEXT,  Type TEXT,  Step NUMERIC,  Comment TEXT,  Dbver3 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gwtrace;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWTRACE';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( gwtracer );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwtrace table 

=cut

subtype 'GwtraceUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GwtraceDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtracePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwtraceDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceOperator', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwtraceStep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GwtraceDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceInstserial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwtraceStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwtraceInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwtraceDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwtraceInstmod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'GwtraceComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwtraceUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwtraceType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gwtrace_usermod'  => ( is => 'rw', isa => 'GwtraceUsermod' ); 
 has 'gwtrace_time'  => ( is => 'rw', isa => 'GwtraceTime' ); 
 has 'gwtrace_date'  => ( is => 'rw', isa => 'GwtraceDate' ); 
 has 'gwtrace_pipe'  => ( is => 'rw', isa => 'GwtracePipe' ); 
 has 'gwtrace_timecreate'  => ( is => 'rw', isa => 'GwtraceTimecreate' ); 
 has 'gwtrace_timemod'  => ( is => 'rw', isa => 'GwtraceTimemod' ); 
 has 'gwtrace_datemod'  => ( is => 'rw', isa => 'GwtraceDatemod' ); 
 has 'gwtrace_operator'  => ( is => 'rw', isa => 'GwtraceOperator' ); 
 has 'gwtrace_dbver3'  => ( is => 'rw', isa => 'GwtraceDbver3' ); 
 has 'gwtrace_step'  => ( is => 'rw', isa => 'GwtraceStep' ); 
 has 'gwtrace_depthfrom'  => ( is => 'rw', isa => 'GwtraceDepthfrom' ); 
 has 'gwtrace_instserial'  => ( is => 'rw', isa => 'GwtraceInstserial' ); 
 has 'gwtrace_station'  => ( is => 'rw', isa => 'GwtraceStation' ); 
 has 'gwtrace_instmake'  => ( is => 'rw', isa => 'GwtraceInstmake' ); 
 has 'gwtrace_depthto'  => ( is => 'rw', isa => 'GwtraceDepthto' ); 
 has 'gwtrace_datecreate'  => ( is => 'rw', isa => 'GwtraceDatecreate' ); 
 has 'gwtrace_hole'  => ( is => 'rw', isa => 'GwtraceHole' ); 
 has 'gwtrace_instmod'  => ( is => 'rw', isa => 'GwtraceInstmod' ); 
 has 'gwtrace_comment'  => ( is => 'rw', isa => 'GwtraceComment' ); 
 has 'gwtrace_usercreate'  => ( is => 'rw', isa => 'GwtraceUsercreate' ); 
 has 'gwtrace_type'  => ( is => 'rw', isa => 'GwtraceType' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gwtrace is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwtrace is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWTRACE ( Station TEXT,  Hole NUMERIC,  Pipe NUMERIC,  Date TEXT,  Time NUMERIC,  Depthfrom NUMERIC,  Depthto NUMERIC,  Instmake TEXT,  Instmod TEXT,  Instserial TEXT,  Operator TEXT,  Type TEXT,  Step NUMERIC,  Comment TEXT,  Dbver3 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GWTRACE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Gwtrace::Validation;
  use Moose;
  extends 'Gwtrace';

 has '+gwtrace_time' => ( required => 1, default => 1200, ); 
 has '+gwtrace_date' => ( required => 1, default => 18991231, ); 
 has '+gwtrace_pipe' => ( required => 1, default => 1, ); 
 has '+gwtrace_depthfrom' => (  default => -999, ); 
 has '+gwtrace_station' => ( required => 1,  ); 
 has '+gwtrace_hole' => ( required => 1, default => 1, ); 

  
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

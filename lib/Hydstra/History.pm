
{
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Keyword TEXT,  Station TEXT,  Stattime NUMERIC,  Usermod TEXT,  Timecreate NUMERIC,  Descript TEXT,  Datecreate TEXT,  Timemod NUMERIC,  Datemod TEXT,  Xmldata TEXT,  Checkedby TEXT,  Statdate TEXT,  Usercreate TEXT,  Enteredby TEXT,  Dbver19 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 
Field [keyword]true
Field [station]true
Field [stattime]true
Field [usermod]false
Field [timecreate]false
Field [descript]false
Field [datecreate]false
Field [timemod]false
Field [datemod]false
Field [xmldata]false
Field [checkedby]false
Field [statdate]true
Field [usercreate]false
Field [enteredby]false
Field [dbver19]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Keyword TEXT,  Station TEXT,  Stattime NUMERIC,  Usermod TEXT,  Timecreate NUMERIC,  Descript TEXT,  Datecreate TEXT,  Timemod NUMERIC,  Datemod TEXT,  Xmldata TEXT,  Checkedby TEXT,  Statdate TEXT,  Usercreate TEXT,  Enteredby TEXT,  Dbver19 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 
Field [keyword] key value [true]
Field [station] key value [true]
Field [stattime] key value [true]
Field [usermod] key value [false]
Field [timecreate] key value [false]
Field [descript] key value [false]
Field [datecreate] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [xmldata] key value [false]
Field [checkedby] key value [false]
Field [statdate] key value [true]
Field [usercreate] key value [false]
Field [enteredby] key value [false]
Field [dbver19] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Keyword TEXT,  Station TEXT,  Stattime NUMERIC,  Usermod TEXT,  Timecreate NUMERIC,  Descript TEXT,  Datecreate TEXT,  Timemod NUMERIC,  Datemod TEXT,  Xmldata TEXT,  Checkedby TEXT,  Statdate TEXT,  Usercreate TEXT,  Enteredby TEXT,  Dbver19 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Keyword TEXT,  Station TEXT,  Stattime NUMERIC,  Usermod TEXT,  Timecreate NUMERIC,  Descript TEXT,  Datecreate TEXT,  Timemod NUMERIC,  Datemod TEXT,  Xmldata TEXT,  Checkedby TEXT,  Statdate TEXT,  Usercreate TEXT,  Enteredby TEXT,  Dbver19 NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Keyword TEXT,  Station TEXT,  Stattime NUMERIC,  Usermod TEXT,  Timecreate NUMERIC,  Descript TEXT,  Datecreate TEXT,  Timemod NUMERIC,  Datemod TEXT,  Xmldata TEXT,  Checkedby TEXT,  Statdate TEXT,  Usercreate TEXT,  Enteredby TEXT,  Dbver19 NUMERIC, PRIMARY KEY (Keyword, Station, Stattime, Statdate))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Placeholder ,  Station TEXT,  Statdate TEXT,  Stattime NUMERIC,  Keyword TEXT,  Descript TEXT,  Xmldata TEXT,  Enteredby TEXT,  Checkedby TEXT,  Dbver19 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Statdate, Stattime, Keyword))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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
package Hydstra::History;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HISTORY';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a history table 

=cut

subtype 'HistoryKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HistoryStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDescript', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HistoryDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryXmldata', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HistoryCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HistoryDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'history_keyword'  => ( is => 'rw', isa => 'HistoryKeyword' ); 
 has 'history_station'  => ( is => 'rw', isa => 'HistoryStation' ); 
 has 'history_stattime'  => ( is => 'rw', isa => 'HistoryStattime' ); 
 has 'history_usermod'  => ( is => 'rw', isa => 'HistoryUsermod' ); 
 has 'history_timecreate'  => ( is => 'rw', isa => 'HistoryTimecreate' ); 
 has 'history_descript'  => ( is => 'rw', isa => 'HistoryDescript' ); 
 has 'history_datecreate'  => ( is => 'rw', isa => 'HistoryDatecreate' ); 
 has 'history_timemod'  => ( is => 'rw', isa => 'HistoryTimemod' ); 
 has 'history_datemod'  => ( is => 'rw', isa => 'HistoryDatemod' ); 
 has 'history_xmldata'  => ( is => 'rw', isa => 'HistoryXmldata' ); 
 has 'history_checkedby'  => ( is => 'rw', isa => 'HistoryCheckedby' ); 
 has 'history_statdate'  => ( is => 'rw', isa => 'HistoryStatdate' ); 
 has 'history_usercreate'  => ( is => 'rw', isa => 'HistoryUsercreate' ); 
 has 'history_enteredby'  => ( is => 'rw', isa => 'HistoryEnteredby' ); 
 has 'history_dbver19'  => ( is => 'rw', isa => 'HistoryDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables history is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables history is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HISTORY ( Station TEXT,  Statdate TEXT,  Stattime NUMERIC,  Keyword TEXT,  Descript TEXT,  Xmldata TEXT,  Enteredby TEXT,  Checkedby TEXT,  Dbver19 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Statdate, Stattime, Keyword))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HISTORY VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::History::Validation;
  use Moose;
  extends 'History';

 has '+history_keyword' => ( required => 1,  ); 
 has '+history_station' => ( required => 1,  ); 
 has '+history_stattime' => ( required => 1, default => 1200, ); 
 has '+history_statdate' => ( required => 1,  ); 

  
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

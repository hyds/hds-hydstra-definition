
{
package Hydstra::Drilhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILHIST';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilhist table 

=cut

subtype 'DrilhistKeyword', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilhistTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilhistDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilhistDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilhistUnlicname', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrilhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilhistSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilhistSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilhistSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilhistComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilhistUnliccont', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrilhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilhistOfficer', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };

 has 'drilhist_keyword'  => ( is => 'rw', isa => 'DrilhistKeyword' ); 
 has 'drilhist_usermod'  => ( is => 'rw', isa => 'DrilhistUsermod' ); 
 has 'drilhist_timecreate'  => ( is => 'rw', isa => 'DrilhistTimecreate' ); 
 has 'drilhist_time'  => ( is => 'rw', isa => 'DrilhistTime' ); 
 has 'drilhist_drillic'  => ( is => 'rw', isa => 'DrilhistDrillic' ); 
 has 'drilhist_date'  => ( is => 'rw', isa => 'DrilhistDate' ); 
 has 'drilhist_timemod'  => ( is => 'rw', isa => 'DrilhistTimemod' ); 
 has 'drilhist_datemod'  => ( is => 'rw', isa => 'DrilhistDatemod' ); 
 has 'drilhist_unlicname'  => ( is => 'rw', isa => 'DrilhistUnlicname' ); 
 has 'drilhist_dbver3'  => ( is => 'rw', isa => 'DrilhistDbver3' ); 
 has 'drilhist_spare2'  => ( is => 'rw', isa => 'DrilhistSpare2' ); 
 has 'drilhist_spare1'  => ( is => 'rw', isa => 'DrilhistSpare1' ); 
 has 'drilhist_datecreate'  => ( is => 'rw', isa => 'DrilhistDatecreate' ); 
 has 'drilhist_spare3'  => ( is => 'rw', isa => 'DrilhistSpare3' ); 
 has 'drilhist_comment'  => ( is => 'rw', isa => 'DrilhistComment' ); 
 has 'drilhist_unliccont'  => ( is => 'rw', isa => 'DrilhistUnliccont' ); 
 has 'drilhist_usercreate'  => ( is => 'rw', isa => 'DrilhistUsercreate' ); 
 has 'drilhist_officer'  => ( is => 'rw', isa => 'DrilhistOfficer' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables drilhist is a parent of.

=cut
  
sub keys{
  my @kys = qw( drillic date time keyword );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables drilhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilhist is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( drillic date time keyword officer comment unlicname unliccont spare1 spare2 spare3 dbver3 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILHIST ( 'Drillic' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Keyword' TEXT,  'Officer' TEXT,  'Comment' TEXT,  'Unlicname' TEXT,  'Unliccont' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver3' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Drillic, Date, Time, Keyword))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Drilhist::Validation;
  use Moose;
  extends 'Hydstra::Drilhist';

 has '+drilhist_keyword' => ( required => 1,  ); 
 has '+drilhist_time' => ( required => 1, default => 1200, ); 
 has '+drilhist_drillic' => ( required => 1,  ); 
 has '+drilhist_date' => ( required => 1, default => 18991231, ); 

  
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

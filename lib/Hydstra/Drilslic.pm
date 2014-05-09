
{
package Hydstra::Drilslic;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILSLIC';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilslic table 

=cut

subtype 'DrilslicUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilslicTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilslicDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilslicComments', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'DrilslicDbver5', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilslicTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilslicStatelic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilslicDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'DrilslicState', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'DrilslicSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilslicSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilslicDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'DrilslicSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilslicUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilslicExpirydate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'DrilslicClass', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'drilslic_usermod'  => ( is => 'rw', isa => 'DrilslicUsermod' ); 
 has 'drilslic_timecreate'  => ( is => 'rw', isa => 'DrilslicTimecreate' ); 
 has 'drilslic_drillic'  => ( is => 'rw', isa => 'DrilslicDrillic' ); 
 has 'drilslic_comments'  => ( is => 'rw', isa => 'DrilslicComments' ); 
 has 'drilslic_dbver5'  => ( is => 'rw', isa => 'DrilslicDbver5' ); 
 has 'drilslic_timemod'  => ( is => 'rw', isa => 'DrilslicTimemod' ); 
 has 'drilslic_statelic'  => ( is => 'rw', isa => 'DrilslicStatelic' ); 
 has 'drilslic_datemod'  => ( is => 'rw', isa => 'DrilslicDatemod' ); 
 has 'drilslic_state'  => ( is => 'rw', isa => 'DrilslicState' ); 
 has 'drilslic_spare2'  => ( is => 'rw', isa => 'DrilslicSpare2' ); 
 has 'drilslic_spare1'  => ( is => 'rw', isa => 'DrilslicSpare1' ); 
 has 'drilslic_datecreate'  => ( is => 'rw', isa => 'DrilslicDatecreate' ); 
 has 'drilslic_spare3'  => ( is => 'rw', isa => 'DrilslicSpare3' ); 
 has 'drilslic_usercreate'  => ( is => 'rw', isa => 'DrilslicUsercreate' ); 
 has 'drilslic_expirydate'  => ( is => 'rw', isa => 'DrilslicExpirydate' ); 
 has 'drilslic_class'  => ( is => 'rw', isa => 'DrilslicClass' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables drilslic is a parent of.

=cut
  
sub keys{
  my @kys = qw( drillic state class );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables drilslic is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilslic is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( drillic state class statelic comments expirydate spare1 spare2 spare3 dbver5 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILSLIC ( 'Drillic' TEXT,  'State' TEXT,  'Class' TEXT,  'Statelic' TEXT,  'Comments' TEXT,  'Expirydate' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver5' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Drillic, State, Class))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO DRILSLIC VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Drilslic::Validation;
  use Moose;
  extends 'Hydstra::Drilslic';

 has '+drilslic_drillic' => ( required => 1,  ); 
 has '+drilslic_state' => ( required => 1,  ); 
 has '+drilslic_class' => ( required => 1,  ); 

  
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

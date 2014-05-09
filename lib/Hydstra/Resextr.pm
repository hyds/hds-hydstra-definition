
{
package Hydstra::Resextr;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'RESEXTR';

use constant CHILD_OF => qw( resdflt );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a resextr table 

=cut

subtype 'ResextrUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ResextrAdd', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'ResextrVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'ResextrTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ResextrFixed', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ResextrPosition', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ResextrValidation', as 'Str', where { length($_) <= 40 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [40] char, not [$length] characters.~"  };
subtype 'ResextrFieldname', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'ResextrTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ResextrDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'ResextrDbver13', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ResextrDelimiter', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'ResextrDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'ResextrLength', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'ResextrFileformat', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'ResextrUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ResextrInvalidact', as 'Str', where { length($_) <= 7 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [7] char, not [$length] characters.~"  };
subtype 'ResextrNumeric', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ResextrMult', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };

 has 'resextr_usermod'  => ( is => 'rw', isa => 'ResextrUsermod' ); 
 has 'resextr_add'  => ( is => 'rw', isa => 'ResextrAdd' ); 
 has 'resextr_variable'  => ( is => 'rw', isa => 'ResextrVariable' ); 
 has 'resextr_timecreate'  => ( is => 'rw', isa => 'ResextrTimecreate' ); 
 has 'resextr_fixed'  => ( is => 'rw', isa => 'ResextrFixed' ); 
 has 'resextr_position'  => ( is => 'rw', isa => 'ResextrPosition' ); 
 has 'resextr_validation'  => ( is => 'rw', isa => 'ResextrValidation' ); 
 has 'resextr_fieldname'  => ( is => 'rw', isa => 'ResextrFieldname' ); 
 has 'resextr_timemod'  => ( is => 'rw', isa => 'ResextrTimemod' ); 
 has 'resextr_datemod'  => ( is => 'rw', isa => 'ResextrDatemod' ); 
 has 'resextr_dbver13'  => ( is => 'rw', isa => 'ResextrDbver13' ); 
 has 'resextr_delimiter'  => ( is => 'rw', isa => 'ResextrDelimiter' ); 
 has 'resextr_datecreate'  => ( is => 'rw', isa => 'ResextrDatecreate' ); 
 has 'resextr_length'  => ( is => 'rw', isa => 'ResextrLength' ); 
 has 'resextr_fileformat'  => ( is => 'rw', isa => 'ResextrFileformat' ); 
 has 'resextr_usercreate'  => ( is => 'rw', isa => 'ResextrUsercreate' ); 
 has 'resextr_invalidact'  => ( is => 'rw', isa => 'ResextrInvalidact' ); 
 has 'resextr_numeric'  => ( is => 'rw', isa => 'ResextrNumeric' ); 
 has 'resextr_mult'  => ( is => 'rw', isa => 'ResextrMult' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables resextr is a parent of.

=cut
  
sub keys{
  my @kys = qw( fileformat variable fieldname );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables resextr is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables resextr is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( fileformat variable fieldname numeric mult add fixed position length delimiter validation invalidact dbver13 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS RESEXTR ( 'Fileformat' TEXT,  'Variable' NUMERIC,  'Fieldname' TEXT,  'Numeric' NUMERIC,  'Mult' NUMERIC,  'Add' NUMERIC,  'Fixed' NUMERIC,  'Position' NUMERIC,  'Length' NUMERIC,  'Delimiter' TEXT,  'Validation' TEXT,  'Invalidact' TEXT,  'Dbver13' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Fileformat, Variable, Fieldname))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO RESEXTR VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Resextr::Validation;
  use Moose;
  extends 'Hydstra::Resextr';

 has '+resextr_variable' => ( required => 1,  ); 
 has '+resextr_fieldname' => ( required => 1,  ); 
 has '+resextr_fileformat' => ( required => 1,  ); 

  
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

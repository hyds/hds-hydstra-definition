
{
package Hydstra::Ttabhed;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'TTABHED';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( ttabpts );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a ttabhed table 

=cut

subtype 'TtabhedStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'TtabhedExtend', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'TtabhedVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'TtabhedUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'TtabhedTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'TtabhedTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'TtabhedDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'TtabhedDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'TtabhedDbver9', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'TtabhedInterp', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'TtabhedUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'ttabhed_station'  => ( is => 'rw', isa => 'TtabhedStation' ); 
 has 'ttabhed_extend'  => ( is => 'rw', isa => 'TtabhedExtend' ); 
 has 'ttabhed_variable'  => ( is => 'rw', isa => 'TtabhedVariable' ); 
 has 'ttabhed_usermod'  => ( is => 'rw', isa => 'TtabhedUsermod' ); 
 has 'ttabhed_timecreate'  => ( is => 'rw', isa => 'TtabhedTimecreate' ); 
 has 'ttabhed_timemod'  => ( is => 'rw', isa => 'TtabhedTimemod' ); 
 has 'ttabhed_datecreate'  => ( is => 'rw', isa => 'TtabhedDatecreate' ); 
 has 'ttabhed_datemod'  => ( is => 'rw', isa => 'TtabhedDatemod' ); 
 has 'ttabhed_dbver9'  => ( is => 'rw', isa => 'TtabhedDbver9' ); 
 has 'ttabhed_interp'  => ( is => 'rw', isa => 'TtabhedInterp' ); 
 has 'ttabhed_usercreate'  => ( is => 'rw', isa => 'TtabhedUsercreate' ); 


=head1 SUBROUTINES/METHODS


=head2 variable()
  
  If the table has a variable column return the column number, and indicate whether or not it is a combined variable.
  If the table has two variables, like varfrom and varto, you should give the columns;

  There are many different options for a variable field. 

  For examples:
  1. combined = variable.subvariable
    e.g. 100.01
  2. uncombined = variable
    e.g 100
  3. from variable = varfrom
    e.g. 100
  4. subvariable = subvar
    e.g. .01
  etc.
 

=cut
  
sub variable{

  #our $VARIABLE_COLUMN = '3';
  #our $COMBINED_VARIABLE = '1';
  
  my %var = ( 
    'variables'=>1,
    'variable'=>{'column'=>'1','combined'=>1}
  );
  
  return \%var;
}

=head2 keys()
  
  Find out what tables ttabhed is a parent of.

=cut
  
sub keys{
  my @kys = qw( station variable );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables ttabhed is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables ttabhed is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station variable interp extend dbver9 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS TTABHED ( 'Station' TEXT,  'Variable' NUMERIC,  'Interp' NUMERIC,  'Extend' NUMERIC,  'Dbver9' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Variable))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO TTABHED VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Ttabhed::Validation;
  use Moose;
  extends 'Hydstra::Ttabhed';

 has '+ttabhed_station' => ( required => 1,  ); 
 has '+ttabhed_variable' => ( required => 1,  ); 

  
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

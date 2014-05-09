
{
package Hydstra::Ratepts;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'RATEPTS';

use constant CHILD_OF => qw( ratehed );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a ratepts table 

=cut

subtype 'RateptsStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'RateptsStage', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'RateptsUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'RateptsTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'RateptsTable', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'RateptsVarfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'RateptsDbver14', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'RateptsRelease', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'RateptsDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'RateptsTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'RateptsVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'RateptsDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'RateptsDisch', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [5].~"  };
subtype 'RateptsUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'RateptsRqual', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };

 has 'ratepts_station'  => ( is => 'rw', isa => 'RateptsStation' ); 
 has 'ratepts_stage'  => ( is => 'rw', isa => 'RateptsStage' ); 
 has 'ratepts_usermod'  => ( is => 'rw', isa => 'RateptsUsermod' ); 
 has 'ratepts_timecreate'  => ( is => 'rw', isa => 'RateptsTimecreate' ); 
 has 'ratepts_table'  => ( is => 'rw', isa => 'RateptsTable' ); 
 has 'ratepts_varfrom'  => ( is => 'rw', isa => 'RateptsVarfrom' ); 
 has 'ratepts_dbver14'  => ( is => 'rw', isa => 'RateptsDbver14' ); 
 has 'ratepts_release'  => ( is => 'rw', isa => 'RateptsRelease' ); 
 has 'ratepts_datecreate'  => ( is => 'rw', isa => 'RateptsDatecreate' ); 
 has 'ratepts_timemod'  => ( is => 'rw', isa => 'RateptsTimemod' ); 
 has 'ratepts_varto'  => ( is => 'rw', isa => 'RateptsVarto' ); 
 has 'ratepts_datemod'  => ( is => 'rw', isa => 'RateptsDatemod' ); 
 has 'ratepts_disch'  => ( is => 'rw', isa => 'RateptsDisch' ); 
 has 'ratepts_usercreate'  => ( is => 'rw', isa => 'RateptsUsercreate' ); 
 has 'ratepts_rqual'  => ( is => 'rw', isa => 'RateptsRqual' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables ratepts is a parent of.

=cut
  
sub keys{
  my @kys = qw( station varfrom varto table release stage );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables ratepts is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables ratepts is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station varfrom varto table release stage disch rqual dbver14 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS RATEPTS ( 'Station' TEXT,  'Varfrom' NUMERIC,  'Varto' NUMERIC,  'Table' NUMERIC,  'Release' NUMERIC,  'Stage' NUMERIC,  'Disch' NUMERIC,  'Rqual' NUMERIC,  'Dbver14' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Varfrom, Varto, Table, Release, Stage))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO RATEPTS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

=head2 id_date()
  
  Tell me whether the field is a date field

=cut

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|endtime|enddate|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Ratepts::Validation;
  use Moose;
  extends 'Hydstra::Ratepts';

 has '+ratepts_station' => ( required => 1,  ); 
 has '+ratepts_stage' => ( required => 1,  ); 
 has '+ratepts_table' => ( required => 1,  ); 
 has '+ratepts_varfrom' => ( required => 1,  ); 
 has '+ratepts_release' => ( required => 1,  ); 
 has '+ratepts_varto' => ( required => 1,  ); 

  
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


{
package Hydstra::Sectsurv;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SECTSURV';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a sectsurv table 

=cut

subtype 'SectsurvStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SectsurvUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SectsurvInstmake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'SectsurvTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SectsurvDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SectsurvTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SectsurvBy', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SectsurvDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SectsurvDbver13', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SectsurvInstmodel', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'SectsurvUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SectsurvType', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SectsurvRemarks', as 'Str', where { length($_) <= 250 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [250] char, not [$length] characters.~"  };
subtype 'SectsurvSections', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SectsurvYear', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };

 has 'sectsurv_station'  => ( is => 'rw', isa => 'SectsurvStation' ); 
 has 'sectsurv_usermod'  => ( is => 'rw', isa => 'SectsurvUsermod' ); 
 has 'sectsurv_instmake'  => ( is => 'rw', isa => 'SectsurvInstmake' ); 
 has 'sectsurv_timecreate'  => ( is => 'rw', isa => 'SectsurvTimecreate' ); 
 has 'sectsurv_datecreate'  => ( is => 'rw', isa => 'SectsurvDatecreate' ); 
 has 'sectsurv_timemod'  => ( is => 'rw', isa => 'SectsurvTimemod' ); 
 has 'sectsurv_by'  => ( is => 'rw', isa => 'SectsurvBy' ); 
 has 'sectsurv_datemod'  => ( is => 'rw', isa => 'SectsurvDatemod' ); 
 has 'sectsurv_dbver13'  => ( is => 'rw', isa => 'SectsurvDbver13' ); 
 has 'sectsurv_instmodel'  => ( is => 'rw', isa => 'SectsurvInstmodel' ); 
 has 'sectsurv_usercreate'  => ( is => 'rw', isa => 'SectsurvUsercreate' ); 
 has 'sectsurv_type'  => ( is => 'rw', isa => 'SectsurvType' ); 
 has 'sectsurv_remarks'  => ( is => 'rw', isa => 'SectsurvRemarks' ); 
 has 'sectsurv_sections'  => ( is => 'rw', isa => 'SectsurvSections' ); 
 has 'sectsurv_year'  => ( is => 'rw', isa => 'SectsurvYear' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables sectsurv is a parent of.

=cut
  
sub keys{
  my @kys = qw( station year );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables sectsurv is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables sectsurv is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station year sections type by instmake instmodel remarks dbver13 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SECTSURV ( 'Station' TEXT,  'Year' NUMERIC,  'Sections' TEXT,  'Type' TEXT,  'By' TEXT,  'Instmake' TEXT,  'Instmodel' TEXT,  'Remarks' TEXT,  'Dbver13' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Year))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO SECTSURV VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Sectsurv::Validation;
  use Moose;
  extends 'Hydstra::Sectsurv';

 has '+sectsurv_station' => ( required => 1,  ); 
 has '+sectsurv_year' => ( required => 1,  ); 

  
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

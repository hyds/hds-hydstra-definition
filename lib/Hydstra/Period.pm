
{
package Hydstra::Period;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'PERIOD';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a period table 

=cut

subtype 'PeriodSubdesc', as 'Str', where { length($_) <= 24 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [24] char, not [$length] characters.~"  };
subtype 'PeriodVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PeriodUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeriodTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeriodNumdays', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'PeriodVarfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PeriodTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeriodPerend', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodPerstart', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodPcentiles', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'PeriodMinvalue', as 'Num', where { length($_) <= 16 && $_ =~ m{[+-]?(\d{1,9})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [16] and decimals [6].~"  };
subtype 'PeriodReportmin', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'PeriodRundate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'PeriodMindate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodDbver21', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'PeriodMaxvalue', as 'Num', where { length($_) <= 16 && $_ =~ m{[+-]?(\d{1,9})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [16] and decimals [6].~"  };
subtype 'PeriodDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodDatasource', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'PeriodMintime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeriodMaxdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'PeriodRuntime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'PeriodUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'PeriodMaxtime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'PeriodDatatype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'period_subdesc'  => ( is => 'rw', isa => 'PeriodSubdesc' ); 
 has 'period_variable'  => ( is => 'rw', isa => 'PeriodVariable' ); 
 has 'period_usermod'  => ( is => 'rw', isa => 'PeriodUsermod' ); 
 has 'period_timecreate'  => ( is => 'rw', isa => 'PeriodTimecreate' ); 
 has 'period_numdays'  => ( is => 'rw', isa => 'PeriodNumdays' ); 
 has 'period_varfrom'  => ( is => 'rw', isa => 'PeriodVarfrom' ); 
 has 'period_timemod'  => ( is => 'rw', isa => 'PeriodTimemod' ); 
 has 'period_perend'  => ( is => 'rw', isa => 'PeriodPerend' ); 
 has 'period_datemod'  => ( is => 'rw', isa => 'PeriodDatemod' ); 
 has 'period_perstart'  => ( is => 'rw', isa => 'PeriodPerstart' ); 
 has 'period_pcentiles'  => ( is => 'rw', isa => 'PeriodPcentiles' ); 
 has 'period_minvalue'  => ( is => 'rw', isa => 'PeriodMinvalue' ); 
 has 'period_reportmin'  => ( is => 'rw', isa => 'PeriodReportmin' ); 
 has 'period_rundate'  => ( is => 'rw', isa => 'PeriodRundate' ); 
 has 'period_station'  => ( is => 'rw', isa => 'PeriodStation' ); 
 has 'period_mindate'  => ( is => 'rw', isa => 'PeriodMindate' ); 
 has 'period_dbver21'  => ( is => 'rw', isa => 'PeriodDbver21' ); 
 has 'period_maxvalue'  => ( is => 'rw', isa => 'PeriodMaxvalue' ); 
 has 'period_datecreate'  => ( is => 'rw', isa => 'PeriodDatecreate' ); 
 has 'period_datasource'  => ( is => 'rw', isa => 'PeriodDatasource' ); 
 has 'period_mintime'  => ( is => 'rw', isa => 'PeriodMintime' ); 
 has 'period_maxdate'  => ( is => 'rw', isa => 'PeriodMaxdate' ); 
 has 'period_runtime'  => ( is => 'rw', isa => 'PeriodRuntime' ); 
 has 'period_usercreate'  => ( is => 'rw', isa => 'PeriodUsercreate' ); 
 has 'period_maxtime'  => ( is => 'rw', isa => 'PeriodMaxtime' ); 
 has 'period_datatype'  => ( is => 'rw', isa => 'PeriodDatatype' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables period is a parent of.

=cut
  
sub keys{
  my @kys = qw( station datasource varfrom variable );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables period is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables period is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station datasource varfrom variable subdesc perstart perend numdays datatype maxvalue maxdate maxtime reportmin minvalue mindate mintime pcentiles rundate runtime dbver21 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS PERIOD ( 'Station' TEXT,  'Datasource' TEXT,  'Varfrom' NUMERIC,  'Variable' NUMERIC,  'Subdesc' TEXT,  'Perstart' TEXT,  'Perend' TEXT,  'Numdays' NUMERIC,  'Datatype' TEXT,  'Maxvalue' NUMERIC,  'Maxdate' TEXT,  'Maxtime' NUMERIC,  'Reportmin' NUMERIC,  'Minvalue' NUMERIC,  'Mindate' TEXT,  'Mintime' NUMERIC,  'Pcentiles' TEXT,  'Rundate' TEXT,  'Runtime' NUMERIC,  'Dbver21' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Datasource, Varfrom, Variable))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO PERIOD VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Period::Validation;
  use Moose;
  extends 'Hydstra::Period';

 has '+period_variable' => ( required => 1,  ); 
 has '+period_varfrom' => ( required => 1,  ); 
 has '+period_station' => ( required => 1,  ); 
 has '+period_datasource' => ( required => 1,  ); 

  
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

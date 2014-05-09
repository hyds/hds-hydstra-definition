
{
package Hydstra::Sewrconf;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SEWRCONF';

use constant CHILD_OF => qw( sewrsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a sewrconf table 

=cut

subtype 'SewrconfUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SewrconfDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SewrconfVvar2', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SewrconfDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SewrconfErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SewrconfSiltdepth', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'SewrconfColebrook', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'SewrconfFinalvm', as 'Str', where { length($_) <= 14 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [14] char, not [$length] characters.~"  };
subtype 'SewrconfCatcharea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'SewrconfDvar2', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfVvar1', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfQvar3', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfQvar1', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfVvar3', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfDvar3', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfFinaldm', as 'Str', where { length($_) <= 14 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [14] char, not [$length] characters.~"  };
subtype 'SewrconfDbver12', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SewrconfTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SewrconfTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SewrconfCatchpop', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SewrconfMannings', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'SewrconfQvar2', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfDvar4', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfFinalqm', as 'Str', where { length($_) <= 14 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [14] char, not [$length] characters.~"  };
subtype 'SewrconfSiltdepthu', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrconfStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SewrconfCatchareau', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrconfDvar1', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfColebrooku', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrconfDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SewrconfQvar4', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrconfUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SewrconfVvar4', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };

 has 'sewrconf_usermod'  => ( is => 'rw', isa => 'SewrconfUsermod' ); 
 has 'sewrconf_date'  => ( is => 'rw', isa => 'SewrconfDate' ); 
 has 'sewrconf_vvar2'  => ( is => 'rw', isa => 'SewrconfVvar2' ); 
 has 'sewrconf_timemod'  => ( is => 'rw', isa => 'SewrconfTimemod' ); 
 has 'sewrconf_datemod'  => ( is => 'rw', isa => 'SewrconfDatemod' ); 
 has 'sewrconf_errstatus'  => ( is => 'rw', isa => 'SewrconfErrstatus' ); 
 has 'sewrconf_siltdepth'  => ( is => 'rw', isa => 'SewrconfSiltdepth' ); 
 has 'sewrconf_colebrook'  => ( is => 'rw', isa => 'SewrconfColebrook' ); 
 has 'sewrconf_finalvm'  => ( is => 'rw', isa => 'SewrconfFinalvm' ); 
 has 'sewrconf_catcharea'  => ( is => 'rw', isa => 'SewrconfCatcharea' ); 
 has 'sewrconf_dvar2'  => ( is => 'rw', isa => 'SewrconfDvar2' ); 
 has 'sewrconf_vvar1'  => ( is => 'rw', isa => 'SewrconfVvar1' ); 
 has 'sewrconf_qvar3'  => ( is => 'rw', isa => 'SewrconfQvar3' ); 
 has 'sewrconf_qvar1'  => ( is => 'rw', isa => 'SewrconfQvar1' ); 
 has 'sewrconf_vvar3'  => ( is => 'rw', isa => 'SewrconfVvar3' ); 
 has 'sewrconf_dvar3'  => ( is => 'rw', isa => 'SewrconfDvar3' ); 
 has 'sewrconf_finaldm'  => ( is => 'rw', isa => 'SewrconfFinaldm' ); 
 has 'sewrconf_dbver12'  => ( is => 'rw', isa => 'SewrconfDbver12' ); 
 has 'sewrconf_timecreate'  => ( is => 'rw', isa => 'SewrconfTimecreate' ); 
 has 'sewrconf_time'  => ( is => 'rw', isa => 'SewrconfTime' ); 
 has 'sewrconf_catchpop'  => ( is => 'rw', isa => 'SewrconfCatchpop' ); 
 has 'sewrconf_mannings'  => ( is => 'rw', isa => 'SewrconfMannings' ); 
 has 'sewrconf_qvar2'  => ( is => 'rw', isa => 'SewrconfQvar2' ); 
 has 'sewrconf_dvar4'  => ( is => 'rw', isa => 'SewrconfDvar4' ); 
 has 'sewrconf_finalqm'  => ( is => 'rw', isa => 'SewrconfFinalqm' ); 
 has 'sewrconf_siltdepthu'  => ( is => 'rw', isa => 'SewrconfSiltdepthu' ); 
 has 'sewrconf_station'  => ( is => 'rw', isa => 'SewrconfStation' ); 
 has 'sewrconf_catchareau'  => ( is => 'rw', isa => 'SewrconfCatchareau' ); 
 has 'sewrconf_dvar1'  => ( is => 'rw', isa => 'SewrconfDvar1' ); 
 has 'sewrconf_colebrooku'  => ( is => 'rw', isa => 'SewrconfColebrooku' ); 
 has 'sewrconf_datecreate'  => ( is => 'rw', isa => 'SewrconfDatecreate' ); 
 has 'sewrconf_qvar4'  => ( is => 'rw', isa => 'SewrconfQvar4' ); 
 has 'sewrconf_usercreate'  => ( is => 'rw', isa => 'SewrconfUsercreate' ); 
 has 'sewrconf_vvar4'  => ( is => 'rw', isa => 'SewrconfVvar4' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables sewrconf is a parent of.

=cut
  
sub keys{
  my @kys = qw( station date time );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables sewrconf is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables sewrconf is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station date time dvar1 dvar2 dvar3 dvar4 vvar1 vvar2 vvar3 vvar4 qvar1 qvar2 qvar3 qvar4 finaldm finalvm finalqm siltdepth siltdepthu mannings colebrook colebrooku catcharea catchareau catchpop errstatus dbver12 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SEWRCONF ( 'Station' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Dvar1' NUMERIC,  'Dvar2' NUMERIC,  'Dvar3' NUMERIC,  'Dvar4' NUMERIC,  'Vvar1' NUMERIC,  'Vvar2' NUMERIC,  'Vvar3' NUMERIC,  'Vvar4' NUMERIC,  'Qvar1' NUMERIC,  'Qvar2' NUMERIC,  'Qvar3' NUMERIC,  'Qvar4' NUMERIC,  'Finaldm' TEXT,  'Finalvm' TEXT,  'Finalqm' TEXT,  'Siltdepth' NUMERIC,  'Siltdepthu' TEXT,  'Mannings' NUMERIC,  'Colebrook' NUMERIC,  'Colebrooku' TEXT,  'Catcharea' NUMERIC,  'Catchareau' TEXT,  'Catchpop' NUMERIC,  'Errstatus' NUMERIC,  'Dbver12' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO SEWRCONF VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Sewrconf::Validation;
  use Moose;
  extends 'Hydstra::Sewrconf';

 has '+sewrconf_date' => ( required => 1, default => 18991231, ); 
 has '+sewrconf_time' => ( required => 1, default => 1200, ); 
 has '+sewrconf_station' => ( required => 1,  ); 

  
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

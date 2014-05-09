
{
package Hydstra::Wrehouse;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'WREHOUSE';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a wrehouse table 

=cut

subtype 'WrehouseAnaltime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'WrehouseDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseFlag', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'WrehouseCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseValue', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'WrehouseUplimit', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'WrehousePresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseLabsampref', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'WrehouseSamptype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'WrehouseLabref', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'WrehousePresmeth2', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseAccuracy', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'WrehousePresmeth3', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseSrcsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseCollsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'WrehouseBottle', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'WrehouseTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'WrehouseTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseRecdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseAnaldate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseMethod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'WrehouseQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'WrehouseSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'WrehouseStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'WrehouseProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseDbver21', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'WrehouseDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseProject2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehousePresmeth1', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseProject1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'WrehouseLolimit', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };

 has 'wrehouse_analtime'  => ( is => 'rw', isa => 'WrehouseAnaltime' ); 
 has 'wrehouse_usermod'  => ( is => 'rw', isa => 'WrehouseUsermod' ); 
 has 'wrehouse_date'  => ( is => 'rw', isa => 'WrehouseDate' ); 
 has 'wrehouse_flag'  => ( is => 'rw', isa => 'WrehouseFlag' ); 
 has 'wrehouse_timemod'  => ( is => 'rw', isa => 'WrehouseTimemod' ); 
 has 'wrehouse_datemod'  => ( is => 'rw', isa => 'WrehouseDatemod' ); 
 has 'wrehouse_rectime'  => ( is => 'rw', isa => 'WrehouseRectime' ); 
 has 'wrehouse_inputsrc'  => ( is => 'rw', isa => 'WrehouseInputsrc' ); 
 has 'wrehouse_collmeth'  => ( is => 'rw', isa => 'WrehouseCollmeth' ); 
 has 'wrehouse_value'  => ( is => 'rw', isa => 'WrehouseValue' ); 
 has 'wrehouse_uplimit'  => ( is => 'rw', isa => 'WrehouseUplimit' ); 
 has 'wrehouse_presmeth4'  => ( is => 'rw', isa => 'WrehousePresmeth4' ); 
 has 'wrehouse_labsampref'  => ( is => 'rw', isa => 'WrehouseLabsampref' ); 
 has 'wrehouse_samptype'  => ( is => 'rw', isa => 'WrehouseSamptype' ); 
 has 'wrehouse_labref'  => ( is => 'rw', isa => 'WrehouseLabref' ); 
 has 'wrehouse_presmeth2'  => ( is => 'rw', isa => 'WrehousePresmeth2' ); 
 has 'wrehouse_accuracy'  => ( is => 'rw', isa => 'WrehouseAccuracy' ); 
 has 'wrehouse_presmeth3'  => ( is => 'rw', isa => 'WrehousePresmeth3' ); 
 has 'wrehouse_srcsamp'  => ( is => 'rw', isa => 'WrehouseSrcsamp' ); 
 has 'wrehouse_collsamp'  => ( is => 'rw', isa => 'WrehouseCollsamp' ); 
 has 'wrehouse_variable'  => ( is => 'rw', isa => 'WrehouseVariable' ); 
 has 'wrehouse_bottle'  => ( is => 'rw', isa => 'WrehouseBottle' ); 
 has 'wrehouse_time'  => ( is => 'rw', isa => 'WrehouseTime' ); 
 has 'wrehouse_timecreate'  => ( is => 'rw', isa => 'WrehouseTimecreate' ); 
 has 'wrehouse_recdate'  => ( is => 'rw', isa => 'WrehouseRecdate' ); 
 has 'wrehouse_analdate'  => ( is => 'rw', isa => 'WrehouseAnaldate' ); 
 has 'wrehouse_project3'  => ( is => 'rw', isa => 'WrehouseProject3' ); 
 has 'wrehouse_method'  => ( is => 'rw', isa => 'WrehouseMethod' ); 
 has 'wrehouse_quality'  => ( is => 'rw', isa => 'WrehouseQuality' ); 
 has 'wrehouse_sampnum'  => ( is => 'rw', isa => 'WrehouseSampnum' ); 
 has 'wrehouse_station'  => ( is => 'rw', isa => 'WrehouseStation' ); 
 has 'wrehouse_project4'  => ( is => 'rw', isa => 'WrehouseProject4' ); 
 has 'wrehouse_dbver21'  => ( is => 'rw', isa => 'WrehouseDbver21' ); 
 has 'wrehouse_datecreate'  => ( is => 'rw', isa => 'WrehouseDatecreate' ); 
 has 'wrehouse_project2'  => ( is => 'rw', isa => 'WrehouseProject2' ); 
 has 'wrehouse_presmeth1'  => ( is => 'rw', isa => 'WrehousePresmeth1' ); 
 has 'wrehouse_project1'  => ( is => 'rw', isa => 'WrehouseProject1' ); 
 has 'wrehouse_usercreate'  => ( is => 'rw', isa => 'WrehouseUsercreate' ); 
 has 'wrehouse_lolimit'  => ( is => 'rw', isa => 'WrehouseLolimit' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub keys{
  my @kys = qw( station sampnum bottle date time variable );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables wrehouse is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station sampnum bottle samptype project1 project2 project3 project4 date time variable method accuracy value flag quality lolimit uplimit srcsamp collsamp collmeth presmeth1 presmeth2 presmeth3 presmeth4 labref labsampref recdate rectime inputsrc analdate analtime dbver21 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS WREHOUSE ( 'Station' TEXT,  'Sampnum' TEXT,  'Bottle' TEXT,  'Samptype' TEXT,  'Project1' TEXT,  'Project2' TEXT,  'Project3' TEXT,  'Project4' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Variable' NUMERIC,  'Method' TEXT,  'Accuracy' NUMERIC,  'Value' NUMERIC,  'Flag' TEXT,  'Quality' NUMERIC,  'Lolimit' NUMERIC,  'Uplimit' NUMERIC,  'Srcsamp' TEXT,  'Collsamp' TEXT,  'Collmeth' TEXT,  'Presmeth1' TEXT,  'Presmeth2' TEXT,  'Presmeth3' TEXT,  'Presmeth4' TEXT,  'Labref' TEXT,  'Labsampref' TEXT,  'Recdate' TEXT,  'Rectime' NUMERIC,  'Inputsrc' TEXT,  'Analdate' TEXT,  'Analtime' NUMERIC,  'Dbver21' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Sampnum, Bottle, Date, Time, Variable))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO WREHOUSE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Wrehouse::Validation;
  use Moose;
  extends 'Hydstra::Wrehouse';

 has '+wrehouse_date' => ( required => 1, default => 18991231, ); 
 has '+wrehouse_variable' => ( required => 1,  ); 
 has '+wrehouse_bottle' => ( required => 1, default => 1, ); 
 has '+wrehouse_time' => ( required => 1, default => 1200, ); 
 has '+wrehouse_sampnum' => ( required => 1,  ); 
 has '+wrehouse_station' => ( required => 1,  ); 

  
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
package Hydstra::Wrehouse;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'WREHOUSE';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a wrehouse table 

=cut

subtype 'WrehouseAnaltime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'WrehouseDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseFlag', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'WrehouseCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseValue', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'WrehouseUplimit', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'WrehousePresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseLabsampref', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'WrehouseSamptype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'WrehouseLabref', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'WrehousePresmeth2', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseAccuracy', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'WrehousePresmeth3', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseSrcsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseCollsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'WrehouseBottle', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'WrehouseTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'WrehouseTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseRecdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseAnaldate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseMethod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'WrehouseQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'WrehouseSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'WrehouseStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'WrehouseProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseDbver21', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'WrehouseDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseProject2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehousePresmeth1', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseProject1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'WrehouseLolimit', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };

 has 'wrehouse_analtime'  => ( is => 'rw', isa => 'WrehouseAnaltime' ); 
 has 'wrehouse_usermod'  => ( is => 'rw', isa => 'WrehouseUsermod' ); 
 has 'wrehouse_date'  => ( is => 'rw', isa => 'WrehouseDate' ); 
 has 'wrehouse_flag'  => ( is => 'rw', isa => 'WrehouseFlag' ); 
 has 'wrehouse_timemod'  => ( is => 'rw', isa => 'WrehouseTimemod' ); 
 has 'wrehouse_datemod'  => ( is => 'rw', isa => 'WrehouseDatemod' ); 
 has 'wrehouse_rectime'  => ( is => 'rw', isa => 'WrehouseRectime' ); 
 has 'wrehouse_inputsrc'  => ( is => 'rw', isa => 'WrehouseInputsrc' ); 
 has 'wrehouse_collmeth'  => ( is => 'rw', isa => 'WrehouseCollmeth' ); 
 has 'wrehouse_value'  => ( is => 'rw', isa => 'WrehouseValue' ); 
 has 'wrehouse_uplimit'  => ( is => 'rw', isa => 'WrehouseUplimit' ); 
 has 'wrehouse_presmeth4'  => ( is => 'rw', isa => 'WrehousePresmeth4' ); 
 has 'wrehouse_labsampref'  => ( is => 'rw', isa => 'WrehouseLabsampref' ); 
 has 'wrehouse_samptype'  => ( is => 'rw', isa => 'WrehouseSamptype' ); 
 has 'wrehouse_labref'  => ( is => 'rw', isa => 'WrehouseLabref' ); 
 has 'wrehouse_presmeth2'  => ( is => 'rw', isa => 'WrehousePresmeth2' ); 
 has 'wrehouse_accuracy'  => ( is => 'rw', isa => 'WrehouseAccuracy' ); 
 has 'wrehouse_presmeth3'  => ( is => 'rw', isa => 'WrehousePresmeth3' ); 
 has 'wrehouse_srcsamp'  => ( is => 'rw', isa => 'WrehouseSrcsamp' ); 
 has 'wrehouse_collsamp'  => ( is => 'rw', isa => 'WrehouseCollsamp' ); 
 has 'wrehouse_variable'  => ( is => 'rw', isa => 'WrehouseVariable' ); 
 has 'wrehouse_bottle'  => ( is => 'rw', isa => 'WrehouseBottle' ); 
 has 'wrehouse_time'  => ( is => 'rw', isa => 'WrehouseTime' ); 
 has 'wrehouse_timecreate'  => ( is => 'rw', isa => 'WrehouseTimecreate' ); 
 has 'wrehouse_recdate'  => ( is => 'rw', isa => 'WrehouseRecdate' ); 
 has 'wrehouse_analdate'  => ( is => 'rw', isa => 'WrehouseAnaldate' ); 
 has 'wrehouse_project3'  => ( is => 'rw', isa => 'WrehouseProject3' ); 
 has 'wrehouse_method'  => ( is => 'rw', isa => 'WrehouseMethod' ); 
 has 'wrehouse_quality'  => ( is => 'rw', isa => 'WrehouseQuality' ); 
 has 'wrehouse_sampnum'  => ( is => 'rw', isa => 'WrehouseSampnum' ); 
 has 'wrehouse_station'  => ( is => 'rw', isa => 'WrehouseStation' ); 
 has 'wrehouse_project4'  => ( is => 'rw', isa => 'WrehouseProject4' ); 
 has 'wrehouse_dbver21'  => ( is => 'rw', isa => 'WrehouseDbver21' ); 
 has 'wrehouse_datecreate'  => ( is => 'rw', isa => 'WrehouseDatecreate' ); 
 has 'wrehouse_project2'  => ( is => 'rw', isa => 'WrehouseProject2' ); 
 has 'wrehouse_presmeth1'  => ( is => 'rw', isa => 'WrehousePresmeth1' ); 
 has 'wrehouse_project1'  => ( is => 'rw', isa => 'WrehouseProject1' ); 
 has 'wrehouse_usercreate'  => ( is => 'rw', isa => 'WrehouseUsercreate' ); 
 has 'wrehouse_lolimit'  => ( is => 'rw', isa => 'WrehouseLolimit' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub keys{
  my @kys = qw( station sampnum bottle date time variable );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables wrehouse is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station sampnum bottle samptype project1 project2 project3 project4 date time variable method accuracy value flag quality lolimit uplimit srcsamp collsamp collmeth presmeth1 presmeth2 presmeth3 presmeth4 labref labsampref recdate rectime inputsrc analdate analtime dbver21 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS WREHOUSE ( 'Station' TEXT,  'Sampnum' TEXT,  'Bottle' TEXT,  'Samptype' TEXT,  'Project1' TEXT,  'Project2' TEXT,  'Project3' TEXT,  'Project4' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Variable' NUMERIC,  'Method' TEXT,  'Accuracy' NUMERIC,  'Value' NUMERIC,  'Flag' TEXT,  'Quality' NUMERIC,  'Lolimit' NUMERIC,  'Uplimit' NUMERIC,  'Srcsamp' TEXT,  'Collsamp' TEXT,  'Collmeth' TEXT,  'Presmeth1' TEXT,  'Presmeth2' TEXT,  'Presmeth3' TEXT,  'Presmeth4' TEXT,  'Labref' TEXT,  'Labsampref' TEXT,  'Recdate' TEXT,  'Rectime' NUMERIC,  'Inputsrc' TEXT,  'Analdate' TEXT,  'Analtime' NUMERIC,  'Dbver21' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Sampnum, Bottle, Date, Time, Variable))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO WREHOUSE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|endtime|enddate|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Wrehouse::Validation;
  use Moose;
  extends 'Hydstra::Wrehouse';

 has '+wrehouse_date' => ( required => 1, default => 18991231, ); 
 has '+wrehouse_variable' => ( required => 1,  ); 
 has '+wrehouse_bottle' => ( required => 1, default => 1, ); 
 has '+wrehouse_time' => ( required => 1, default => 1200, ); 
 has '+wrehouse_sampnum' => ( required => 1,  ); 
 has '+wrehouse_station' => ( required => 1,  ); 

  
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
package Hydstra::Wrehouse;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'WREHOUSE';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a wrehouse table 

=cut

subtype 'WrehouseAnaltime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'WrehouseDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseFlag', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'WrehouseCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseValue', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'WrehouseUplimit', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'WrehousePresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseLabsampref', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'WrehouseSamptype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'WrehouseLabref', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'WrehousePresmeth2', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseAccuracy', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'WrehousePresmeth3', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseSrcsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseCollsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'WrehouseBottle', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'WrehouseTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'WrehouseTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'WrehouseRecdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseAnaldate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseMethod', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'WrehouseQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'WrehouseSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'WrehouseStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'WrehouseProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseDbver21', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'WrehouseDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'WrehouseProject2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehousePresmeth1', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'WrehouseProject1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'WrehouseUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'WrehouseLolimit', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };

 has 'wrehouse_analtime'  => ( is => 'rw', isa => 'WrehouseAnaltime' ); 
 has 'wrehouse_usermod'  => ( is => 'rw', isa => 'WrehouseUsermod' ); 
 has 'wrehouse_date'  => ( is => 'rw', isa => 'WrehouseDate' ); 
 has 'wrehouse_flag'  => ( is => 'rw', isa => 'WrehouseFlag' ); 
 has 'wrehouse_timemod'  => ( is => 'rw', isa => 'WrehouseTimemod' ); 
 has 'wrehouse_datemod'  => ( is => 'rw', isa => 'WrehouseDatemod' ); 
 has 'wrehouse_rectime'  => ( is => 'rw', isa => 'WrehouseRectime' ); 
 has 'wrehouse_inputsrc'  => ( is => 'rw', isa => 'WrehouseInputsrc' ); 
 has 'wrehouse_collmeth'  => ( is => 'rw', isa => 'WrehouseCollmeth' ); 
 has 'wrehouse_value'  => ( is => 'rw', isa => 'WrehouseValue' ); 
 has 'wrehouse_uplimit'  => ( is => 'rw', isa => 'WrehouseUplimit' ); 
 has 'wrehouse_presmeth4'  => ( is => 'rw', isa => 'WrehousePresmeth4' ); 
 has 'wrehouse_labsampref'  => ( is => 'rw', isa => 'WrehouseLabsampref' ); 
 has 'wrehouse_samptype'  => ( is => 'rw', isa => 'WrehouseSamptype' ); 
 has 'wrehouse_labref'  => ( is => 'rw', isa => 'WrehouseLabref' ); 
 has 'wrehouse_presmeth2'  => ( is => 'rw', isa => 'WrehousePresmeth2' ); 
 has 'wrehouse_accuracy'  => ( is => 'rw', isa => 'WrehouseAccuracy' ); 
 has 'wrehouse_presmeth3'  => ( is => 'rw', isa => 'WrehousePresmeth3' ); 
 has 'wrehouse_srcsamp'  => ( is => 'rw', isa => 'WrehouseSrcsamp' ); 
 has 'wrehouse_collsamp'  => ( is => 'rw', isa => 'WrehouseCollsamp' ); 
 has 'wrehouse_variable'  => ( is => 'rw', isa => 'WrehouseVariable' ); 
 has 'wrehouse_bottle'  => ( is => 'rw', isa => 'WrehouseBottle' ); 
 has 'wrehouse_time'  => ( is => 'rw', isa => 'WrehouseTime' ); 
 has 'wrehouse_timecreate'  => ( is => 'rw', isa => 'WrehouseTimecreate' ); 
 has 'wrehouse_recdate'  => ( is => 'rw', isa => 'WrehouseRecdate' ); 
 has 'wrehouse_analdate'  => ( is => 'rw', isa => 'WrehouseAnaldate' ); 
 has 'wrehouse_project3'  => ( is => 'rw', isa => 'WrehouseProject3' ); 
 has 'wrehouse_method'  => ( is => 'rw', isa => 'WrehouseMethod' ); 
 has 'wrehouse_quality'  => ( is => 'rw', isa => 'WrehouseQuality' ); 
 has 'wrehouse_sampnum'  => ( is => 'rw', isa => 'WrehouseSampnum' ); 
 has 'wrehouse_station'  => ( is => 'rw', isa => 'WrehouseStation' ); 
 has 'wrehouse_project4'  => ( is => 'rw', isa => 'WrehouseProject4' ); 
 has 'wrehouse_dbver21'  => ( is => 'rw', isa => 'WrehouseDbver21' ); 
 has 'wrehouse_datecreate'  => ( is => 'rw', isa => 'WrehouseDatecreate' ); 
 has 'wrehouse_project2'  => ( is => 'rw', isa => 'WrehouseProject2' ); 
 has 'wrehouse_presmeth1'  => ( is => 'rw', isa => 'WrehousePresmeth1' ); 
 has 'wrehouse_project1'  => ( is => 'rw', isa => 'WrehouseProject1' ); 
 has 'wrehouse_usercreate'  => ( is => 'rw', isa => 'WrehouseUsercreate' ); 
 has 'wrehouse_lolimit'  => ( is => 'rw', isa => 'WrehouseLolimit' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub keys{
  my @kys = qw( station sampnum bottle date time variable );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables wrehouse is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station sampnum bottle samptype project1 project2 project3 project4 date time variable method accuracy value flag quality lolimit uplimit srcsamp collsamp collmeth presmeth1 presmeth2 presmeth3 presmeth4 labref labsampref recdate rectime inputsrc analdate analtime dbver21 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS WREHOUSE ( 'Station' TEXT,  'Sampnum' TEXT,  'Bottle' TEXT,  'Samptype' TEXT,  'Project1' TEXT,  'Project2' TEXT,  'Project3' TEXT,  'Project4' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Variable' NUMERIC,  'Method' TEXT,  'Accuracy' NUMERIC,  'Value' NUMERIC,  'Flag' TEXT,  'Quality' NUMERIC,  'Lolimit' NUMERIC,  'Uplimit' NUMERIC,  'Srcsamp' TEXT,  'Collsamp' TEXT,  'Collmeth' TEXT,  'Presmeth1' TEXT,  'Presmeth2' TEXT,  'Presmeth3' TEXT,  'Presmeth4' TEXT,  'Labref' TEXT,  'Labsampref' TEXT,  'Recdate' TEXT,  'Rectime' NUMERIC,  'Inputsrc' TEXT,  'Analdate' TEXT,  'Analtime' NUMERIC,  'Dbver21' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Sampnum, Bottle, Date, Time, Variable))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO WREHOUSE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Wrehouse::Validation;
  use Moose;
  extends 'Hydstra::Wrehouse';

 has '+wrehouse_date' => ( required => 1, default => 18991231, ); 
 has '+wrehouse_variable' => ( required => 1,  ); 
 has '+wrehouse_bottle' => ( required => 1, default => 1, ); 
 has '+wrehouse_time' => ( required => 1, default => 1200, ); 
 has '+wrehouse_sampnum' => ( required => 1,  ); 
 has '+wrehouse_station' => ( required => 1,  ); 

  
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

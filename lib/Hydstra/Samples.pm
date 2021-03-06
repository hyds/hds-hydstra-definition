
{
package Hydstra::Samples;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SAMPLES';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( results );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a samples table 

=cut

subtype 'SamplesAnaltime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'SamplesSpare3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesLabsampref', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SamplesLabref', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesSamptype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth2', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth3', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesSrcsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBottle', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SamplesCollsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SamplesTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesErrgroup', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRecdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SamplesAnaldate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SamplesDbver20', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesProject2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth1', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'samples_analtime'  => ( is => 'rw', isa => 'SamplesAnaltime' ); 
 has 'samples_usermod'  => ( is => 'rw', isa => 'SamplesUsermod' ); 
 has 'samples_date'  => ( is => 'rw', isa => 'SamplesDate' ); 
 has 'samples_timemod'  => ( is => 'rw', isa => 'SamplesTimemod' ); 
 has 'samples_datemod'  => ( is => 'rw', isa => 'SamplesDatemod' ); 
 has 'samples_errstatus'  => ( is => 'rw', isa => 'SamplesErrstatus' ); 
 has 'samples_rectime'  => ( is => 'rw', isa => 'SamplesRectime' ); 
 has 'samples_enteredby'  => ( is => 'rw', isa => 'SamplesEnteredby' ); 
 has 'samples_inputsrc'  => ( is => 'rw', isa => 'SamplesInputsrc' ); 
 has 'samples_collmeth'  => ( is => 'rw', isa => 'SamplesCollmeth' ); 
 has 'samples_presmeth4'  => ( is => 'rw', isa => 'SamplesPresmeth4' ); 
 has 'samples_barcode'  => ( is => 'rw', isa => 'SamplesBarcode' ); 
 has 'samples_commnt'  => ( is => 'rw', isa => 'SamplesCommnt' ); 
 has 'samples_spare3'  => ( is => 'rw', isa => 'SamplesSpare3' ); 
 has 'samples_labsampref'  => ( is => 'rw', isa => 'SamplesLabsampref' ); 
 has 'samples_labref'  => ( is => 'rw', isa => 'SamplesLabref' ); 
 has 'samples_samptype'  => ( is => 'rw', isa => 'SamplesSamptype' ); 
 has 'samples_presmeth2'  => ( is => 'rw', isa => 'SamplesPresmeth2' ); 
 has 'samples_presmeth3'  => ( is => 'rw', isa => 'SamplesPresmeth3' ); 
 has 'samples_srcsamp'  => ( is => 'rw', isa => 'SamplesSrcsamp' ); 
 has 'samples_bottle'  => ( is => 'rw', isa => 'SamplesBottle' ); 
 has 'samples_collsamp'  => ( is => 'rw', isa => 'SamplesCollsamp' ); 
 has 'samples_time'  => ( is => 'rw', isa => 'SamplesTime' ); 
 has 'samples_timecreate'  => ( is => 'rw', isa => 'SamplesTimecreate' ); 
 has 'samples_errgroup'  => ( is => 'rw', isa => 'SamplesErrgroup' ); 
 has 'samples_recdate'  => ( is => 'rw', isa => 'SamplesRecdate' ); 
 has 'samples_analdate'  => ( is => 'rw', isa => 'SamplesAnaldate' ); 
 has 'samples_project3'  => ( is => 'rw', isa => 'SamplesProject3' ); 
 has 'samples_spare2'  => ( is => 'rw', isa => 'SamplesSpare2' ); 
 has 'samples_spare1'  => ( is => 'rw', isa => 'SamplesSpare1' ); 
 has 'samples_sampnum'  => ( is => 'rw', isa => 'SamplesSampnum' ); 
 has 'samples_project4'  => ( is => 'rw', isa => 'SamplesProject4' ); 
 has 'samples_station'  => ( is => 'rw', isa => 'SamplesStation' ); 
 has 'samples_datecreate'  => ( is => 'rw', isa => 'SamplesDatecreate' ); 
 has 'samples_dbver20'  => ( is => 'rw', isa => 'SamplesDbver20' ); 
 has 'samples_project2'  => ( is => 'rw', isa => 'SamplesProject2' ); 
 has 'samples_presmeth1'  => ( is => 'rw', isa => 'SamplesPresmeth1' ); 
 has 'samples_checkedby'  => ( is => 'rw', isa => 'SamplesCheckedby' ); 
 has 'samples_project1'  => ( is => 'rw', isa => 'SamplesProject1' ); 
 has 'samples_usercreate'  => ( is => 'rw', isa => 'SamplesUsercreate' ); 


=head1 SUBROUTINES/METHODS


=head2 variable()
  
  If the table has a variable column return the column number, and indicate whether or not it is a combined variable.
  There are many different options for a variable field. For examples:
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

  
  my %var = ( 
    'variables'=>0
  );
  
  return \%var;
}



=head2 keys()
  
  Find out what tables samples is a parent of.

=cut
  
sub keys{
  my @kys = qw( station sampnum bottle );
  return \@kys;
}

=head2 mergify_keys()
  
  Return keys used for mergification

=cut
  
sub mergify_keys{
  my @kys = qw( station sampnum bottle samptype project1 date time srcsamp collsamp collmeth presmeth1 barcode labref labsampref recdate rectime inputsrc analdate analtime enteredby checkedby commnt spare1 spare2 spare3);
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables samples is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables samples is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station sampnum bottle samptype project1 project2 project3 project4 date time srcsamp collsamp collmeth presmeth1 presmeth2 presmeth3 presmeth4 barcode labref labsampref recdate rectime inputsrc analdate analtime enteredby checkedby commnt errstatus errgroup spare1 spare2 spare3 dbver20 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( 'Station' TEXT,  'Sampnum' TEXT,  'Bottle' TEXT,  'Samptype' TEXT,  'Project1' TEXT,  'Project2' TEXT,  'Project3' TEXT,  'Project4' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Srcsamp' TEXT,  'Collsamp' TEXT,  'Collmeth' TEXT,  'Presmeth1' TEXT,  'Presmeth2' TEXT,  'Presmeth3' TEXT,  'Presmeth4' TEXT,  'Barcode' TEXT,  'Labref' TEXT,  'Labsampref' TEXT,  'Recdate' TEXT,  'Rectime' NUMERIC,  'Inputsrc' TEXT,  'Analdate' TEXT,  'Analtime' NUMERIC,  'Enteredby' TEXT,  'Checkedby' TEXT,  'Commnt' TEXT,  'Errstatus' NUMERIC,  'Errgroup' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver20' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Sampnum, Bottle))";
  return $sql_statement;
}

=head2 mergify_create()
  
  SQL statement to create table in SQLite db for mergification

=cut
  
sub mergify_create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( 'Station' TEXT,  'Sampnum' TEXT,  'Bottle' TEXT,  'Samptype' TEXT,  'Project1' TEXT,  'Project2' TEXT,  'Project3' TEXT,  'Project4' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Srcsamp' TEXT,  'Collsamp' TEXT,  'Collmeth' TEXT,  'Presmeth1' TEXT,  'Presmeth2' TEXT,  'Presmeth3' TEXT,  'Presmeth4' TEXT,  'Barcode' TEXT,  'Labref' TEXT,  'Labsampref' TEXT,  'Recdate' TEXT,  'Rectime' NUMERIC,  'Inputsrc' TEXT,  'Analdate' TEXT,  'Analtime' NUMERIC,  'Enteredby' TEXT,  'Checkedby' TEXT,  'Commnt' TEXT,  'Errstatus' NUMERIC,  'Errgroup' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver20' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (station, sampnum, bottle, samptype, project1, date, time, srcsamp, collsamp, collmeth, presmeth1, barcode, labref, labsampref, recdate, rectime, inputsrc, analdate, analtime, enteredby, checkedby, commnt, spare1, spare2, spare3))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Hydstra::Samples';

 has '+samples_date' => (  default => 18991231, ); 
 has '+samples_bottle' => ( required => 1, default => 1, ); 
 has '+samples_time' => (  default => 1200, ); 
 has '+samples_sampnum' => ( required => 1,  ); 
 has '+samples_station' => ( required => 1,  ); 

  
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

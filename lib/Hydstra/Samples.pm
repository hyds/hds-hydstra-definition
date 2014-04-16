
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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Analtime NUMERIC,  Usermod TEXT,  Date TEXT,  Timemod NUMERIC,  Datemod TEXT,  Errstatus NUMERIC,  Rectime NUMERIC,  Enteredby TEXT,  Inputsrc TEXT,  Collmeth TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Commnt TEXT,  Spare3 TEXT,  Labsampref TEXT,  Labref TEXT,  Samptype TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Srcsamp TEXT,  Bottle TEXT,  Collsamp TEXT,  Time NUMERIC,  Timecreate NUMERIC,  Errgroup NUMERIC,  Recdate TEXT,  Analdate TEXT,  Project3 TEXT,  Spare2 TEXT,  Spare1 TEXT,  Sampnum TEXT,  Project4 TEXT,  Station TEXT,  Datecreate TEXT,  Dbver20 NUMERIC,  Project2 TEXT,  Presmeth1 TEXT,  Checkedby TEXT,  Project1 TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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
Field [analtime]false
Field [usermod]false
Field [date]false
Field [timemod]false
Field [datemod]false
Field [errstatus]false
Field [rectime]false
Field [enteredby]false
Field [inputsrc]false
Field [collmeth]false
Field [presmeth4]false
Field [barcode]false
Field [commnt]false
Field [spare3]false
Field [labsampref]false
Field [labref]false
Field [samptype]false
Field [presmeth2]false
Field [presmeth3]false
Field [srcsamp]false
Field [bottle]true
Field [collsamp]false
Field [time]false
Field [timecreate]false
Field [errgroup]false
Field [recdate]false
Field [analdate]false
Field [project3]false
Field [spare2]false
Field [spare1]false
Field [sampnum]true
Field [project4]false
Field [station]true
Field [datecreate]false
Field [dbver20]false
Field [project2]false
Field [presmeth1]false
Field [checkedby]false
Field [project1]false
Field [usercreate]false


=head1 SUBROUTINES/METHODS

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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Analtime NUMERIC,  Usermod TEXT,  Date TEXT,  Timemod NUMERIC,  Datemod TEXT,  Errstatus NUMERIC,  Rectime NUMERIC,  Enteredby TEXT,  Inputsrc TEXT,  Collmeth TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Commnt TEXT,  Spare3 TEXT,  Labsampref TEXT,  Labref TEXT,  Samptype TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Srcsamp TEXT,  Bottle TEXT,  Collsamp TEXT,  Time NUMERIC,  Timecreate NUMERIC,  Errgroup NUMERIC,  Recdate TEXT,  Analdate TEXT,  Project3 TEXT,  Spare2 TEXT,  Spare1 TEXT,  Sampnum TEXT,  Project4 TEXT,  Station TEXT,  Datecreate TEXT,  Dbver20 NUMERIC,  Project2 TEXT,  Presmeth1 TEXT,  Checkedby TEXT,  Project1 TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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
Field [analtime] key value [false]
Field [usermod] key value [false]
Field [date] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [errstatus] key value [false]
Field [rectime] key value [false]
Field [enteredby] key value [false]
Field [inputsrc] key value [false]
Field [collmeth] key value [false]
Field [presmeth4] key value [false]
Field [barcode] key value [false]
Field [commnt] key value [false]
Field [spare3] key value [false]
Field [labsampref] key value [false]
Field [labref] key value [false]
Field [samptype] key value [false]
Field [presmeth2] key value [false]
Field [presmeth3] key value [false]
Field [srcsamp] key value [false]
Field [bottle] key value [true]
Field [collsamp] key value [false]
Field [time] key value [false]
Field [timecreate] key value [false]
Field [errgroup] key value [false]
Field [recdate] key value [false]
Field [analdate] key value [false]
Field [project3] key value [false]
Field [spare2] key value [false]
Field [spare1] key value [false]
Field [sampnum] key value [true]
Field [project4] key value [false]
Field [station] key value [true]
Field [datecreate] key value [false]
Field [dbver20] key value [false]
Field [project2] key value [false]
Field [presmeth1] key value [false]
Field [checkedby] key value [false]
Field [project1] key value [false]
Field [usercreate] key value [false]


=head1 SUBROUTINES/METHODS

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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Analtime NUMERIC,  Usermod TEXT,  Date TEXT,  Timemod NUMERIC,  Datemod TEXT,  Errstatus NUMERIC,  Rectime NUMERIC,  Enteredby TEXT,  Inputsrc TEXT,  Collmeth TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Commnt TEXT,  Spare3 TEXT,  Labsampref TEXT,  Labref TEXT,  Samptype TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Srcsamp TEXT,  Bottle TEXT,  Collsamp TEXT,  Time NUMERIC,  Timecreate NUMERIC,  Errgroup NUMERIC,  Recdate TEXT,  Analdate TEXT,  Project3 TEXT,  Spare2 TEXT,  Spare1 TEXT,  Sampnum TEXT,  Project4 TEXT,  Station TEXT,  Datecreate TEXT,  Dbver20 NUMERIC,  Project2 TEXT,  Presmeth1 TEXT,  Checkedby TEXT,  Project1 TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Analtime NUMERIC,  Usermod TEXT,  Date TEXT,  Timemod NUMERIC,  Datemod TEXT,  Errstatus NUMERIC,  Rectime NUMERIC,  Enteredby TEXT,  Inputsrc TEXT,  Collmeth TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Commnt TEXT,  Spare3 TEXT,  Labsampref TEXT,  Labref TEXT,  Samptype TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Srcsamp TEXT,  Bottle TEXT,  Collsamp TEXT,  Time NUMERIC,  Timecreate NUMERIC,  Errgroup NUMERIC,  Recdate TEXT,  Analdate TEXT,  Project3 TEXT,  Spare2 TEXT,  Spare1 TEXT,  Sampnum TEXT,  Project4 TEXT,  Station TEXT,  Datecreate TEXT,  Dbver20 NUMERIC,  Project2 TEXT,  Presmeth1 TEXT,  Checkedby TEXT,  Project1 TEXT,  Usercreate TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Analtime NUMERIC,  Usermod TEXT,  Date TEXT,  Timemod NUMERIC,  Datemod TEXT,  Errstatus NUMERIC,  Rectime NUMERIC,  Enteredby TEXT,  Inputsrc TEXT,  Collmeth TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Commnt TEXT,  Spare3 TEXT,  Labsampref TEXT,  Labref TEXT,  Samptype TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Srcsamp TEXT,  Bottle TEXT,  Collsamp TEXT,  Time NUMERIC,  Timecreate NUMERIC,  Errgroup NUMERIC,  Recdate TEXT,  Analdate TEXT,  Project3 TEXT,  Spare2 TEXT,  Spare1 TEXT,  Sampnum TEXT,  Project4 TEXT,  Station TEXT,  Datecreate TEXT,  Dbver20 NUMERIC,  Project2 TEXT,  Presmeth1 TEXT,  Checkedby TEXT,  Project1 TEXT,  Usercreate TEXT, PRIMARY KEY (Bottle, Sampnum, Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesDbver20', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesProject2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth1', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);
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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Placeholder ,  Station TEXT,  Sampnum TEXT,  Bottle TEXT,  Samptype TEXT,  Project1 TEXT,  Project2 TEXT,  Project3 TEXT,  Project4 TEXT,  Date TEXT,  Time NUMERIC,  Srcsamp TEXT,  Collsamp TEXT,  Collmeth TEXT,  Presmeth1 TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Labref TEXT,  Labsampref TEXT,  Recdate TEXT,  Rectime NUMERIC,  Inputsrc TEXT,  Analdate TEXT,  Analtime NUMERIC,  Enteredby TEXT,  Checkedby TEXT,  Commnt TEXT,  Errstatus NUMERIC,  Errgroup NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver20 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Sampnum, Bottle))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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
subtype 'SamplesDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesErrstatus', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SamplesRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SamplesEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SamplesCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SamplesBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
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
subtype 'SamplesRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SamplesProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SamplesProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SamplesStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SamplesDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
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

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPLES ( Station TEXT,  Sampnum TEXT,  Bottle TEXT,  Samptype TEXT,  Project1 TEXT,  Project2 TEXT,  Project3 TEXT,  Project4 TEXT,  Date TEXT,  Time NUMERIC,  Srcsamp TEXT,  Collsamp TEXT,  Collmeth TEXT,  Presmeth1 TEXT,  Presmeth2 TEXT,  Presmeth3 TEXT,  Presmeth4 TEXT,  Barcode TEXT,  Labref TEXT,  Labsampref TEXT,  Recdate TEXT,  Rectime NUMERIC,  Inputsrc TEXT,  Analdate TEXT,  Analtime NUMERIC,  Enteredby TEXT,  Checkedby TEXT,  Commnt TEXT,  Errstatus NUMERIC,  Errgroup NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver20 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Sampnum, Bottle))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPLES VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Samples::Validation;
  use Moose;
  extends 'Samples';

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

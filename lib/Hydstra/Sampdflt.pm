
{
package Hydstra::Sampdflt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SAMPDFLT';

  

use constant PARENT_OF => qw( resdflt sampextr );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a sampdflt table 

=cut

subtype 'SampdfltAnaltime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SampdfltUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SampdfltDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltNumscheme', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SampdfltRectime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SampdfltEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltPreprocess', as 'Str', where { length($_) <= 40 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [40] char, not [$length] characters.~"  };
subtype 'SampdfltInputsrc', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SampdfltCollmeth', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltPresmeth4', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltName', as 'Str', where { length($_) <= 40 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [40] char, not [$length] characters.~"  };
subtype 'SampdfltBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SampdfltCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltSpare3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltLabsampref', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SampdfltSamptype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SampdfltLabref', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SampdfltPresmeth2', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltPresmeth3', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltSrcsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltBottle', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SampdfltCollsamp', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltTime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SampdfltTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SampdfltRecdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltAnaldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltProject3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltSampnum', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'SampdfltProject4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SampdfltDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltDbver20', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SampdfltProject2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltPresmeth1', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SampdfltCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltFileformat', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'SampdfltProject1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SampdfltUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SampdfltRecvalid', as 'Str', where { length($_) <= 40 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [40] char, not [$length] characters.~"  };

 has 'sampdflt_analtime'  => ( is => 'rw', isa => 'SampdfltAnaltime' ); 
 has 'sampdflt_usermod'  => ( is => 'rw', isa => 'SampdfltUsermod' ); 
 has 'sampdflt_date'  => ( is => 'rw', isa => 'SampdfltDate' ); 
 has 'sampdflt_timemod'  => ( is => 'rw', isa => 'SampdfltTimemod' ); 
 has 'sampdflt_datemod'  => ( is => 'rw', isa => 'SampdfltDatemod' ); 
 has 'sampdflt_numscheme'  => ( is => 'rw', isa => 'SampdfltNumscheme' ); 
 has 'sampdflt_rectime'  => ( is => 'rw', isa => 'SampdfltRectime' ); 
 has 'sampdflt_enteredby'  => ( is => 'rw', isa => 'SampdfltEnteredby' ); 
 has 'sampdflt_preprocess'  => ( is => 'rw', isa => 'SampdfltPreprocess' ); 
 has 'sampdflt_inputsrc'  => ( is => 'rw', isa => 'SampdfltInputsrc' ); 
 has 'sampdflt_collmeth'  => ( is => 'rw', isa => 'SampdfltCollmeth' ); 
 has 'sampdflt_presmeth4'  => ( is => 'rw', isa => 'SampdfltPresmeth4' ); 
 has 'sampdflt_name'  => ( is => 'rw', isa => 'SampdfltName' ); 
 has 'sampdflt_barcode'  => ( is => 'rw', isa => 'SampdfltBarcode' ); 
 has 'sampdflt_commnt'  => ( is => 'rw', isa => 'SampdfltCommnt' ); 
 has 'sampdflt_spare3'  => ( is => 'rw', isa => 'SampdfltSpare3' ); 
 has 'sampdflt_labsampref'  => ( is => 'rw', isa => 'SampdfltLabsampref' ); 
 has 'sampdflt_samptype'  => ( is => 'rw', isa => 'SampdfltSamptype' ); 
 has 'sampdflt_labref'  => ( is => 'rw', isa => 'SampdfltLabref' ); 
 has 'sampdflt_presmeth2'  => ( is => 'rw', isa => 'SampdfltPresmeth2' ); 
 has 'sampdflt_presmeth3'  => ( is => 'rw', isa => 'SampdfltPresmeth3' ); 
 has 'sampdflt_srcsamp'  => ( is => 'rw', isa => 'SampdfltSrcsamp' ); 
 has 'sampdflt_bottle'  => ( is => 'rw', isa => 'SampdfltBottle' ); 
 has 'sampdflt_collsamp'  => ( is => 'rw', isa => 'SampdfltCollsamp' ); 
 has 'sampdflt_time'  => ( is => 'rw', isa => 'SampdfltTime' ); 
 has 'sampdflt_timecreate'  => ( is => 'rw', isa => 'SampdfltTimecreate' ); 
 has 'sampdflt_recdate'  => ( is => 'rw', isa => 'SampdfltRecdate' ); 
 has 'sampdflt_analdate'  => ( is => 'rw', isa => 'SampdfltAnaldate' ); 
 has 'sampdflt_project3'  => ( is => 'rw', isa => 'SampdfltProject3' ); 
 has 'sampdflt_spare2'  => ( is => 'rw', isa => 'SampdfltSpare2' ); 
 has 'sampdflt_spare1'  => ( is => 'rw', isa => 'SampdfltSpare1' ); 
 has 'sampdflt_sampnum'  => ( is => 'rw', isa => 'SampdfltSampnum' ); 
 has 'sampdflt_project4'  => ( is => 'rw', isa => 'SampdfltProject4' ); 
 has 'sampdflt_station'  => ( is => 'rw', isa => 'SampdfltStation' ); 
 has 'sampdflt_datecreate'  => ( is => 'rw', isa => 'SampdfltDatecreate' ); 
 has 'sampdflt_dbver20'  => ( is => 'rw', isa => 'SampdfltDbver20' ); 
 has 'sampdflt_project2'  => ( is => 'rw', isa => 'SampdfltProject2' ); 
 has 'sampdflt_presmeth1'  => ( is => 'rw', isa => 'SampdfltPresmeth1' ); 
 has 'sampdflt_checkedby'  => ( is => 'rw', isa => 'SampdfltCheckedby' ); 
 has 'sampdflt_fileformat'  => ( is => 'rw', isa => 'SampdfltFileformat' ); 
 has 'sampdflt_project1'  => ( is => 'rw', isa => 'SampdfltProject1' ); 
 has 'sampdflt_usercreate'  => ( is => 'rw', isa => 'SampdfltUsercreate' ); 
 has 'sampdflt_recvalid'  => ( is => 'rw', isa => 'SampdfltRecvalid' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables sampdflt is a parent of.

=cut
  
sub keys{
  my @kys = qw( fileformat );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables sampdflt is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables sampdflt is a child of.

=cut
  
sub child_of{
  return 0;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( fileformat name numscheme preprocess recvalid station sampnum bottle samptype project1 project2 project3 project4 date time srcsamp collsamp collmeth presmeth1 presmeth2 presmeth3 presmeth4 barcode labref labsampref recdate rectime inputsrc analdate analtime enteredby checkedby commnt spare1 spare2 spare3 dbver20 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SAMPDFLT ( 'Fileformat' TEXT,  'Name' TEXT,  'Numscheme' TEXT,  'Preprocess' TEXT,  'Recvalid' TEXT,  'Station' TEXT,  'Sampnum' TEXT,  'Bottle' TEXT,  'Samptype' TEXT,  'Project1' TEXT,  'Project2' TEXT,  'Project3' TEXT,  'Project4' TEXT,  'Date' TEXT,  'Time' NUMERIC,  'Srcsamp' TEXT,  'Collsamp' TEXT,  'Collmeth' TEXT,  'Presmeth1' TEXT,  'Presmeth2' TEXT,  'Presmeth3' TEXT,  'Presmeth4' TEXT,  'Barcode' TEXT,  'Labref' TEXT,  'Labsampref' TEXT,  'Recdate' TEXT,  'Rectime' NUMERIC,  'Inputsrc' TEXT,  'Analdate' TEXT,  'Analtime' NUMERIC,  'Enteredby' TEXT,  'Checkedby' TEXT,  'Commnt' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver20' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Fileformat))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SAMPDFLT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Sampdflt::Validation;
  use Moose;
  extends 'Hydstra::Sampdflt';

 has '+sampdflt_date' => (  default => 18991231, ); 
 has '+sampdflt_bottle' => (  default => 1, ); 
 has '+sampdflt_time' => (  default => 1200, ); 
 has '+sampdflt_fileformat' => ( required => 1,  ); 

  
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

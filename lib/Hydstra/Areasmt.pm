
{
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Usermod TEXT,  Boreowner TEXT,  Date TEXT,  Fieldcom TEXT,  Timemod NUMERIC,  Datemod TEXT,  Wlmeasflag NUMERIC,  Certifier TEXT,  Hisfldflag NUMERIC,  Gasmeth TEXT,  Tenurecont TEXT,  Resflag NUMERIC,  Rescom TEXT,  Gascom TEXT,  Assesstype TEXT,  Dbver1 NUMERIC,  Gasflag NUMERIC,  Assofficer TEXT,  Timecreate NUMERIC,  Pumpflag NUMERIC,  Purgeflag NUMERIC,  Fieldflag NUMERIC,  Sigfirstnm TEXT,  Wldataflag NUMERIC,  Gasmethcom TEXT,  Sampflag NUMERIC,  Measptflag NUMERIC,  Station TEXT,  Wlmeascom TEXT,  Datecreate TEXT,  Sigdate TEXT,  Hislabflag NUMERIC,  Constflag NUMERIC,  Sigtitle TEXT,  Sampcom TEXT,  Usercreate TEXT,  Sigsurname TEXT,  Pumpsflag NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 
Field [usermod]false
Field [boreowner]false
Field [date]true
Field [fieldcom]false
Field [timemod]false
Field [datemod]false
Field [wlmeasflag]false
Field [certifier]false
Field [hisfldflag]false
Field [gasmeth]false
Field [tenurecont]false
Field [resflag]false
Field [rescom]false
Field [gascom]false
Field [assesstype]true
Field [dbver1]false
Field [gasflag]false
Field [assofficer]false
Field [timecreate]false
Field [pumpflag]false
Field [purgeflag]false
Field [fieldflag]false
Field [sigfirstnm]false
Field [wldataflag]false
Field [gasmethcom]false
Field [sampflag]false
Field [measptflag]false
Field [station]true
Field [wlmeascom]false
Field [datecreate]false
Field [sigdate]false
Field [hislabflag]false
Field [constflag]false
Field [sigtitle]false
Field [sampcom]false
Field [usercreate]false
Field [sigsurname]false
Field [pumpsflag]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Usermod TEXT,  Boreowner TEXT,  Date TEXT,  Fieldcom TEXT,  Timemod NUMERIC,  Datemod TEXT,  Wlmeasflag NUMERIC,  Certifier TEXT,  Hisfldflag NUMERIC,  Gasmeth TEXT,  Tenurecont TEXT,  Resflag NUMERIC,  Rescom TEXT,  Gascom TEXT,  Assesstype TEXT,  Dbver1 NUMERIC,  Gasflag NUMERIC,  Assofficer TEXT,  Timecreate NUMERIC,  Pumpflag NUMERIC,  Purgeflag NUMERIC,  Fieldflag NUMERIC,  Sigfirstnm TEXT,  Wldataflag NUMERIC,  Gasmethcom TEXT,  Sampflag NUMERIC,  Measptflag NUMERIC,  Station TEXT,  Wlmeascom TEXT,  Datecreate TEXT,  Sigdate TEXT,  Hislabflag NUMERIC,  Constflag NUMERIC,  Sigtitle TEXT,  Sampcom TEXT,  Usercreate TEXT,  Sigsurname TEXT,  Pumpsflag NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 
Field [usermod] key value [false]
Field [boreowner] key value [false]
Field [date] key value [true]
Field [fieldcom] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [wlmeasflag] key value [false]
Field [certifier] key value [false]
Field [hisfldflag] key value [false]
Field [gasmeth] key value [false]
Field [tenurecont] key value [false]
Field [resflag] key value [false]
Field [rescom] key value [false]
Field [gascom] key value [false]
Field [assesstype] key value [true]
Field [dbver1] key value [false]
Field [gasflag] key value [false]
Field [assofficer] key value [false]
Field [timecreate] key value [false]
Field [pumpflag] key value [false]
Field [purgeflag] key value [false]
Field [fieldflag] key value [false]
Field [sigfirstnm] key value [false]
Field [wldataflag] key value [false]
Field [gasmethcom] key value [false]
Field [sampflag] key value [false]
Field [measptflag] key value [false]
Field [station] key value [true]
Field [wlmeascom] key value [false]
Field [datecreate] key value [false]
Field [sigdate] key value [false]
Field [hislabflag] key value [false]
Field [constflag] key value [false]
Field [sigtitle] key value [false]
Field [sampcom] key value [false]
Field [usercreate] key value [false]
Field [sigsurname] key value [false]
Field [pumpsflag] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Usermod TEXT,  Boreowner TEXT,  Date TEXT,  Fieldcom TEXT,  Timemod NUMERIC,  Datemod TEXT,  Wlmeasflag NUMERIC,  Certifier TEXT,  Hisfldflag NUMERIC,  Gasmeth TEXT,  Tenurecont TEXT,  Resflag NUMERIC,  Rescom TEXT,  Gascom TEXT,  Assesstype TEXT,  Dbver1 NUMERIC,  Gasflag NUMERIC,  Assofficer TEXT,  Timecreate NUMERIC,  Pumpflag NUMERIC,  Purgeflag NUMERIC,  Fieldflag NUMERIC,  Sigfirstnm TEXT,  Wldataflag NUMERIC,  Gasmethcom TEXT,  Sampflag NUMERIC,  Measptflag NUMERIC,  Station TEXT,  Wlmeascom TEXT,  Datecreate TEXT,  Sigdate TEXT,  Hislabflag NUMERIC,  Constflag NUMERIC,  Sigtitle TEXT,  Sampcom TEXT,  Usercreate TEXT,  Sigsurname TEXT,  Pumpsflag NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Usermod TEXT,  Boreowner TEXT,  Date TEXT,  Fieldcom TEXT,  Timemod NUMERIC,  Datemod TEXT,  Wlmeasflag NUMERIC,  Certifier TEXT,  Hisfldflag NUMERIC,  Gasmeth TEXT,  Tenurecont TEXT,  Resflag NUMERIC,  Rescom TEXT,  Gascom TEXT,  Assesstype TEXT,  Dbver1 NUMERIC,  Gasflag NUMERIC,  Assofficer TEXT,  Timecreate NUMERIC,  Pumpflag NUMERIC,  Purgeflag NUMERIC,  Fieldflag NUMERIC,  Sigfirstnm TEXT,  Wldataflag NUMERIC,  Gasmethcom TEXT,  Sampflag NUMERIC,  Measptflag NUMERIC,  Station TEXT,  Wlmeascom TEXT,  Datecreate TEXT,  Sigdate TEXT,  Hislabflag NUMERIC,  Constflag NUMERIC,  Sigtitle TEXT,  Sampcom TEXT,  Usercreate TEXT,  Sigsurname TEXT,  Pumpsflag NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Usermod TEXT,  Boreowner TEXT,  Date TEXT,  Fieldcom TEXT,  Timemod NUMERIC,  Datemod TEXT,  Wlmeasflag NUMERIC,  Certifier TEXT,  Hisfldflag NUMERIC,  Gasmeth TEXT,  Tenurecont TEXT,  Resflag NUMERIC,  Rescom TEXT,  Gascom TEXT,  Assesstype TEXT,  Dbver1 NUMERIC,  Gasflag NUMERIC,  Assofficer TEXT,  Timecreate NUMERIC,  Pumpflag NUMERIC,  Purgeflag NUMERIC,  Fieldflag NUMERIC,  Sigfirstnm TEXT,  Wldataflag NUMERIC,  Gasmethcom TEXT,  Sampflag NUMERIC,  Measptflag NUMERIC,  Station TEXT,  Wlmeascom TEXT,  Datecreate TEXT,  Sigdate TEXT,  Hislabflag NUMERIC,  Constflag NUMERIC,  Sigtitle TEXT,  Sampcom TEXT,  Usercreate TEXT,  Sigsurname TEXT,  Pumpsflag NUMERIC, PRIMARY KEY (Date, Assesstype, Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Placeholder ,  Station TEXT,  Assesstype TEXT,  Date TEXT,  Tenurecont TEXT,  Assofficer TEXT,  Certifier TEXT,  Sigsurname TEXT,  Sigfirstnm TEXT,  Sigtitle TEXT,  Sigdate TEXT,  Boreowner TEXT,  Constflag NUMERIC,  Pumpflag NUMERIC,  Wlmeasflag NUMERIC,  Wlmeascom TEXT,  Wldataflag NUMERIC,  Sampflag NUMERIC,  Sampcom TEXT,  Gasflag NUMERIC,  Gascom TEXT,  Resflag NUMERIC,  Rescom TEXT,  Hislabflag NUMERIC,  Fieldflag NUMERIC,  Fieldcom TEXT,  Hisfldflag NUMERIC,  Measptflag NUMERIC,  Purgeflag NUMERIC,  Pumpsflag NUMERIC,  Gasmeth TEXT,  Gasmethcom TEXT,  Dbver1 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Assesstype, Date))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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
package Hydstra::Areasmt;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AREASMT';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a areasmt table 

=cut

subtype 'AreasmtUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtBoreowner', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtFieldcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtCertifier', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtHisfldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmeth', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtTenurecont', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtResflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtRescom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtGascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtAssesstype', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AreasmtDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtAssofficer', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AreasmtPumpflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtPurgeflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtFieldflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigfirstnm', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtWldataflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtGasmethcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtSampflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtMeasptflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AreasmtWlmeascom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtHislabflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtConstflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AreasmtSigtitle', as 'Str', where { length($_) <= 200 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [200] char, not [$length] characters.~"  };
subtype 'AreasmtSampcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AreasmtUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AreasmtSigsurname', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AreasmtPumpsflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'areasmt_usermod'  => ( is => 'rw', isa => 'AreasmtUsermod' ); 
 has 'areasmt_boreowner'  => ( is => 'rw', isa => 'AreasmtBoreowner' ); 
 has 'areasmt_date'  => ( is => 'rw', isa => 'AreasmtDate' ); 
 has 'areasmt_fieldcom'  => ( is => 'rw', isa => 'AreasmtFieldcom' ); 
 has 'areasmt_timemod'  => ( is => 'rw', isa => 'AreasmtTimemod' ); 
 has 'areasmt_datemod'  => ( is => 'rw', isa => 'AreasmtDatemod' ); 
 has 'areasmt_wlmeasflag'  => ( is => 'rw', isa => 'AreasmtWlmeasflag' ); 
 has 'areasmt_certifier'  => ( is => 'rw', isa => 'AreasmtCertifier' ); 
 has 'areasmt_hisfldflag'  => ( is => 'rw', isa => 'AreasmtHisfldflag' ); 
 has 'areasmt_gasmeth'  => ( is => 'rw', isa => 'AreasmtGasmeth' ); 
 has 'areasmt_tenurecont'  => ( is => 'rw', isa => 'AreasmtTenurecont' ); 
 has 'areasmt_resflag'  => ( is => 'rw', isa => 'AreasmtResflag' ); 
 has 'areasmt_rescom'  => ( is => 'rw', isa => 'AreasmtRescom' ); 
 has 'areasmt_gascom'  => ( is => 'rw', isa => 'AreasmtGascom' ); 
 has 'areasmt_assesstype'  => ( is => 'rw', isa => 'AreasmtAssesstype' ); 
 has 'areasmt_dbver1'  => ( is => 'rw', isa => 'AreasmtDbver1' ); 
 has 'areasmt_gasflag'  => ( is => 'rw', isa => 'AreasmtGasflag' ); 
 has 'areasmt_assofficer'  => ( is => 'rw', isa => 'AreasmtAssofficer' ); 
 has 'areasmt_timecreate'  => ( is => 'rw', isa => 'AreasmtTimecreate' ); 
 has 'areasmt_pumpflag'  => ( is => 'rw', isa => 'AreasmtPumpflag' ); 
 has 'areasmt_purgeflag'  => ( is => 'rw', isa => 'AreasmtPurgeflag' ); 
 has 'areasmt_fieldflag'  => ( is => 'rw', isa => 'AreasmtFieldflag' ); 
 has 'areasmt_sigfirstnm'  => ( is => 'rw', isa => 'AreasmtSigfirstnm' ); 
 has 'areasmt_wldataflag'  => ( is => 'rw', isa => 'AreasmtWldataflag' ); 
 has 'areasmt_gasmethcom'  => ( is => 'rw', isa => 'AreasmtGasmethcom' ); 
 has 'areasmt_sampflag'  => ( is => 'rw', isa => 'AreasmtSampflag' ); 
 has 'areasmt_measptflag'  => ( is => 'rw', isa => 'AreasmtMeasptflag' ); 
 has 'areasmt_station'  => ( is => 'rw', isa => 'AreasmtStation' ); 
 has 'areasmt_wlmeascom'  => ( is => 'rw', isa => 'AreasmtWlmeascom' ); 
 has 'areasmt_datecreate'  => ( is => 'rw', isa => 'AreasmtDatecreate' ); 
 has 'areasmt_sigdate'  => ( is => 'rw', isa => 'AreasmtSigdate' ); 
 has 'areasmt_hislabflag'  => ( is => 'rw', isa => 'AreasmtHislabflag' ); 
 has 'areasmt_constflag'  => ( is => 'rw', isa => 'AreasmtConstflag' ); 
 has 'areasmt_sigtitle'  => ( is => 'rw', isa => 'AreasmtSigtitle' ); 
 has 'areasmt_sampcom'  => ( is => 'rw', isa => 'AreasmtSampcom' ); 
 has 'areasmt_usercreate'  => ( is => 'rw', isa => 'AreasmtUsercreate' ); 
 has 'areasmt_sigsurname'  => ( is => 'rw', isa => 'AreasmtSigsurname' ); 
 has 'areasmt_pumpsflag'  => ( is => 'rw', isa => 'AreasmtPumpsflag' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables areasmt is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables areasmt is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AREASMT ( Station TEXT,  Assesstype TEXT,  Date TEXT,  Tenurecont TEXT,  Assofficer TEXT,  Certifier TEXT,  Sigsurname TEXT,  Sigfirstnm TEXT,  Sigtitle TEXT,  Sigdate TEXT,  Boreowner TEXT,  Constflag NUMERIC,  Pumpflag NUMERIC,  Wlmeasflag NUMERIC,  Wlmeascom TEXT,  Wldataflag NUMERIC,  Sampflag NUMERIC,  Sampcom TEXT,  Gasflag NUMERIC,  Gascom TEXT,  Resflag NUMERIC,  Rescom TEXT,  Hislabflag NUMERIC,  Fieldflag NUMERIC,  Fieldcom TEXT,  Hisfldflag NUMERIC,  Measptflag NUMERIC,  Purgeflag NUMERIC,  Pumpsflag NUMERIC,  Gasmeth TEXT,  Gasmethcom TEXT,  Dbver1 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Assesstype, Date))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO AREASMT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Areasmt::Validation;
  use Moose;
  extends 'Areasmt';

 has '+areasmt_date' => ( required => 1, default => 18991231, ); 
 has '+areasmt_assesstype' => ( required => 1,  ); 
 has '+areasmt_station' => ( required => 1,  ); 

  
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

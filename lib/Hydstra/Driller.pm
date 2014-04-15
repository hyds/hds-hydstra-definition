
{
package Hydstra::Driller;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILLER';

  

use constant PARENT_OF => qw( drilexam drilslic drilapp drilexp drillic drilequp drilhist );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a driller table 

=cut

subtype 'DrillerEndorse4', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerSpare5', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerSpare4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerDeladdr3', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrillerTown', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrillerTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrillerDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerState', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrillerDeladdr2', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrillerEmail', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrillerAltphone', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'DrillerLspare2', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerEndorse9', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerLspare3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerSurname', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrillerSpare3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerDob', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerCompanyid', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'DrillerOtherqual', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerEndorse2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerTitle', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'DrillerClass', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerDeltown', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrillerDpostcode', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrillerDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerStatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerPhotoincl', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerFstname', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrillerEndorse5', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerMobile', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'DrillerAddr2', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrillerLspare5', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerLspare4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerAppldate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerFax', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'DrillerAddr1', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrillerSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerPostcode', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'DrillerOtherendrs', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrillerEndorse6', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerFilenumber', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrillerDelstate', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'DrillerEndorse3', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerEndorse10', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerPhone', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'DrillerDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerEndorse8', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerDbver20', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerLspare1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrillerEndorse1', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerEndorse7', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerAddr3', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrillerUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerExpirydate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrillerDeladdr1', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };

 has 'driller_endorse4'  => ( is => 'rw', isa => 'DrillerEndorse4' ); 
 has 'driller_spare5'  => ( is => 'rw', isa => 'DrillerSpare5' ); 
 has 'driller_usermod'  => ( is => 'rw', isa => 'DrillerUsermod' ); 
 has 'driller_spare4'  => ( is => 'rw', isa => 'DrillerSpare4' ); 
 has 'driller_deladdr3'  => ( is => 'rw', isa => 'DrillerDeladdr3' ); 
 has 'driller_town'  => ( is => 'rw', isa => 'DrillerTown' ); 
 has 'driller_timemod'  => ( is => 'rw', isa => 'DrillerTimemod' ); 
 has 'driller_datemod'  => ( is => 'rw', isa => 'DrillerDatemod' ); 
 has 'driller_state'  => ( is => 'rw', isa => 'DrillerState' ); 
 has 'driller_deladdr2'  => ( is => 'rw', isa => 'DrillerDeladdr2' ); 
 has 'driller_email'  => ( is => 'rw', isa => 'DrillerEmail' ); 
 has 'driller_altphone'  => ( is => 'rw', isa => 'DrillerAltphone' ); 
 has 'driller_lspare2'  => ( is => 'rw', isa => 'DrillerLspare2' ); 
 has 'driller_endorse9'  => ( is => 'rw', isa => 'DrillerEndorse9' ); 
 has 'driller_lspare3'  => ( is => 'rw', isa => 'DrillerLspare3' ); 
 has 'driller_surname'  => ( is => 'rw', isa => 'DrillerSurname' ); 
 has 'driller_spare3'  => ( is => 'rw', isa => 'DrillerSpare3' ); 
 has 'driller_dob'  => ( is => 'rw', isa => 'DrillerDob' ); 
 has 'driller_companyid'  => ( is => 'rw', isa => 'DrillerCompanyid' ); 
 has 'driller_otherqual'  => ( is => 'rw', isa => 'DrillerOtherqual' ); 
 has 'driller_endorse2'  => ( is => 'rw', isa => 'DrillerEndorse2' ); 
 has 'driller_title'  => ( is => 'rw', isa => 'DrillerTitle' ); 
 has 'driller_class'  => ( is => 'rw', isa => 'DrillerClass' ); 
 has 'driller_deltown'  => ( is => 'rw', isa => 'DrillerDeltown' ); 
 has 'driller_dpostcode'  => ( is => 'rw', isa => 'DrillerDpostcode' ); 
 has 'driller_timecreate'  => ( is => 'rw', isa => 'DrillerTimecreate' ); 
 has 'driller_drillic'  => ( is => 'rw', isa => 'DrillerDrillic' ); 
 has 'driller_status'  => ( is => 'rw', isa => 'DrillerStatus' ); 
 has 'driller_photoincl'  => ( is => 'rw', isa => 'DrillerPhotoincl' ); 
 has 'driller_fstname'  => ( is => 'rw', isa => 'DrillerFstname' ); 
 has 'driller_endorse5'  => ( is => 'rw', isa => 'DrillerEndorse5' ); 
 has 'driller_mobile'  => ( is => 'rw', isa => 'DrillerMobile' ); 
 has 'driller_addr2'  => ( is => 'rw', isa => 'DrillerAddr2' ); 
 has 'driller_lspare5'  => ( is => 'rw', isa => 'DrillerLspare5' ); 
 has 'driller_lspare4'  => ( is => 'rw', isa => 'DrillerLspare4' ); 
 has 'driller_spare2'  => ( is => 'rw', isa => 'DrillerSpare2' ); 
 has 'driller_appldate'  => ( is => 'rw', isa => 'DrillerAppldate' ); 
 has 'driller_fax'  => ( is => 'rw', isa => 'DrillerFax' ); 
 has 'driller_addr1'  => ( is => 'rw', isa => 'DrillerAddr1' ); 
 has 'driller_spare1'  => ( is => 'rw', isa => 'DrillerSpare1' ); 
 has 'driller_postcode'  => ( is => 'rw', isa => 'DrillerPostcode' ); 
 has 'driller_otherendrs'  => ( is => 'rw', isa => 'DrillerOtherendrs' ); 
 has 'driller_endorse6'  => ( is => 'rw', isa => 'DrillerEndorse6' ); 
 has 'driller_filenumber'  => ( is => 'rw', isa => 'DrillerFilenumber' ); 
 has 'driller_delstate'  => ( is => 'rw', isa => 'DrillerDelstate' ); 
 has 'driller_endorse3'  => ( is => 'rw', isa => 'DrillerEndorse3' ); 
 has 'driller_endorse10'  => ( is => 'rw', isa => 'DrillerEndorse10' ); 
 has 'driller_phone'  => ( is => 'rw', isa => 'DrillerPhone' ); 
 has 'driller_datecreate'  => ( is => 'rw', isa => 'DrillerDatecreate' ); 
 has 'driller_endorse8'  => ( is => 'rw', isa => 'DrillerEndorse8' ); 
 has 'driller_dbver20'  => ( is => 'rw', isa => 'DrillerDbver20' ); 
 has 'driller_lspare1'  => ( is => 'rw', isa => 'DrillerLspare1' ); 
 has 'driller_endorse1'  => ( is => 'rw', isa => 'DrillerEndorse1' ); 
 has 'driller_endorse7'  => ( is => 'rw', isa => 'DrillerEndorse7' ); 
 has 'driller_addr3'  => ( is => 'rw', isa => 'DrillerAddr3' ); 
 has 'driller_usercreate'  => ( is => 'rw', isa => 'DrillerUsercreate' ); 
 has 'driller_expirydate'  => ( is => 'rw', isa => 'DrillerExpirydate' ); 
 has 'driller_deladdr1'  => ( is => 'rw', isa => 'DrillerDeladdr1' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables driller is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables driller is a child of.

=cut
  
sub child_of{
  return 0;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{

  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILLER ($create, $primary_key)";
  
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILLER VALUES ($vals)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Driller::Validation;
  use Moose;
  extends 'Driller';

 has '+driller_drillic' => ( required => 1,  ); 

  
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

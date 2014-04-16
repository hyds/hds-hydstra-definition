
{
package Hydstra::Aresite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARESITE';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a aresite table 

=cut

subtype 'AresiteDbver1', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AresiteLot', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'AresiteTenureblk', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AresiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AresiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AresiteUtilcom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteRepairdesc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AresiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AresitePumpdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AresiteMeterflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AresiteTenureno', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,10})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [0].~"  };
subtype 'AresitePlan', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteUsemtrflag', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AresiteTenuretype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'AresiteProperty', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AresiteGwdbsite', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'AresiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AresiteUsevolest', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'AresiteGwdbcomm', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteUsecom', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteUsevolmeth', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresitePumpest', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'AresiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AresiteMeterdesc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteLocalsite', as 'Str', where { length($_) <= 100 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [100] char, not [$length] characters.~"  };
subtype 'AresiteUsevolavg', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'AresiteHeadwdesc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AresiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'aresite_dbver1'  => ( is => 'rw', isa => 'AresiteDbver1' ); 
 has 'aresite_lot'  => ( is => 'rw', isa => 'AresiteLot' ); 
 has 'aresite_tenureblk'  => ( is => 'rw', isa => 'AresiteTenureblk' ); 
 has 'aresite_usermod'  => ( is => 'rw', isa => 'AresiteUsermod' ); 
 has 'aresite_timecreate'  => ( is => 'rw', isa => 'AresiteTimecreate' ); 
 has 'aresite_utilcom'  => ( is => 'rw', isa => 'AresiteUtilcom' ); 
 has 'aresite_repairdesc'  => ( is => 'rw', isa => 'AresiteRepairdesc' ); 
 has 'aresite_timemod'  => ( is => 'rw', isa => 'AresiteTimemod' ); 
 has 'aresite_datemod'  => ( is => 'rw', isa => 'AresiteDatemod' ); 
 has 'aresite_pumpdate'  => ( is => 'rw', isa => 'AresitePumpdate' ); 
 has 'aresite_meterflag'  => ( is => 'rw', isa => 'AresiteMeterflag' ); 
 has 'aresite_tenureno'  => ( is => 'rw', isa => 'AresiteTenureno' ); 
 has 'aresite_plan'  => ( is => 'rw', isa => 'AresitePlan' ); 
 has 'aresite_usemtrflag'  => ( is => 'rw', isa => 'AresiteUsemtrflag' ); 
 has 'aresite_tenuretype'  => ( is => 'rw', isa => 'AresiteTenuretype' ); 
 has 'aresite_property'  => ( is => 'rw', isa => 'AresiteProperty' ); 
 has 'aresite_gwdbsite'  => ( is => 'rw', isa => 'AresiteGwdbsite' ); 
 has 'aresite_station'  => ( is => 'rw', isa => 'AresiteStation' ); 
 has 'aresite_usevolest'  => ( is => 'rw', isa => 'AresiteUsevolest' ); 
 has 'aresite_gwdbcomm'  => ( is => 'rw', isa => 'AresiteGwdbcomm' ); 
 has 'aresite_usecom'  => ( is => 'rw', isa => 'AresiteUsecom' ); 
 has 'aresite_usevolmeth'  => ( is => 'rw', isa => 'AresiteUsevolmeth' ); 
 has 'aresite_pumpest'  => ( is => 'rw', isa => 'AresitePumpest' ); 
 has 'aresite_datecreate'  => ( is => 'rw', isa => 'AresiteDatecreate' ); 
 has 'aresite_meterdesc'  => ( is => 'rw', isa => 'AresiteMeterdesc' ); 
 has 'aresite_localsite'  => ( is => 'rw', isa => 'AresiteLocalsite' ); 
 has 'aresite_usevolavg'  => ( is => 'rw', isa => 'AresiteUsevolavg' ); 
 has 'aresite_headwdesc'  => ( is => 'rw', isa => 'AresiteHeadwdesc' ); 
 has 'aresite_usercreate'  => ( is => 'rw', isa => 'AresiteUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables aresite is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables aresite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARESITE ( 'Station' TEXT,  'Lot' TEXT,  'Plan' TEXT,  'Gwdbsite' NUMERIC,  'Gwdbcomm' TEXT,  'Localsite' TEXT,  'Property' TEXT,  'Tenuretype' TEXT,  'Tenureno' NUMERIC,  'Tenureblk' TEXT,  'Meterflag' NUMERIC,  'Meterdesc' TEXT,  'Headwdesc' TEXT,  'Repairdesc' TEXT,  'Pumpdate' TEXT,  'Usemtrflag' NUMERIC,  'Usevolavg' NUMERIC,  'Usevolest' NUMERIC,  'Usevolmeth' TEXT,  'Pumpest' NUMERIC,  'Utilcom' TEXT,  'Usecom' TEXT,  'Dbver1' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARESITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Aresite::Validation;
  use Moose;
  extends 'Hydstra::Aresite';

 has '+aresite_station' => ( required => 1,  ); 

  
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


{
package Hydstra::Drilexam;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'DRILEXAM';

use constant CHILD_OF => qw( driller );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a drilexam table 

=cut

subtype 'DrilexamUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilexamTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilexamDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilexamLandowner', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrilexamTown', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilexamYield', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [2].~"  };
subtype 'DrilexamTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'DrilexamBoretype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilexamState', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'DrilexamDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilexamAddr2', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrilexamDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'DrilexamSpare2', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilexamAddr1', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'DrilexamPostcode', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'DrilexamSpare1', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilexamBorelic', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'DrilexamDiameter', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'DrilexamDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilexamSpare3', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'DrilexamUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'DrilexamAddr3', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };

 has 'drilexam_usermod'  => ( is => 'rw', isa => 'DrilexamUsermod' ); 
 has 'drilexam_timecreate'  => ( is => 'rw', isa => 'DrilexamTimecreate' ); 
 has 'drilexam_drillic'  => ( is => 'rw', isa => 'DrilexamDrillic' ); 
 has 'drilexam_landowner'  => ( is => 'rw', isa => 'DrilexamLandowner' ); 
 has 'drilexam_town'  => ( is => 'rw', isa => 'DrilexamTown' ); 
 has 'drilexam_yield'  => ( is => 'rw', isa => 'DrilexamYield' ); 
 has 'drilexam_timemod'  => ( is => 'rw', isa => 'DrilexamTimemod' ); 
 has 'drilexam_boretype'  => ( is => 'rw', isa => 'DrilexamBoretype' ); 
 has 'drilexam_state'  => ( is => 'rw', isa => 'DrilexamState' ); 
 has 'drilexam_datemod'  => ( is => 'rw', isa => 'DrilexamDatemod' ); 
 has 'drilexam_addr2'  => ( is => 'rw', isa => 'DrilexamAddr2' ); 
 has 'drilexam_dbver3'  => ( is => 'rw', isa => 'DrilexamDbver3' ); 
 has 'drilexam_spare2'  => ( is => 'rw', isa => 'DrilexamSpare2' ); 
 has 'drilexam_addr1'  => ( is => 'rw', isa => 'DrilexamAddr1' ); 
 has 'drilexam_postcode'  => ( is => 'rw', isa => 'DrilexamPostcode' ); 
 has 'drilexam_spare1'  => ( is => 'rw', isa => 'DrilexamSpare1' ); 
 has 'drilexam_borelic'  => ( is => 'rw', isa => 'DrilexamBorelic' ); 
 has 'drilexam_diameter'  => ( is => 'rw', isa => 'DrilexamDiameter' ); 
 has 'drilexam_datecreate'  => ( is => 'rw', isa => 'DrilexamDatecreate' ); 
 has 'drilexam_spare3'  => ( is => 'rw', isa => 'DrilexamSpare3' ); 
 has 'drilexam_usercreate'  => ( is => 'rw', isa => 'DrilexamUsercreate' ); 
 has 'drilexam_addr3'  => ( is => 'rw', isa => 'DrilexamAddr3' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables drilexam is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables drilexam is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS DRILEXAM ($create, $primary_key)";
  
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO DRILEXAM VALUES ($vals)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Drilexam::Validation;
  use Moose;
  extends 'Drilexam';

 has '+drilexam_drillic' => ( required => 1,  ); 
 has '+drilexam_borelic' => ( required => 1,  ); 

  
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

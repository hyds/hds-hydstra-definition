
{
package Hydstra::Sshift;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SSHIFT';

use constant CHILD_OF => qw( rateper site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a sshift table 

=cut

subtype 'SshiftShift2', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'SshiftUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SshiftSdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SshiftTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SshiftShift3', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'SshiftVarfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SshiftStage1', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'SshiftTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SshiftVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SshiftDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SshiftStime', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SshiftShift1', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'SshiftStage3', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'SshiftStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SshiftStage2', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [6].~"  };
subtype 'SshiftActive', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SshiftCommnt', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SshiftDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SshiftUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SshiftDbver11', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'sshift_shift2'  => ( is => 'rw', isa => 'SshiftShift2' ); 
 has 'sshift_usermod'  => ( is => 'rw', isa => 'SshiftUsermod' ); 
 has 'sshift_sdate'  => ( is => 'rw', isa => 'SshiftSdate' ); 
 has 'sshift_timecreate'  => ( is => 'rw', isa => 'SshiftTimecreate' ); 
 has 'sshift_shift3'  => ( is => 'rw', isa => 'SshiftShift3' ); 
 has 'sshift_varfrom'  => ( is => 'rw', isa => 'SshiftVarfrom' ); 
 has 'sshift_stage1'  => ( is => 'rw', isa => 'SshiftStage1' ); 
 has 'sshift_timemod'  => ( is => 'rw', isa => 'SshiftTimemod' ); 
 has 'sshift_varto'  => ( is => 'rw', isa => 'SshiftVarto' ); 
 has 'sshift_datemod'  => ( is => 'rw', isa => 'SshiftDatemod' ); 
 has 'sshift_stime'  => ( is => 'rw', isa => 'SshiftStime' ); 
 has 'sshift_shift1'  => ( is => 'rw', isa => 'SshiftShift1' ); 
 has 'sshift_stage3'  => ( is => 'rw', isa => 'SshiftStage3' ); 
 has 'sshift_station'  => ( is => 'rw', isa => 'SshiftStation' ); 
 has 'sshift_stage2'  => ( is => 'rw', isa => 'SshiftStage2' ); 
 has 'sshift_active'  => ( is => 'rw', isa => 'SshiftActive' ); 
 has 'sshift_commnt'  => ( is => 'rw', isa => 'SshiftCommnt' ); 
 has 'sshift_datecreate'  => ( is => 'rw', isa => 'SshiftDatecreate' ); 
 has 'sshift_usercreate'  => ( is => 'rw', isa => 'SshiftUsercreate' ); 
 has 'sshift_dbver11'  => ( is => 'rw', isa => 'SshiftDbver11' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables sshift is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables sshift is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SSHIFT ($create, $primary_key)";
  
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SSHIFT VALUES ($vals)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Sshift::Validation;
  use Moose;
  extends 'Sshift';

 has '+sshift_sdate' => ( required => 1,  ); 
 has '+sshift_varfrom' => ( required => 1,  ); 
 has '+sshift_varto' => ( required => 1,  ); 
 has '+sshift_stime' => ( required => 1,  ); 
 has '+sshift_station' => ( required => 1,  ); 

  
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

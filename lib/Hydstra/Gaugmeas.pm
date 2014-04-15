
{
package Hydstra::Gaugmeas;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GAUGMEAS';

use constant CHILD_OF => qw( gaugings );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gaugmeas table 

=cut

subtype 'GaugmeasVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugmeasUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugmeasTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugmeasVarfrom', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugmeasTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugmeasVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GaugmeasMeas_date', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugmeasDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugmeasQuality', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'GaugmeasStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GaugmeasValue', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'GaugmeasStart_time', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'GaugmeasDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugmeasComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GaugmeasUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GaugmeasDbver11', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'gaugmeas_variable'  => ( is => 'rw', isa => 'GaugmeasVariable' ); 
 has 'gaugmeas_usermod'  => ( is => 'rw', isa => 'GaugmeasUsermod' ); 
 has 'gaugmeas_timecreate'  => ( is => 'rw', isa => 'GaugmeasTimecreate' ); 
 has 'gaugmeas_varfrom'  => ( is => 'rw', isa => 'GaugmeasVarfrom' ); 
 has 'gaugmeas_timemod'  => ( is => 'rw', isa => 'GaugmeasTimemod' ); 
 has 'gaugmeas_varto'  => ( is => 'rw', isa => 'GaugmeasVarto' ); 
 has 'gaugmeas_meas_date'  => ( is => 'rw', isa => 'GaugmeasMeas_date' ); 
 has 'gaugmeas_datemod'  => ( is => 'rw', isa => 'GaugmeasDatemod' ); 
 has 'gaugmeas_quality'  => ( is => 'rw', isa => 'GaugmeasQuality' ); 
 has 'gaugmeas_station'  => ( is => 'rw', isa => 'GaugmeasStation' ); 
 has 'gaugmeas_value'  => ( is => 'rw', isa => 'GaugmeasValue' ); 
 has 'gaugmeas_start_time'  => ( is => 'rw', isa => 'GaugmeasStart_time' ); 
 has 'gaugmeas_datecreate'  => ( is => 'rw', isa => 'GaugmeasDatecreate' ); 
 has 'gaugmeas_comment'  => ( is => 'rw', isa => 'GaugmeasComment' ); 
 has 'gaugmeas_usercreate'  => ( is => 'rw', isa => 'GaugmeasUsercreate' ); 
 has 'gaugmeas_dbver11'  => ( is => 'rw', isa => 'GaugmeasDbver11' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables gaugmeas is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables gaugmeas is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GAUGMEAS ($create, $primary_key)";
  
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO GAUGMEAS VALUES ($vals)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Gaugmeas::Validation;
  use Moose;
  extends 'Gaugmeas';

 has '+gaugmeas_variable' => ( required => 1,  ); 
 has '+gaugmeas_varfrom' => ( required => 1,  ); 
 has '+gaugmeas_varto' => ( required => 1,  ); 
 has '+gaugmeas_meas_date' => ( required => 1,  ); 
 has '+gaugmeas_station' => ( required => 1,  ); 
 has '+gaugmeas_start_time' => ( required => 1,  ); 

  
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

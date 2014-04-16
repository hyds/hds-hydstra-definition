
{
package Hydstra::Rateeqn;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'RATEEQN';

use constant CHILD_OF => qw( ratehed );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a rateeqn table 

=cut

subtype 'RateeqnStagelow', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [5].~"  };
subtype 'RateeqnUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'RateeqnTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'RateeqnStagehigh', as 'Num', where { length($_) <= 11 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [11] and decimals [5].~"  };
subtype 'RateeqnTable', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'RateeqnVarfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'RateeqnEquation', as 'Str', where { length($_) <= 250 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [250] char, not [$length] characters.~"  };
subtype 'RateeqnTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'RateeqnVarto', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'RateeqnDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'RateeqnRqual', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'RateeqnStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'RateeqnRelease', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'RateeqnDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'RateeqnUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'RateeqnDbver19', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'rateeqn_stagelow'  => ( is => 'rw', isa => 'RateeqnStagelow' ); 
 has 'rateeqn_usermod'  => ( is => 'rw', isa => 'RateeqnUsermod' ); 
 has 'rateeqn_timecreate'  => ( is => 'rw', isa => 'RateeqnTimecreate' ); 
 has 'rateeqn_stagehigh'  => ( is => 'rw', isa => 'RateeqnStagehigh' ); 
 has 'rateeqn_table'  => ( is => 'rw', isa => 'RateeqnTable' ); 
 has 'rateeqn_varfrom'  => ( is => 'rw', isa => 'RateeqnVarfrom' ); 
 has 'rateeqn_equation'  => ( is => 'rw', isa => 'RateeqnEquation' ); 
 has 'rateeqn_timemod'  => ( is => 'rw', isa => 'RateeqnTimemod' ); 
 has 'rateeqn_varto'  => ( is => 'rw', isa => 'RateeqnVarto' ); 
 has 'rateeqn_datemod'  => ( is => 'rw', isa => 'RateeqnDatemod' ); 
 has 'rateeqn_rqual'  => ( is => 'rw', isa => 'RateeqnRqual' ); 
 has 'rateeqn_station'  => ( is => 'rw', isa => 'RateeqnStation' ); 
 has 'rateeqn_release'  => ( is => 'rw', isa => 'RateeqnRelease' ); 
 has 'rateeqn_datecreate'  => ( is => 'rw', isa => 'RateeqnDatecreate' ); 
 has 'rateeqn_usercreate'  => ( is => 'rw', isa => 'RateeqnUsercreate' ); 
 has 'rateeqn_dbver19'  => ( is => 'rw', isa => 'RateeqnDbver19' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables rateeqn is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables rateeqn is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS RATEEQN ( 'Station' TEXT,  'Varfrom' NUMERIC,  'Varto' NUMERIC,  'Table' NUMERIC,  'Release' NUMERIC,  'Stagelow' NUMERIC,  'Stagehigh' NUMERIC,  'Equation' TEXT,  'Rqual' NUMERIC,  'Dbver19' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Varfrom, Varto, Table, Release, Stagelow))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO RATEEQN VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Rateeqn::Validation;
  use Moose;
  extends 'Hydstra::Rateeqn';

 has '+rateeqn_stagelow' => ( required => 1,  ); 
 has '+rateeqn_table' => ( required => 1,  ); 
 has '+rateeqn_varfrom' => ( required => 1,  ); 
 has '+rateeqn_varto' => ( required => 1,  ); 
 has '+rateeqn_station' => ( required => 1,  ); 
 has '+rateeqn_release' => ( required => 1,  ); 

  
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

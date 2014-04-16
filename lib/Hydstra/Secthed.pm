
{
package Hydstra::Secthed;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SECTHED';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( sections );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a secthed table 

=cut

subtype 'SecthedDbver18', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SecthedUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedStype', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SecthedDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SecthedUnitcode', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SecthedSection', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SecthedTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SecthedGaugezero', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'SecthedDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedStart_long', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,10})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [10].~"  };
subtype 'SecthedSrun', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SecthedSectno', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SecthedEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SecthedEnd_long', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,10})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [10].~"  };
subtype 'SecthedLetter', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SecthedEnd_lat', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,10})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [10].~"  };
subtype 'SecthedLevelbook', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SecthedDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedComment', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SecthedUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SecthedDatum', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SecthedStart_lat', as 'Num', where { length($_) <= 14 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,10})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [14] and decimals [10].~"  };

 has 'secthed_dbver18'  => ( is => 'rw', isa => 'SecthedDbver18' ); 
 has 'secthed_usermod'  => ( is => 'rw', isa => 'SecthedUsermod' ); 
 has 'secthed_stype'  => ( is => 'rw', isa => 'SecthedStype' ); 
 has 'secthed_date'  => ( is => 'rw', isa => 'SecthedDate' ); 
 has 'secthed_timecreate'  => ( is => 'rw', isa => 'SecthedTimecreate' ); 
 has 'secthed_unitcode'  => ( is => 'rw', isa => 'SecthedUnitcode' ); 
 has 'secthed_section'  => ( is => 'rw', isa => 'SecthedSection' ); 
 has 'secthed_timemod'  => ( is => 'rw', isa => 'SecthedTimemod' ); 
 has 'secthed_gaugezero'  => ( is => 'rw', isa => 'SecthedGaugezero' ); 
 has 'secthed_datemod'  => ( is => 'rw', isa => 'SecthedDatemod' ); 
 has 'secthed_start_long'  => ( is => 'rw', isa => 'SecthedStart_long' ); 
 has 'secthed_srun'  => ( is => 'rw', isa => 'SecthedSrun' ); 
 has 'secthed_sectno'  => ( is => 'rw', isa => 'SecthedSectno' ); 
 has 'secthed_enteredby'  => ( is => 'rw', isa => 'SecthedEnteredby' ); 
 has 'secthed_station'  => ( is => 'rw', isa => 'SecthedStation' ); 
 has 'secthed_end_long'  => ( is => 'rw', isa => 'SecthedEnd_long' ); 
 has 'secthed_letter'  => ( is => 'rw', isa => 'SecthedLetter' ); 
 has 'secthed_end_lat'  => ( is => 'rw', isa => 'SecthedEnd_lat' ); 
 has 'secthed_levelbook'  => ( is => 'rw', isa => 'SecthedLevelbook' ); 
 has 'secthed_datecreate'  => ( is => 'rw', isa => 'SecthedDatecreate' ); 
 has 'secthed_checkedby'  => ( is => 'rw', isa => 'SecthedCheckedby' ); 
 has 'secthed_comment'  => ( is => 'rw', isa => 'SecthedComment' ); 
 has 'secthed_usercreate'  => ( is => 'rw', isa => 'SecthedUsercreate' ); 
 has 'secthed_datum'  => ( is => 'rw', isa => 'SecthedDatum' ); 
 has 'secthed_start_lat'  => ( is => 'rw', isa => 'SecthedStart_lat' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables secthed is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables secthed is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SECTHED ( Station TEXT,  Sectno TEXT,  Stype TEXT,  Section NUMERIC,  Letter TEXT,  Date TEXT,  Srun NUMERIC,  Enteredby TEXT,  Checkedby TEXT,  Levelbook TEXT,  Comment TEXT,  Gaugezero NUMERIC,  Datum TEXT,  Unitcode TEXT,  Start_lat NUMERIC,  Start_long NUMERIC,  End_lat NUMERIC,  End_long NUMERIC,  Dbver18 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Sectno))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SECTHED VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Secthed::Validation;
  use Moose;
  extends 'Hydstra::Secthed';

 has '+secthed_date' => (  default => 18991231, ); 
 has '+secthed_sectno' => ( required => 1,  ); 
 has '+secthed_station' => ( required => 1,  ); 

  
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


{
package Hydstra::Sewrsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SEWRSITE';

use constant CHILD_OF => qw( station );  

use constant PARENT_OF => qw( sewrconf );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a sewrsite table 

=cut

subtype 'SewrsitePipelen', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SewrsiteQfullu', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SewrsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SewrsiteWetvf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrsiteInchmile', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SewrsiteInvslope', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SewrsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SewrsiteTimebase', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SewrsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SewrsiteRainstn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SewrsiteCatchpop', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SewrsiteXsectid', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SewrsiteDbver13', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SewrsiteQfull', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'SewrsiteSiltdepth', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'SewrsiteCatcharea', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'SewrsiteSiltdepthu', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrsiteInchmileu', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SewrsiteCatchareau', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrsiteConheightu', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrsitePipelenu', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SewrsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SewrsiteXsectstn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SewrsiteRainvar', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrsiteInflvf', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SewrsiteConheight', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'SewrsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'sewrsite_pipelen'  => ( is => 'rw', isa => 'SewrsitePipelen' ); 
 has 'sewrsite_qfullu'  => ( is => 'rw', isa => 'SewrsiteQfullu' ); 
 has 'sewrsite_usermod'  => ( is => 'rw', isa => 'SewrsiteUsermod' ); 
 has 'sewrsite_timecreate'  => ( is => 'rw', isa => 'SewrsiteTimecreate' ); 
 has 'sewrsite_wetvf'  => ( is => 'rw', isa => 'SewrsiteWetvf' ); 
 has 'sewrsite_inchmile'  => ( is => 'rw', isa => 'SewrsiteInchmile' ); 
 has 'sewrsite_invslope'  => ( is => 'rw', isa => 'SewrsiteInvslope' ); 
 has 'sewrsite_timemod'  => ( is => 'rw', isa => 'SewrsiteTimemod' ); 
 has 'sewrsite_timebase'  => ( is => 'rw', isa => 'SewrsiteTimebase' ); 
 has 'sewrsite_datemod'  => ( is => 'rw', isa => 'SewrsiteDatemod' ); 
 has 'sewrsite_rainstn'  => ( is => 'rw', isa => 'SewrsiteRainstn' ); 
 has 'sewrsite_catchpop'  => ( is => 'rw', isa => 'SewrsiteCatchpop' ); 
 has 'sewrsite_xsectid'  => ( is => 'rw', isa => 'SewrsiteXsectid' ); 
 has 'sewrsite_dbver13'  => ( is => 'rw', isa => 'SewrsiteDbver13' ); 
 has 'sewrsite_qfull'  => ( is => 'rw', isa => 'SewrsiteQfull' ); 
 has 'sewrsite_siltdepth'  => ( is => 'rw', isa => 'SewrsiteSiltdepth' ); 
 has 'sewrsite_catcharea'  => ( is => 'rw', isa => 'SewrsiteCatcharea' ); 
 has 'sewrsite_siltdepthu'  => ( is => 'rw', isa => 'SewrsiteSiltdepthu' ); 
 has 'sewrsite_inchmileu'  => ( is => 'rw', isa => 'SewrsiteInchmileu' ); 
 has 'sewrsite_station'  => ( is => 'rw', isa => 'SewrsiteStation' ); 
 has 'sewrsite_catchareau'  => ( is => 'rw', isa => 'SewrsiteCatchareau' ); 
 has 'sewrsite_conheightu'  => ( is => 'rw', isa => 'SewrsiteConheightu' ); 
 has 'sewrsite_pipelenu'  => ( is => 'rw', isa => 'SewrsitePipelenu' ); 
 has 'sewrsite_datecreate'  => ( is => 'rw', isa => 'SewrsiteDatecreate' ); 
 has 'sewrsite_xsectstn'  => ( is => 'rw', isa => 'SewrsiteXsectstn' ); 
 has 'sewrsite_rainvar'  => ( is => 'rw', isa => 'SewrsiteRainvar' ); 
 has 'sewrsite_inflvf'  => ( is => 'rw', isa => 'SewrsiteInflvf' ); 
 has 'sewrsite_conheight'  => ( is => 'rw', isa => 'SewrsiteConheight' ); 
 has 'sewrsite_usercreate'  => ( is => 'rw', isa => 'SewrsiteUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables sewrsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables sewrsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SEWRSITE ( Station TEXT,  Xsectstn TEXT,  Xsectid TEXT,  Invslope NUMERIC,  Conheight NUMERIC,  Conheightu TEXT,  Pipelen NUMERIC,  Pipelenu TEXT,  Inchmile NUMERIC,  Inchmileu TEXT,  Qfull NUMERIC,  Qfullu TEXT,  Rainstn TEXT,  Rainvar NUMERIC,  Inflvf NUMERIC,  Wetvf NUMERIC,  Siltdepth NUMERIC,  Siltdepthu TEXT,  Catcharea NUMERIC,  Catchareau TEXT,  Catchpop NUMERIC,  Timebase NUMERIC,  Dbver13 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SEWRSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Sewrsite::Validation;
  use Moose;
  extends 'Sewrsite';

 has '+sewrsite_station' => ( required => 1,  ); 

  
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


{
package Hydstra::Gravel;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GRAVEL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gravel table 

=cut

subtype 'GravelUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelRevcirc', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelInsertmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelAnulgrad', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GravelCementused', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'GravelInsdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelShovannul', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelRectype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelDbver30', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelStatusdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelOutdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelSizeto', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GravelType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelAnuliinter', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GravelStatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelWaterused', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'GravelSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelSizefrom', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GravelSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelTremiepipe', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GravelQuantity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GravelParty', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GravelUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelStatustime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelAnultype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gravel_usermod'  => ( is => 'rw', isa => 'GravelUsermod' ); 
 has 'gravel_revcirc'  => ( is => 'rw', isa => 'GravelRevcirc' ); 
 has 'gravel_insertmeth'  => ( is => 'rw', isa => 'GravelInsertmeth' ); 
 has 'gravel_anulgrad'  => ( is => 'rw', isa => 'GravelAnulgrad' ); 
 has 'gravel_timemod'  => ( is => 'rw', isa => 'GravelTimemod' ); 
 has 'gravel_datemod'  => ( is => 'rw', isa => 'GravelDatemod' ); 
 has 'gravel_depthfrom'  => ( is => 'rw', isa => 'GravelDepthfrom' ); 
 has 'gravel_cementused'  => ( is => 'rw', isa => 'GravelCementused' ); 
 has 'gravel_insdiam'  => ( is => 'rw', isa => 'GravelInsdiam' ); 
 has 'gravel_shovannul'  => ( is => 'rw', isa => 'GravelShovannul' ); 
 has 'gravel_rectype'  => ( is => 'rw', isa => 'GravelRectype' ); 
 has 'gravel_dbver30'  => ( is => 'rw', isa => 'GravelDbver30' ); 
 has 'gravel_statusdate'  => ( is => 'rw', isa => 'GravelStatusdate' ); 
 has 'gravel_outdiam'  => ( is => 'rw', isa => 'GravelOutdiam' ); 
 has 'gravel_spare3'  => ( is => 'rw', isa => 'GravelSpare3' ); 
 has 'gravel_sizeto'  => ( is => 'rw', isa => 'GravelSizeto' ); 
 has 'gravel_type'  => ( is => 'rw', isa => 'GravelType' ); 
 has 'gravel_anuliinter'  => ( is => 'rw', isa => 'GravelAnuliinter' ); 
 has 'gravel_status'  => ( is => 'rw', isa => 'GravelStatus' ); 
 has 'gravel_timecreate'  => ( is => 'rw', isa => 'GravelTimecreate' ); 
 has 'gravel_waterused'  => ( is => 'rw', isa => 'GravelWaterused' ); 
 has 'gravel_spare2'  => ( is => 'rw', isa => 'GravelSpare2' ); 
 has 'gravel_sizefrom'  => ( is => 'rw', isa => 'GravelSizefrom' ); 
 has 'gravel_spare1'  => ( is => 'rw', isa => 'GravelSpare1' ); 
 has 'gravel_tremiepipe'  => ( is => 'rw', isa => 'GravelTremiepipe' ); 
 has 'gravel_station'  => ( is => 'rw', isa => 'GravelStation' ); 
 has 'gravel_quantity'  => ( is => 'rw', isa => 'GravelQuantity' ); 
 has 'gravel_depthto'  => ( is => 'rw', isa => 'GravelDepthto' ); 
 has 'gravel_party'  => ( is => 'rw', isa => 'GravelParty' ); 
 has 'gravel_datecreate'  => ( is => 'rw', isa => 'GravelDatecreate' ); 
 has 'gravel_hole'  => ( is => 'rw', isa => 'GravelHole' ); 
 has 'gravel_usercreate'  => ( is => 'rw', isa => 'GravelUsercreate' ); 
 has 'gravel_statustime'  => ( is => 'rw', isa => 'GravelStatustime' ); 
 has 'gravel_anultype'  => ( is => 'rw', isa => 'GravelAnultype' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables gravel is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole depthfrom depthto );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables gravel is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables gravel is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole depthfrom depthto rectype type insdiam outdiam anultype anuliinter anulgrad sizefrom sizeto quantity waterused cementused insertmeth shovannul tremiepipe revcirc status statusdate statustime party spare1 spare2 spare3 dbver30 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GRAVEL ( 'Station' TEXT,  'Hole' NUMERIC,  'Depthfrom' NUMERIC,  'Depthto' NUMERIC,  'Rectype' TEXT,  'Type' TEXT,  'Insdiam' NUMERIC,  'Outdiam' NUMERIC,  'Anultype' TEXT,  'Anuliinter' NUMERIC,  'Anulgrad' TEXT,  'Sizefrom' NUMERIC,  'Sizeto' NUMERIC,  'Quantity' NUMERIC,  'Waterused' NUMERIC,  'Cementused' NUMERIC,  'Insertmeth' TEXT,  'Shovannul' NUMERIC,  'Tremiepipe' NUMERIC,  'Revcirc' NUMERIC,  'Status' TEXT,  'Statusdate' TEXT,  'Statustime' NUMERIC,  'Party' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver30' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Depthfrom, Depthto))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO GRAVEL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Gravel::Validation;
  use Moose;
  extends 'Hydstra::Gravel';

 has '+gravel_depthfrom' => ( required => 1, default => -999, ); 
 has '+gravel_outdiam' => (  default => -999, ); 
 has '+gravel_station' => ( required => 1,  ); 
 has '+gravel_depthto' => ( required => 1,  ); 
 has '+gravel_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gravel;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GRAVEL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gravel table 

=cut

subtype 'GravelUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelRevcirc', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelInsertmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelAnulgrad', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GravelCementused', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'GravelInsdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelShovannul', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelRectype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelDbver30', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelStatusdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelOutdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelSizeto', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GravelType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelAnuliinter', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GravelStatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelWaterused', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'GravelSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelSizefrom', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GravelSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelTremiepipe', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GravelQuantity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GravelParty', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GravelUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelStatustime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelAnultype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gravel_usermod'  => ( is => 'rw', isa => 'GravelUsermod' ); 
 has 'gravel_revcirc'  => ( is => 'rw', isa => 'GravelRevcirc' ); 
 has 'gravel_insertmeth'  => ( is => 'rw', isa => 'GravelInsertmeth' ); 
 has 'gravel_anulgrad'  => ( is => 'rw', isa => 'GravelAnulgrad' ); 
 has 'gravel_timemod'  => ( is => 'rw', isa => 'GravelTimemod' ); 
 has 'gravel_datemod'  => ( is => 'rw', isa => 'GravelDatemod' ); 
 has 'gravel_depthfrom'  => ( is => 'rw', isa => 'GravelDepthfrom' ); 
 has 'gravel_cementused'  => ( is => 'rw', isa => 'GravelCementused' ); 
 has 'gravel_insdiam'  => ( is => 'rw', isa => 'GravelInsdiam' ); 
 has 'gravel_shovannul'  => ( is => 'rw', isa => 'GravelShovannul' ); 
 has 'gravel_rectype'  => ( is => 'rw', isa => 'GravelRectype' ); 
 has 'gravel_dbver30'  => ( is => 'rw', isa => 'GravelDbver30' ); 
 has 'gravel_statusdate'  => ( is => 'rw', isa => 'GravelStatusdate' ); 
 has 'gravel_outdiam'  => ( is => 'rw', isa => 'GravelOutdiam' ); 
 has 'gravel_spare3'  => ( is => 'rw', isa => 'GravelSpare3' ); 
 has 'gravel_sizeto'  => ( is => 'rw', isa => 'GravelSizeto' ); 
 has 'gravel_type'  => ( is => 'rw', isa => 'GravelType' ); 
 has 'gravel_anuliinter'  => ( is => 'rw', isa => 'GravelAnuliinter' ); 
 has 'gravel_status'  => ( is => 'rw', isa => 'GravelStatus' ); 
 has 'gravel_timecreate'  => ( is => 'rw', isa => 'GravelTimecreate' ); 
 has 'gravel_waterused'  => ( is => 'rw', isa => 'GravelWaterused' ); 
 has 'gravel_spare2'  => ( is => 'rw', isa => 'GravelSpare2' ); 
 has 'gravel_sizefrom'  => ( is => 'rw', isa => 'GravelSizefrom' ); 
 has 'gravel_spare1'  => ( is => 'rw', isa => 'GravelSpare1' ); 
 has 'gravel_tremiepipe'  => ( is => 'rw', isa => 'GravelTremiepipe' ); 
 has 'gravel_station'  => ( is => 'rw', isa => 'GravelStation' ); 
 has 'gravel_quantity'  => ( is => 'rw', isa => 'GravelQuantity' ); 
 has 'gravel_depthto'  => ( is => 'rw', isa => 'GravelDepthto' ); 
 has 'gravel_party'  => ( is => 'rw', isa => 'GravelParty' ); 
 has 'gravel_datecreate'  => ( is => 'rw', isa => 'GravelDatecreate' ); 
 has 'gravel_hole'  => ( is => 'rw', isa => 'GravelHole' ); 
 has 'gravel_usercreate'  => ( is => 'rw', isa => 'GravelUsercreate' ); 
 has 'gravel_statustime'  => ( is => 'rw', isa => 'GravelStatustime' ); 
 has 'gravel_anultype'  => ( is => 'rw', isa => 'GravelAnultype' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables gravel is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole depthfrom depthto );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables gravel is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables gravel is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole depthfrom depthto rectype type insdiam outdiam anultype anuliinter anulgrad sizefrom sizeto quantity waterused cementused insertmeth shovannul tremiepipe revcirc status statusdate statustime party spare1 spare2 spare3 dbver30 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GRAVEL ( 'Station' TEXT,  'Hole' NUMERIC,  'Depthfrom' NUMERIC,  'Depthto' NUMERIC,  'Rectype' TEXT,  'Type' TEXT,  'Insdiam' NUMERIC,  'Outdiam' NUMERIC,  'Anultype' TEXT,  'Anuliinter' NUMERIC,  'Anulgrad' TEXT,  'Sizefrom' NUMERIC,  'Sizeto' NUMERIC,  'Quantity' NUMERIC,  'Waterused' NUMERIC,  'Cementused' NUMERIC,  'Insertmeth' TEXT,  'Shovannul' NUMERIC,  'Tremiepipe' NUMERIC,  'Revcirc' NUMERIC,  'Status' TEXT,  'Statusdate' TEXT,  'Statustime' NUMERIC,  'Party' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver30' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Depthfrom, Depthto))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO GRAVEL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|endtime|enddate|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Gravel::Validation;
  use Moose;
  extends 'Hydstra::Gravel';

 has '+gravel_depthfrom' => ( required => 1, default => -999, ); 
 has '+gravel_outdiam' => (  default => -999, ); 
 has '+gravel_station' => ( required => 1,  ); 
 has '+gravel_depthto' => ( required => 1,  ); 
 has '+gravel_hole' => ( required => 1, default => 1, ); 

  
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
package Hydstra::Gravel;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GRAVEL';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gravel table 

=cut

subtype 'GravelUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelRevcirc', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelInsertmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelAnulgrad', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GravelCementused', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'GravelInsdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelShovannul', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelRectype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelDbver30', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelStatusdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelOutdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelSizeto', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GravelType', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelAnuliinter', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GravelStatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelWaterused', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'GravelSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelSizefrom', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'GravelSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GravelTremiepipe', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GravelStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GravelQuantity', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GravelDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GravelParty', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GravelHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GravelUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GravelStatustime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GravelAnultype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'gravel_usermod'  => ( is => 'rw', isa => 'GravelUsermod' ); 
 has 'gravel_revcirc'  => ( is => 'rw', isa => 'GravelRevcirc' ); 
 has 'gravel_insertmeth'  => ( is => 'rw', isa => 'GravelInsertmeth' ); 
 has 'gravel_anulgrad'  => ( is => 'rw', isa => 'GravelAnulgrad' ); 
 has 'gravel_timemod'  => ( is => 'rw', isa => 'GravelTimemod' ); 
 has 'gravel_datemod'  => ( is => 'rw', isa => 'GravelDatemod' ); 
 has 'gravel_depthfrom'  => ( is => 'rw', isa => 'GravelDepthfrom' ); 
 has 'gravel_cementused'  => ( is => 'rw', isa => 'GravelCementused' ); 
 has 'gravel_insdiam'  => ( is => 'rw', isa => 'GravelInsdiam' ); 
 has 'gravel_shovannul'  => ( is => 'rw', isa => 'GravelShovannul' ); 
 has 'gravel_rectype'  => ( is => 'rw', isa => 'GravelRectype' ); 
 has 'gravel_dbver30'  => ( is => 'rw', isa => 'GravelDbver30' ); 
 has 'gravel_statusdate'  => ( is => 'rw', isa => 'GravelStatusdate' ); 
 has 'gravel_outdiam'  => ( is => 'rw', isa => 'GravelOutdiam' ); 
 has 'gravel_spare3'  => ( is => 'rw', isa => 'GravelSpare3' ); 
 has 'gravel_sizeto'  => ( is => 'rw', isa => 'GravelSizeto' ); 
 has 'gravel_type'  => ( is => 'rw', isa => 'GravelType' ); 
 has 'gravel_anuliinter'  => ( is => 'rw', isa => 'GravelAnuliinter' ); 
 has 'gravel_status'  => ( is => 'rw', isa => 'GravelStatus' ); 
 has 'gravel_timecreate'  => ( is => 'rw', isa => 'GravelTimecreate' ); 
 has 'gravel_waterused'  => ( is => 'rw', isa => 'GravelWaterused' ); 
 has 'gravel_spare2'  => ( is => 'rw', isa => 'GravelSpare2' ); 
 has 'gravel_sizefrom'  => ( is => 'rw', isa => 'GravelSizefrom' ); 
 has 'gravel_spare1'  => ( is => 'rw', isa => 'GravelSpare1' ); 
 has 'gravel_tremiepipe'  => ( is => 'rw', isa => 'GravelTremiepipe' ); 
 has 'gravel_station'  => ( is => 'rw', isa => 'GravelStation' ); 
 has 'gravel_quantity'  => ( is => 'rw', isa => 'GravelQuantity' ); 
 has 'gravel_depthto'  => ( is => 'rw', isa => 'GravelDepthto' ); 
 has 'gravel_party'  => ( is => 'rw', isa => 'GravelParty' ); 
 has 'gravel_datecreate'  => ( is => 'rw', isa => 'GravelDatecreate' ); 
 has 'gravel_hole'  => ( is => 'rw', isa => 'GravelHole' ); 
 has 'gravel_usercreate'  => ( is => 'rw', isa => 'GravelUsercreate' ); 
 has 'gravel_statustime'  => ( is => 'rw', isa => 'GravelStatustime' ); 
 has 'gravel_anultype'  => ( is => 'rw', isa => 'GravelAnultype' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables gravel is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole depthfrom depthto );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables gravel is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables gravel is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole depthfrom depthto rectype type insdiam outdiam anultype anuliinter anulgrad sizefrom sizeto quantity waterused cementused insertmeth shovannul tremiepipe revcirc status statusdate statustime party spare1 spare2 spare3 dbver30 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GRAVEL ( 'Station' TEXT,  'Hole' NUMERIC,  'Depthfrom' NUMERIC,  'Depthto' NUMERIC,  'Rectype' TEXT,  'Type' TEXT,  'Insdiam' NUMERIC,  'Outdiam' NUMERIC,  'Anultype' TEXT,  'Anuliinter' NUMERIC,  'Anulgrad' TEXT,  'Sizefrom' NUMERIC,  'Sizeto' NUMERIC,  'Quantity' NUMERIC,  'Waterused' NUMERIC,  'Cementused' NUMERIC,  'Insertmeth' TEXT,  'Shovannul' NUMERIC,  'Tremiepipe' NUMERIC,  'Revcirc' NUMERIC,  'Status' TEXT,  'Statusdate' TEXT,  'Statustime' NUMERIC,  'Party' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver30' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Depthfrom, Depthto))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO GRAVEL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

=head2 id_date()
  
  Tell me whether the field is a date field

=cut

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|endtime|enddate|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Gravel::Validation;
  use Moose;
  extends 'Hydstra::Gravel';

 has '+gravel_depthfrom' => ( required => 1, default => -999, ); 
 has '+gravel_outdiam' => (  default => -999, ); 
 has '+gravel_station' => ( required => 1,  ); 
 has '+gravel_depthto' => ( required => 1,  ); 
 has '+gravel_hole' => ( required => 1, default => 1, ); 

  
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


{
package Hydstra::Lithgeo;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'LITHGEO';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a lithgeo table 

=cut

subtype 'LithgeoUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoDate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'LithgeoInterpret', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithgeoRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoComments', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'LithgeoDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'LithgeoDbver25', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithgeoDepthfrom', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithgeoSorting', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoFracture', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoPorosity', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithgeoCoherence', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoFeel', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoShape', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoFossils', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoSource', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithgeoTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'LithgeoColor', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'LithgeoSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithgeoWeather', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoPerson', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'LithgeoVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'LithgeoSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'LithgeoStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'LithgeoDepthto', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'LithgeoRockdesc', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'LithgeoGrainsize', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'LithgeoStructure', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'LithgeoHardness', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'lithgeo_usermod'  => ( is => 'rw', isa => 'LithgeoUsermod' ); 
 has 'lithgeo_date'  => ( is => 'rw', isa => 'LithgeoDate' ); 
 has 'lithgeo_interpret'  => ( is => 'rw', isa => 'LithgeoInterpret' ); 
 has 'lithgeo_timemod'  => ( is => 'rw', isa => 'LithgeoTimemod' ); 
 has 'lithgeo_rocktype'  => ( is => 'rw', isa => 'LithgeoRocktype' ); 
 has 'lithgeo_comments'  => ( is => 'rw', isa => 'LithgeoComments' ); 
 has 'lithgeo_datemod'  => ( is => 'rw', isa => 'LithgeoDatemod' ); 
 has 'lithgeo_dbver25'  => ( is => 'rw', isa => 'LithgeoDbver25' ); 
 has 'lithgeo_depthfrom'  => ( is => 'rw', isa => 'LithgeoDepthfrom' ); 
 has 'lithgeo_sorting'  => ( is => 'rw', isa => 'LithgeoSorting' ); 
 has 'lithgeo_fracture'  => ( is => 'rw', isa => 'LithgeoFracture' ); 
 has 'lithgeo_porosity'  => ( is => 'rw', isa => 'LithgeoPorosity' ); 
 has 'lithgeo_spare3'  => ( is => 'rw', isa => 'LithgeoSpare3' ); 
 has 'lithgeo_coherence'  => ( is => 'rw', isa => 'LithgeoCoherence' ); 
 has 'lithgeo_feel'  => ( is => 'rw', isa => 'LithgeoFeel' ); 
 has 'lithgeo_shape'  => ( is => 'rw', isa => 'LithgeoShape' ); 
 has 'lithgeo_fossils'  => ( is => 'rw', isa => 'LithgeoFossils' ); 
 has 'lithgeo_source'  => ( is => 'rw', isa => 'LithgeoSource' ); 
 has 'lithgeo_time'  => ( is => 'rw', isa => 'LithgeoTime' ); 
 has 'lithgeo_timecreate'  => ( is => 'rw', isa => 'LithgeoTimecreate' ); 
 has 'lithgeo_color'  => ( is => 'rw', isa => 'LithgeoColor' ); 
 has 'lithgeo_spare2'  => ( is => 'rw', isa => 'LithgeoSpare2' ); 
 has 'lithgeo_weather'  => ( is => 'rw', isa => 'LithgeoWeather' ); 
 has 'lithgeo_person'  => ( is => 'rw', isa => 'LithgeoPerson' ); 
 has 'lithgeo_verified'  => ( is => 'rw', isa => 'LithgeoVerified' ); 
 has 'lithgeo_spare1'  => ( is => 'rw', isa => 'LithgeoSpare1' ); 
 has 'lithgeo_station'  => ( is => 'rw', isa => 'LithgeoStation' ); 
 has 'lithgeo_depthto'  => ( is => 'rw', isa => 'LithgeoDepthto' ); 
 has 'lithgeo_rockdesc'  => ( is => 'rw', isa => 'LithgeoRockdesc' ); 
 has 'lithgeo_datecreate'  => ( is => 'rw', isa => 'LithgeoDatecreate' ); 
 has 'lithgeo_grainsize'  => ( is => 'rw', isa => 'LithgeoGrainsize' ); 
 has 'lithgeo_hole'  => ( is => 'rw', isa => 'LithgeoHole' ); 
 has 'lithgeo_structure'  => ( is => 'rw', isa => 'LithgeoStructure' ); 
 has 'lithgeo_usercreate'  => ( is => 'rw', isa => 'LithgeoUsercreate' ); 
 has 'lithgeo_hardness'  => ( is => 'rw', isa => 'LithgeoHardness' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables lithgeo is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole interpret depthfrom );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables lithgeo is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables lithgeo is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole interpret depthfrom depthto date time rocktype person source rockdesc color weather grainsize shape sorting hardness coherence structure feel fracture porosity fossils comments verified spare1 spare2 spare3 dbver25 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS LITHGEO ( 'Station' TEXT,  'Hole' NUMERIC,  'Interpret' TEXT,  'Depthfrom' NUMERIC,  'Depthto' NUMERIC,  'Date' TEXT,  'Time' NUMERIC,  'Rocktype' TEXT,  'Person' TEXT,  'Source' TEXT,  'Rockdesc' TEXT,  'Color' TEXT,  'Weather' TEXT,  'Grainsize' TEXT,  'Shape' TEXT,  'Sorting' TEXT,  'Hardness' TEXT,  'Coherence' TEXT,  'Structure' TEXT,  'Feel' TEXT,  'Fracture' TEXT,  'Porosity' TEXT,  'Fossils' TEXT,  'Comments' TEXT,  'Verified' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver25' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Interpret, Depthfrom))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO LITHGEO VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

=head2 id_date()
  
  Tell me whether the field is a date field

=cut

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time|testdate|startdate|starttime|recdate|rectime|analdate|analtime|statdate|stattime|endtime|enddate|sigdate|cumdurat).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Lithgeo::Validation;
  use Moose;
  extends 'Hydstra::Lithgeo';

 has '+lithgeo_date' => (  default => 18991231, ); 
 has '+lithgeo_interpret' => ( required => 1, default => 1, ); 
 has '+lithgeo_depthfrom' => ( required => 1, default => -999, ); 
 has '+lithgeo_time' => (  default => 1200, ); 
 has '+lithgeo_station' => ( required => 1,  ); 
 has '+lithgeo_hole' => ( required => 1, default => 1, ); 

  
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

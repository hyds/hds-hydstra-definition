
{
package Hydstra::Aquifer;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'AQUIFER';

use constant CHILD_OF => qw( gwhole );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a aquifer table 

=cut

subtype 'AquiferSpare5', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AquiferSalinvalue', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'AquiferUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferSpare4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AquiferPh', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [1].~"  };
subtype 'AquiferYield', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'AquiferYielddesc', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'AquiferRocktype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AquiferDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'AquiferDepthfrom', as 'Num', where { length($_) <= 12 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [12] and decimals [3].~"  };
subtype 'AquiferName', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferDuration', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'AquiferSpare3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AquiferSwlvalue', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'AquiferDdlvalue', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'AquiferTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'AquiferDbver27', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AquiferThickdesc', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferWbzcat', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AquiferVerified', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'AquiferSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'AquiferConduct', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,10})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [0].~"  };
subtype 'AquiferStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'AquiferDepthto', as 'Num', where { length($_) <= 12 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [12] and decimals [3].~"  };
subtype 'AquiferSalinity', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'AquiferHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'AquiferComment', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'AquiferEquip', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'AquiferTestdepth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'AquiferYldmeaseq', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'aquifer_spare5'  => ( is => 'rw', isa => 'AquiferSpare5' ); 
 has 'aquifer_salinvalue'  => ( is => 'rw', isa => 'AquiferSalinvalue' ); 
 has 'aquifer_usermod'  => ( is => 'rw', isa => 'AquiferUsermod' ); 
 has 'aquifer_spare4'  => ( is => 'rw', isa => 'AquiferSpare4' ); 
 has 'aquifer_ph'  => ( is => 'rw', isa => 'AquiferPh' ); 
 has 'aquifer_yield'  => ( is => 'rw', isa => 'AquiferYield' ); 
 has 'aquifer_yielddesc'  => ( is => 'rw', isa => 'AquiferYielddesc' ); 
 has 'aquifer_rocktype'  => ( is => 'rw', isa => 'AquiferRocktype' ); 
 has 'aquifer_timemod'  => ( is => 'rw', isa => 'AquiferTimemod' ); 
 has 'aquifer_datemod'  => ( is => 'rw', isa => 'AquiferDatemod' ); 
 has 'aquifer_depthfrom'  => ( is => 'rw', isa => 'AquiferDepthfrom' ); 
 has 'aquifer_name'  => ( is => 'rw', isa => 'AquiferName' ); 
 has 'aquifer_duration'  => ( is => 'rw', isa => 'AquiferDuration' ); 
 has 'aquifer_spare3'  => ( is => 'rw', isa => 'AquiferSpare3' ); 
 has 'aquifer_swlvalue'  => ( is => 'rw', isa => 'AquiferSwlvalue' ); 
 has 'aquifer_ddlvalue'  => ( is => 'rw', isa => 'AquiferDdlvalue' ); 
 has 'aquifer_timecreate'  => ( is => 'rw', isa => 'AquiferTimecreate' ); 
 has 'aquifer_dbver27'  => ( is => 'rw', isa => 'AquiferDbver27' ); 
 has 'aquifer_thickdesc'  => ( is => 'rw', isa => 'AquiferThickdesc' ); 
 has 'aquifer_wbzcat'  => ( is => 'rw', isa => 'AquiferWbzcat' ); 
 has 'aquifer_spare2'  => ( is => 'rw', isa => 'AquiferSpare2' ); 
 has 'aquifer_verified'  => ( is => 'rw', isa => 'AquiferVerified' ); 
 has 'aquifer_spare1'  => ( is => 'rw', isa => 'AquiferSpare1' ); 
 has 'aquifer_conduct'  => ( is => 'rw', isa => 'AquiferConduct' ); 
 has 'aquifer_station'  => ( is => 'rw', isa => 'AquiferStation' ); 
 has 'aquifer_depthto'  => ( is => 'rw', isa => 'AquiferDepthto' ); 
 has 'aquifer_salinity'  => ( is => 'rw', isa => 'AquiferSalinity' ); 
 has 'aquifer_datecreate'  => ( is => 'rw', isa => 'AquiferDatecreate' ); 
 has 'aquifer_hole'  => ( is => 'rw', isa => 'AquiferHole' ); 
 has 'aquifer_comment'  => ( is => 'rw', isa => 'AquiferComment' ); 
 has 'aquifer_equip'  => ( is => 'rw', isa => 'AquiferEquip' ); 
 has 'aquifer_usercreate'  => ( is => 'rw', isa => 'AquiferUsercreate' ); 
 has 'aquifer_testdepth'  => ( is => 'rw', isa => 'AquiferTestdepth' ); 
 has 'aquifer_yldmeaseq'  => ( is => 'rw', isa => 'AquiferYldmeaseq' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables aquifer is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole depthfrom );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables aquifer is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables aquifer is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole depthfrom depthto name testdepth thickdesc equip wbzcat duration ddlvalue swlvalue yield yielddesc yldmeaseq salinvalue salinity rocktype conduct ph verified comment spare1 spare2 spare3 spare4 spare5 dbver27 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS AQUIFER ( 'Station' TEXT,  'Hole' NUMERIC,  'Depthfrom' NUMERIC,  'Depthto' NUMERIC,  'Name' TEXT,  'Testdepth' NUMERIC,  'Thickdesc' TEXT,  'Equip' TEXT,  'Wbzcat' TEXT,  'Duration' NUMERIC,  'Ddlvalue' NUMERIC,  'Swlvalue' NUMERIC,  'Yield' NUMERIC,  'Yielddesc' TEXT,  'Yldmeaseq' TEXT,  'Salinvalue' NUMERIC,  'Salinity' TEXT,  'Rocktype' TEXT,  'Conduct' NUMERIC,  'Ph' NUMERIC,  'Verified' NUMERIC,  'Comment' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Spare4' TEXT,  'Spare5' TEXT,  'Dbver27' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Depthfrom))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO AQUIFER VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Aquifer::Validation;
  use Moose;
  extends 'Hydstra::Aquifer';

 has '+aquifer_depthfrom' => ( required => 1, default => -999, ); 
 has '+aquifer_station' => ( required => 1,  ); 
 has '+aquifer_hole' => ( required => 1, default => 1, ); 

  
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

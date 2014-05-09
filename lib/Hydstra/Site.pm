
{
package Hydstra::Site;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SITE';

  

use constant PARENT_OF => qw( stnini areewa nrstn swfsite secthed wrehouse rateper summary bench aresite gwhole station history gaugings period sectsurv areasmt sshift samples aremon ttabhed ratehed tshift aresuse insthist peaktime );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a site table 

=cut

subtype 'SiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteStname', as 'Str', where { length($_) <= 55 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [55] char, not [$length] characters.~"  };
subtype 'SiteMapname', as 'Str', where { length($_) <= 17 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [17] char, not [$length] characters.~"  };
subtype 'SiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SiteDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SiteCategory11', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteCategory13', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteCategory2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteLatitude', as 'Num', where { length($_) <= 12 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [12] and decimals [8].~"  };
subtype 'SiteEnteredby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteOrgcode', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SiteDbver38', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SiteCategory9', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteLongitude', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [8].~"  };
subtype 'SiteParent', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SitePosacc', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteTimezone', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'SiteCategory7', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteRegion', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteActive', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SiteLocal_map', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SiteCategory8', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteBarcode', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SiteCategory6', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteCategory14', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteCategory3', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteMeridian', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SiteShortname', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SiteElevacc', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteCategory4', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SiteCategory10', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteZone', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SiteQuarter', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SiteCategory5', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteRange', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SiteSection', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SiteStntype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SiteElev', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'SiteGrdatum', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SiteSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SiteCategory15', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteNorthing', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [1].~"  };
subtype 'SiteCommence', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SiteLldatum', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SiteCease', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SiteSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SiteEasting', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [1].~"  };
subtype 'SiteOwner', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SiteTownship', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SiteCategory1', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SiteCategory12', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteCheckedby', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteComment', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'SiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SiteQquarter', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };

 has 'site_usermod'  => ( is => 'rw', isa => 'SiteUsermod' ); 
 has 'site_stname'  => ( is => 'rw', isa => 'SiteStname' ); 
 has 'site_mapname'  => ( is => 'rw', isa => 'SiteMapname' ); 
 has 'site_timemod'  => ( is => 'rw', isa => 'SiteTimemod' ); 
 has 'site_datemod'  => ( is => 'rw', isa => 'SiteDatemod' ); 
 has 'site_category11'  => ( is => 'rw', isa => 'SiteCategory11' ); 
 has 'site_category13'  => ( is => 'rw', isa => 'SiteCategory13' ); 
 has 'site_category2'  => ( is => 'rw', isa => 'SiteCategory2' ); 
 has 'site_latitude'  => ( is => 'rw', isa => 'SiteLatitude' ); 
 has 'site_enteredby'  => ( is => 'rw', isa => 'SiteEnteredby' ); 
 has 'site_orgcode'  => ( is => 'rw', isa => 'SiteOrgcode' ); 
 has 'site_dbver38'  => ( is => 'rw', isa => 'SiteDbver38' ); 
 has 'site_category9'  => ( is => 'rw', isa => 'SiteCategory9' ); 
 has 'site_longitude'  => ( is => 'rw', isa => 'SiteLongitude' ); 
 has 'site_parent'  => ( is => 'rw', isa => 'SiteParent' ); 
 has 'site_posacc'  => ( is => 'rw', isa => 'SitePosacc' ); 
 has 'site_timezone'  => ( is => 'rw', isa => 'SiteTimezone' ); 
 has 'site_category7'  => ( is => 'rw', isa => 'SiteCategory7' ); 
 has 'site_region'  => ( is => 'rw', isa => 'SiteRegion' ); 
 has 'site_active'  => ( is => 'rw', isa => 'SiteActive' ); 
 has 'site_local_map'  => ( is => 'rw', isa => 'SiteLocal_map' ); 
 has 'site_category8'  => ( is => 'rw', isa => 'SiteCategory8' ); 
 has 'site_barcode'  => ( is => 'rw', isa => 'SiteBarcode' ); 
 has 'site_category6'  => ( is => 'rw', isa => 'SiteCategory6' ); 
 has 'site_category14'  => ( is => 'rw', isa => 'SiteCategory14' ); 
 has 'site_category3'  => ( is => 'rw', isa => 'SiteCategory3' ); 
 has 'site_meridian'  => ( is => 'rw', isa => 'SiteMeridian' ); 
 has 'site_shortname'  => ( is => 'rw', isa => 'SiteShortname' ); 
 has 'site_elevacc'  => ( is => 'rw', isa => 'SiteElevacc' ); 
 has 'site_category4'  => ( is => 'rw', isa => 'SiteCategory4' ); 
 has 'site_timecreate'  => ( is => 'rw', isa => 'SiteTimecreate' ); 
 has 'site_category10'  => ( is => 'rw', isa => 'SiteCategory10' ); 
 has 'site_zone'  => ( is => 'rw', isa => 'SiteZone' ); 
 has 'site_quarter'  => ( is => 'rw', isa => 'SiteQuarter' ); 
 has 'site_category5'  => ( is => 'rw', isa => 'SiteCategory5' ); 
 has 'site_range'  => ( is => 'rw', isa => 'SiteRange' ); 
 has 'site_section'  => ( is => 'rw', isa => 'SiteSection' ); 
 has 'site_stntype'  => ( is => 'rw', isa => 'SiteStntype' ); 
 has 'site_elev'  => ( is => 'rw', isa => 'SiteElev' ); 
 has 'site_grdatum'  => ( is => 'rw', isa => 'SiteGrdatum' ); 
 has 'site_spare2'  => ( is => 'rw', isa => 'SiteSpare2' ); 
 has 'site_category15'  => ( is => 'rw', isa => 'SiteCategory15' ); 
 has 'site_northing'  => ( is => 'rw', isa => 'SiteNorthing' ); 
 has 'site_commence'  => ( is => 'rw', isa => 'SiteCommence' ); 
 has 'site_lldatum'  => ( is => 'rw', isa => 'SiteLldatum' ); 
 has 'site_cease'  => ( is => 'rw', isa => 'SiteCease' ); 
 has 'site_spare1'  => ( is => 'rw', isa => 'SiteSpare1' ); 
 has 'site_easting'  => ( is => 'rw', isa => 'SiteEasting' ); 
 has 'site_owner'  => ( is => 'rw', isa => 'SiteOwner' ); 
 has 'site_station'  => ( is => 'rw', isa => 'SiteStation' ); 
 has 'site_township'  => ( is => 'rw', isa => 'SiteTownship' ); 
 has 'site_category1'  => ( is => 'rw', isa => 'SiteCategory1' ); 
 has 'site_datecreate'  => ( is => 'rw', isa => 'SiteDatecreate' ); 
 has 'site_category12'  => ( is => 'rw', isa => 'SiteCategory12' ); 
 has 'site_checkedby'  => ( is => 'rw', isa => 'SiteCheckedby' ); 
 has 'site_comment'  => ( is => 'rw', isa => 'SiteComment' ); 
 has 'site_usercreate'  => ( is => 'rw', isa => 'SiteUsercreate' ); 
 has 'site_qquarter'  => ( is => 'rw', isa => 'SiteQquarter' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables site is a parent of.

=cut
  
sub keys{
  my @kys = qw( station );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables site is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables site is a child of.

=cut
  
sub child_of{
  return 0;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station parent stname shortname mapname zone easting northing grdatum latitude longitude lldatum posacc elev elevacc local_map timezone qquarter quarter section township range meridian active owner commence cease stntype region orgcode barcode category1 category2 category3 category4 category5 category6 category7 category8 category9 category10 category11 category12 category13 category14 category15 spare1 spare2 enteredby checkedby comment dbver38 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SITE ( 'Station' TEXT,  'Parent' TEXT,  'Stname' TEXT,  'Shortname' TEXT,  'Mapname' TEXT,  'Zone' NUMERIC,  'Easting' NUMERIC,  'Northing' NUMERIC,  'Grdatum' TEXT,  'Latitude' NUMERIC,  'Longitude' NUMERIC,  'Lldatum' TEXT,  'Posacc' TEXT,  'Elev' NUMERIC,  'Elevacc' TEXT,  'Local_map' TEXT,  'Timezone' NUMERIC,  'Qquarter' TEXT,  'Quarter' TEXT,  'Section' NUMERIC,  'Township' TEXT,  'Range' TEXT,  'Meridian' TEXT,  'Active' NUMERIC,  'Owner' TEXT,  'Commence' TEXT,  'Cease' TEXT,  'Stntype' TEXT,  'Region' TEXT,  'Orgcode' TEXT,  'Barcode' TEXT,  'Category1' TEXT,  'Category2' TEXT,  'Category3' TEXT,  'Category4' TEXT,  'Category5' TEXT,  'Category6' TEXT,  'Category7' TEXT,  'Category8' TEXT,  'Category9' TEXT,  'Category10' TEXT,  'Category11' TEXT,  'Category12' TEXT,  'Category13' TEXT,  'Category14' TEXT,  'Category15' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Enteredby' TEXT,  'Checkedby' TEXT,  'Comment' TEXT,  'Dbver38' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO SITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Site::Validation;
  use Moose;
  extends 'Hydstra::Site';

 has '+site_station' => ( required => 1,  ); 

  
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

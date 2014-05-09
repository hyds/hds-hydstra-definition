
{
package Hydstra::Gwhole;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWHOLE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( lithstra gwpurp gwpipe gwtreat gwdevel gravel drilling lithgeo aquifer lithdril );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwhole table 

=cut

subtype 'GwholeSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwholeSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwholeUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeConststat', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeUnlicfst', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'GwholeStartdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwholeYield', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'GwholeTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwholeLinkstn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwholeYielddesc', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'GwholeMaxdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GwholeDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwholeDbver9', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeConstmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeLogavail', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholePartbkfil', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeOwnertype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeStatrecvd', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwholeEnddate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwholeHeadcap', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeDatumagl', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };
subtype 'GwholeParent', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwholeHgunumber', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [0].~"  };
subtype 'GwholeDepthdrill', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GwholeUnlicsur', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'GwholeSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwholeConsttype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeSpatvalid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeCaseshoe', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeMeascode', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeHeadvalve', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeOwnername', as 'Str', where { length($_) <= 80 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [80] char, not [$length] characters.~"  };
subtype 'GwholeSwl', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GwholeDdlvalue', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [3].~"  };
subtype 'GwholePumpdepth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GwholeDepthcompl', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GwholeTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwholeDrillic', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'GwholeAsstdrillr', as 'Str', where { length($_) <= 50 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [50] char, not [$length] characters.~"  };
subtype 'GwholeBoretype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeAbandnmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwholeSitemarker', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeObsfreq', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeContractor', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwholeSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwholeSalincode', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwholeAirdepth', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'GwholeInstrument', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeHeadopen', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeSalinity', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'GwholeDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwholeCapmethod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwholeComment', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'GwholeUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwholeBullcap', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwholeLicvalid', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'gwhole_spare5'  => ( is => 'rw', isa => 'GwholeSpare5' ); 
 has 'gwhole_spare4'  => ( is => 'rw', isa => 'GwholeSpare4' ); 
 has 'gwhole_usermod'  => ( is => 'rw', isa => 'GwholeUsermod' ); 
 has 'gwhole_conststat'  => ( is => 'rw', isa => 'GwholeConststat' ); 
 has 'gwhole_unlicfst'  => ( is => 'rw', isa => 'GwholeUnlicfst' ); 
 has 'gwhole_startdate'  => ( is => 'rw', isa => 'GwholeStartdate' ); 
 has 'gwhole_yield'  => ( is => 'rw', isa => 'GwholeYield' ); 
 has 'gwhole_timemod'  => ( is => 'rw', isa => 'GwholeTimemod' ); 
 has 'gwhole_linkstn'  => ( is => 'rw', isa => 'GwholeLinkstn' ); 
 has 'gwhole_yielddesc'  => ( is => 'rw', isa => 'GwholeYielddesc' ); 
 has 'gwhole_maxdiam'  => ( is => 'rw', isa => 'GwholeMaxdiam' ); 
 has 'gwhole_datemod'  => ( is => 'rw', isa => 'GwholeDatemod' ); 
 has 'gwhole_dbver9'  => ( is => 'rw', isa => 'GwholeDbver9' ); 
 has 'gwhole_constmeth'  => ( is => 'rw', isa => 'GwholeConstmeth' ); 
 has 'gwhole_logavail'  => ( is => 'rw', isa => 'GwholeLogavail' ); 
 has 'gwhole_partbkfil'  => ( is => 'rw', isa => 'GwholePartbkfil' ); 
 has 'gwhole_ownertype'  => ( is => 'rw', isa => 'GwholeOwnertype' ); 
 has 'gwhole_statrecvd'  => ( is => 'rw', isa => 'GwholeStatrecvd' ); 
 has 'gwhole_enddate'  => ( is => 'rw', isa => 'GwholeEnddate' ); 
 has 'gwhole_headcap'  => ( is => 'rw', isa => 'GwholeHeadcap' ); 
 has 'gwhole_datumagl'  => ( is => 'rw', isa => 'GwholeDatumagl' ); 
 has 'gwhole_parent'  => ( is => 'rw', isa => 'GwholeParent' ); 
 has 'gwhole_hgunumber'  => ( is => 'rw', isa => 'GwholeHgunumber' ); 
 has 'gwhole_depthdrill'  => ( is => 'rw', isa => 'GwholeDepthdrill' ); 
 has 'gwhole_unlicsur'  => ( is => 'rw', isa => 'GwholeUnlicsur' ); 
 has 'gwhole_spare3'  => ( is => 'rw', isa => 'GwholeSpare3' ); 
 has 'gwhole_consttype'  => ( is => 'rw', isa => 'GwholeConsttype' ); 
 has 'gwhole_spatvalid'  => ( is => 'rw', isa => 'GwholeSpatvalid' ); 
 has 'gwhole_caseshoe'  => ( is => 'rw', isa => 'GwholeCaseshoe' ); 
 has 'gwhole_meascode'  => ( is => 'rw', isa => 'GwholeMeascode' ); 
 has 'gwhole_headvalve'  => ( is => 'rw', isa => 'GwholeHeadvalve' ); 
 has 'gwhole_ownername'  => ( is => 'rw', isa => 'GwholeOwnername' ); 
 has 'gwhole_swl'  => ( is => 'rw', isa => 'GwholeSwl' ); 
 has 'gwhole_ddlvalue'  => ( is => 'rw', isa => 'GwholeDdlvalue' ); 
 has 'gwhole_pumpdepth'  => ( is => 'rw', isa => 'GwholePumpdepth' ); 
 has 'gwhole_depthcompl'  => ( is => 'rw', isa => 'GwholeDepthcompl' ); 
 has 'gwhole_timecreate'  => ( is => 'rw', isa => 'GwholeTimecreate' ); 
 has 'gwhole_drillic'  => ( is => 'rw', isa => 'GwholeDrillic' ); 
 has 'gwhole_asstdrillr'  => ( is => 'rw', isa => 'GwholeAsstdrillr' ); 
 has 'gwhole_boretype'  => ( is => 'rw', isa => 'GwholeBoretype' ); 
 has 'gwhole_abandnmeth'  => ( is => 'rw', isa => 'GwholeAbandnmeth' ); 
 has 'gwhole_spare2'  => ( is => 'rw', isa => 'GwholeSpare2' ); 
 has 'gwhole_sitemarker'  => ( is => 'rw', isa => 'GwholeSitemarker' ); 
 has 'gwhole_obsfreq'  => ( is => 'rw', isa => 'GwholeObsfreq' ); 
 has 'gwhole_contractor'  => ( is => 'rw', isa => 'GwholeContractor' ); 
 has 'gwhole_spare1'  => ( is => 'rw', isa => 'GwholeSpare1' ); 
 has 'gwhole_salincode'  => ( is => 'rw', isa => 'GwholeSalincode' ); 
 has 'gwhole_station'  => ( is => 'rw', isa => 'GwholeStation' ); 
 has 'gwhole_airdepth'  => ( is => 'rw', isa => 'GwholeAirdepth' ); 
 has 'gwhole_instrument'  => ( is => 'rw', isa => 'GwholeInstrument' ); 
 has 'gwhole_headopen'  => ( is => 'rw', isa => 'GwholeHeadopen' ); 
 has 'gwhole_salinity'  => ( is => 'rw', isa => 'GwholeSalinity' ); 
 has 'gwhole_datecreate'  => ( is => 'rw', isa => 'GwholeDatecreate' ); 
 has 'gwhole_capmethod'  => ( is => 'rw', isa => 'GwholeCapmethod' ); 
 has 'gwhole_hole'  => ( is => 'rw', isa => 'GwholeHole' ); 
 has 'gwhole_comment'  => ( is => 'rw', isa => 'GwholeComment' ); 
 has 'gwhole_usercreate'  => ( is => 'rw', isa => 'GwholeUsercreate' ); 
 has 'gwhole_bullcap'  => ( is => 'rw', isa => 'GwholeBullcap' ); 
 has 'gwhole_licvalid'  => ( is => 'rw', isa => 'GwholeLicvalid' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables gwhole is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables gwhole is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwhole is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole linkstn parent hgunumber depthcompl depthdrill datumagl startdate enddate statrecvd boretype ownertype ownername meascode obsfreq salinity salincode yield yielddesc swl ddlvalue logavail drillic licvalid unlicfst unlicsur contractor consttype constmeth conststat spatvalid asstdrillr abandnmeth capmethod instrument partbkfil maxdiam sitemarker headopen headcap headvalve caseshoe bullcap airdepth pumpdepth comment spare1 spare2 spare3 spare4 spare5 dbver9 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWHOLE ( 'Station' TEXT,  'Hole' NUMERIC,  'Linkstn' TEXT,  'Parent' TEXT,  'Hgunumber' NUMERIC,  'Depthcompl' NUMERIC,  'Depthdrill' NUMERIC,  'Datumagl' NUMERIC,  'Startdate' TEXT,  'Enddate' TEXT,  'Statrecvd' TEXT,  'Boretype' TEXT,  'Ownertype' TEXT,  'Ownername' TEXT,  'Meascode' TEXT,  'Obsfreq' TEXT,  'Salinity' NUMERIC,  'Salincode' TEXT,  'Yield' NUMERIC,  'Yielddesc' TEXT,  'Swl' NUMERIC,  'Ddlvalue' NUMERIC,  'Logavail' TEXT,  'Drillic' TEXT,  'Licvalid' NUMERIC,  'Unlicfst' TEXT,  'Unlicsur' TEXT,  'Contractor' TEXT,  'Consttype' TEXT,  'Constmeth' TEXT,  'Conststat' TEXT,  'Spatvalid' NUMERIC,  'Asstdrillr' TEXT,  'Abandnmeth' TEXT,  'Capmethod' TEXT,  'Instrument' TEXT,  'Partbkfil' NUMERIC,  'Maxdiam' NUMERIC,  'Sitemarker' NUMERIC,  'Headopen' NUMERIC,  'Headcap' NUMERIC,  'Headvalve' NUMERIC,  'Caseshoe' NUMERIC,  'Bullcap' NUMERIC,  'Airdepth' NUMERIC,  'Pumpdepth' NUMERIC,  'Comment' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Spare4' TEXT,  'Spare5' TEXT,  'Dbver9' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO GWHOLE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Gwhole::Validation;
  use Moose;
  extends 'Hydstra::Gwhole';

 has '+gwhole_station' => ( required => 1,  ); 
 has '+gwhole_hole' => ( required => 1, default => 1, ); 

  
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

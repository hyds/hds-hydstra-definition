
{
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Wuca TEXT,  Inactcode TEXT,  Lowmg NUMERIC,  Fgsno TEXT,  Stg10 NUMERIC,  County1 NUMERIC,  Inout TEXT,  Recordty TEXT,  Sitedirect TEXT,  Basin TEXT,  Agc50 TEXT,  Outwseq NUMERIC,  Gaugeloc TEXT,  Aquifer TEXT,  County TEXT,  Uidstation NUMERIC,  Agc5 TEXT,  Timecreate NUMERIC,  Linktyp TEXT,  Surfelev NUMERIC,  Stg50 NUMERIC,  Latlonsrc TEXT,  Agc233 TEXT,  Casdep NUMERIC,  Casname TEXT,  Calibfac NUMERIC,  Station TEXT,  Hdstatus TEXT,  Stg5 NUMERIC,  Datecreate TEXT,  Polbasin NUMERIC,  Nxlowmg NUMERIC,  Mlevst TEXT,  Stnname TEXT,  Usercreate TEXT,  Stg100 NUMERIC,  Usermod TEXT,  Agc20 TEXT,  Dbver8 NUMERIC,  Linksite NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Subtype TEXT,  Depsitenum TEXT,  Stg20 NUMERIC,  Eqowner TEXT,  Calcwind TEXT,  Solrad TEXT,  Lithfrom TEXT,  Outdist TEXT,  Mpdescript TEXT,  Lithto TEXT,  Totdepth NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Ctnstru TEXT,  Minflood NUMERIC,  Adopt TEXT,  Intendfreq NUMERIC,  Agc100 TEXT,  Scadadev NUMERIC,  Stg233 NUMERIC,  Latlonmeth TEXT,  Agc10 TEXT,  Altname TEXT,  Casdiam NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 
Field [wuca]false
Field [inactcode]false
Field [lowmg]false
Field [fgsno]false
Field [stg10]false
Field [county1]false
Field [inout]false
Field [recordty]false
Field [sitedirect]false
Field [basin]false
Field [agc50]false
Field [outwseq]false
Field [gaugeloc]false
Field [aquifer]false
Field [county]false
Field [uidstation]false
Field [agc5]false
Field [timecreate]false
Field [linktyp]false
Field [surfelev]false
Field [stg50]false
Field [latlonsrc]false
Field [agc233]false
Field [casdep]false
Field [casname]false
Field [calibfac]false
Field [station]true
Field [hdstatus]false
Field [stg5]false
Field [datecreate]false
Field [polbasin]false
Field [nxlowmg]false
Field [mlevst]false
Field [stnname]false
Field [usercreate]false
Field [stg100]false
Field [usermod]false
Field [agc20]false
Field [dbver8]false
Field [linksite]false
Field [timemod]false
Field [datemod]false
Field [subtype]false
Field [depsitenum]false
Field [stg20]false
Field [eqowner]false
Field [calcwind]false
Field [solrad]false
Field [lithfrom]false
Field [outdist]false
Field [mpdescript]false
Field [lithto]false
Field [totdepth]false
Field [fld10y]false
Field [lksize]false
Field [ctnstru]false
Field [minflood]false
Field [adopt]false
Field [intendfreq]false
Field [agc100]false
Field [scadadev]false
Field [stg233]false
Field [latlonmeth]false
Field [agc10]false
Field [altname]false
Field [casdiam]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Wuca TEXT,  Inactcode TEXT,  Lowmg NUMERIC,  Fgsno TEXT,  Stg10 NUMERIC,  County1 NUMERIC,  Inout TEXT,  Recordty TEXT,  Sitedirect TEXT,  Basin TEXT,  Agc50 TEXT,  Outwseq NUMERIC,  Gaugeloc TEXT,  Aquifer TEXT,  County TEXT,  Uidstation NUMERIC,  Agc5 TEXT,  Timecreate NUMERIC,  Linktyp TEXT,  Surfelev NUMERIC,  Stg50 NUMERIC,  Latlonsrc TEXT,  Agc233 TEXT,  Casdep NUMERIC,  Casname TEXT,  Calibfac NUMERIC,  Station TEXT,  Hdstatus TEXT,  Stg5 NUMERIC,  Datecreate TEXT,  Polbasin NUMERIC,  Nxlowmg NUMERIC,  Mlevst TEXT,  Stnname TEXT,  Usercreate TEXT,  Stg100 NUMERIC,  Usermod TEXT,  Agc20 TEXT,  Dbver8 NUMERIC,  Linksite NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Subtype TEXT,  Depsitenum TEXT,  Stg20 NUMERIC,  Eqowner TEXT,  Calcwind TEXT,  Solrad TEXT,  Lithfrom TEXT,  Outdist TEXT,  Mpdescript TEXT,  Lithto TEXT,  Totdepth NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Ctnstru TEXT,  Minflood NUMERIC,  Adopt TEXT,  Intendfreq NUMERIC,  Agc100 TEXT,  Scadadev NUMERIC,  Stg233 NUMERIC,  Latlonmeth TEXT,  Agc10 TEXT,  Altname TEXT,  Casdiam NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 
Field [wuca] key value [false]
Field [inactcode] key value [false]
Field [lowmg] key value [false]
Field [fgsno] key value [false]
Field [stg10] key value [false]
Field [county1] key value [false]
Field [inout] key value [false]
Field [recordty] key value [false]
Field [sitedirect] key value [false]
Field [basin] key value [false]
Field [agc50] key value [false]
Field [outwseq] key value [false]
Field [gaugeloc] key value [false]
Field [aquifer] key value [false]
Field [county] key value [false]
Field [uidstation] key value [false]
Field [agc5] key value [false]
Field [timecreate] key value [false]
Field [linktyp] key value [false]
Field [surfelev] key value [false]
Field [stg50] key value [false]
Field [latlonsrc] key value [false]
Field [agc233] key value [false]
Field [casdep] key value [false]
Field [casname] key value [false]
Field [calibfac] key value [false]
Field [station] key value [true]
Field [hdstatus] key value [false]
Field [stg5] key value [false]
Field [datecreate] key value [false]
Field [polbasin] key value [false]
Field [nxlowmg] key value [false]
Field [mlevst] key value [false]
Field [stnname] key value [false]
Field [usercreate] key value [false]
Field [stg100] key value [false]
Field [usermod] key value [false]
Field [agc20] key value [false]
Field [dbver8] key value [false]
Field [linksite] key value [false]
Field [timemod] key value [false]
Field [datemod] key value [false]
Field [subtype] key value [false]
Field [depsitenum] key value [false]
Field [stg20] key value [false]
Field [eqowner] key value [false]
Field [calcwind] key value [false]
Field [solrad] key value [false]
Field [lithfrom] key value [false]
Field [outdist] key value [false]
Field [mpdescript] key value [false]
Field [lithto] key value [false]
Field [totdepth] key value [false]
Field [fld10y] key value [false]
Field [lksize] key value [false]
Field [ctnstru] key value [false]
Field [minflood] key value [false]
Field [adopt] key value [false]
Field [intendfreq] key value [false]
Field [agc100] key value [false]
Field [scadadev] key value [false]
Field [stg233] key value [false]
Field [latlonmeth] key value [false]
Field [agc10] key value [false]
Field [altname] key value [false]
Field [casdiam] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Wuca TEXT,  Inactcode TEXT,  Lowmg NUMERIC,  Fgsno TEXT,  Stg10 NUMERIC,  County1 NUMERIC,  Inout TEXT,  Recordty TEXT,  Sitedirect TEXT,  Basin TEXT,  Agc50 TEXT,  Outwseq NUMERIC,  Gaugeloc TEXT,  Aquifer TEXT,  County TEXT,  Uidstation NUMERIC,  Agc5 TEXT,  Timecreate NUMERIC,  Linktyp TEXT,  Surfelev NUMERIC,  Stg50 NUMERIC,  Latlonsrc TEXT,  Agc233 TEXT,  Casdep NUMERIC,  Casname TEXT,  Calibfac NUMERIC,  Station TEXT,  Hdstatus TEXT,  Stg5 NUMERIC,  Datecreate TEXT,  Polbasin NUMERIC,  Nxlowmg NUMERIC,  Mlevst TEXT,  Stnname TEXT,  Usercreate TEXT,  Stg100 NUMERIC,  Usermod TEXT,  Agc20 TEXT,  Dbver8 NUMERIC,  Linksite NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Subtype TEXT,  Depsitenum TEXT,  Stg20 NUMERIC,  Eqowner TEXT,  Calcwind TEXT,  Solrad TEXT,  Lithfrom TEXT,  Outdist TEXT,  Mpdescript TEXT,  Lithto TEXT,  Totdepth NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Ctnstru TEXT,  Minflood NUMERIC,  Adopt TEXT,  Intendfreq NUMERIC,  Agc100 TEXT,  Scadadev NUMERIC,  Stg233 NUMERIC,  Latlonmeth TEXT,  Agc10 TEXT,  Altname TEXT,  Casdiam NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Wuca TEXT,  Inactcode TEXT,  Lowmg NUMERIC,  Fgsno TEXT,  Stg10 NUMERIC,  County1 NUMERIC,  Inout TEXT,  Recordty TEXT,  Sitedirect TEXT,  Basin TEXT,  Agc50 TEXT,  Outwseq NUMERIC,  Gaugeloc TEXT,  Aquifer TEXT,  County TEXT,  Uidstation NUMERIC,  Agc5 TEXT,  Timecreate NUMERIC,  Linktyp TEXT,  Surfelev NUMERIC,  Stg50 NUMERIC,  Latlonsrc TEXT,  Agc233 TEXT,  Casdep NUMERIC,  Casname TEXT,  Calibfac NUMERIC,  Station TEXT,  Hdstatus TEXT,  Stg5 NUMERIC,  Datecreate TEXT,  Polbasin NUMERIC,  Nxlowmg NUMERIC,  Mlevst TEXT,  Stnname TEXT,  Usercreate TEXT,  Stg100 NUMERIC,  Usermod TEXT,  Agc20 TEXT,  Dbver8 NUMERIC,  Linksite NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Subtype TEXT,  Depsitenum TEXT,  Stg20 NUMERIC,  Eqowner TEXT,  Calcwind TEXT,  Solrad TEXT,  Lithfrom TEXT,  Outdist TEXT,  Mpdescript TEXT,  Lithto TEXT,  Totdepth NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Ctnstru TEXT,  Minflood NUMERIC,  Adopt TEXT,  Intendfreq NUMERIC,  Agc100 TEXT,  Scadadev NUMERIC,  Stg233 NUMERIC,  Latlonmeth TEXT,  Agc10 TEXT,  Altname TEXT,  Casdiam NUMERIC, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Wuca TEXT,  Inactcode TEXT,  Lowmg NUMERIC,  Fgsno TEXT,  Stg10 NUMERIC,  County1 NUMERIC,  Inout TEXT,  Recordty TEXT,  Sitedirect TEXT,  Basin TEXT,  Agc50 TEXT,  Outwseq NUMERIC,  Gaugeloc TEXT,  Aquifer TEXT,  County TEXT,  Uidstation NUMERIC,  Agc5 TEXT,  Timecreate NUMERIC,  Linktyp TEXT,  Surfelev NUMERIC,  Stg50 NUMERIC,  Latlonsrc TEXT,  Agc233 TEXT,  Casdep NUMERIC,  Casname TEXT,  Calibfac NUMERIC,  Station TEXT,  Hdstatus TEXT,  Stg5 NUMERIC,  Datecreate TEXT,  Polbasin NUMERIC,  Nxlowmg NUMERIC,  Mlevst TEXT,  Stnname TEXT,  Usercreate TEXT,  Stg100 NUMERIC,  Usermod TEXT,  Agc20 TEXT,  Dbver8 NUMERIC,  Linksite NUMERIC,  Timemod NUMERIC,  Datemod TEXT,  Subtype TEXT,  Depsitenum TEXT,  Stg20 NUMERIC,  Eqowner TEXT,  Calcwind TEXT,  Solrad TEXT,  Lithfrom TEXT,  Outdist TEXT,  Mpdescript TEXT,  Lithto TEXT,  Totdepth NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Ctnstru TEXT,  Minflood NUMERIC,  Adopt TEXT,  Intendfreq NUMERIC,  Agc100 TEXT,  Scadadev NUMERIC,  Stg233 NUMERIC,  Latlonmeth TEXT,  Agc10 TEXT,  Altname TEXT,  Casdiam NUMERIC, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Placeholder ,  Station TEXT,  Stnname TEXT,  Altname TEXT,  County TEXT,  County1 NUMERIC,  Basin TEXT,  Eqowner TEXT,  Recordty TEXT,  Outdist TEXT,  Subtype TEXT,  Stg233 NUMERIC,  Agc233 TEXT,  Stg5 NUMERIC,  Agc5 TEXT,  Stg10 NUMERIC,  Agc10 TEXT,  Stg20 NUMERIC,  Agc20 TEXT,  Stg50 NUMERIC,  Agc50 TEXT,  Stg100 NUMERIC,  Agc100 TEXT,  Ctnstru TEXT,  Mlevst TEXT,  Adopt TEXT,  Minflood NUMERIC,  Lowmg NUMERIC,  Nxlowmg NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Fgsno TEXT,  Inout TEXT,  Outwseq NUMERIC,  Casdep NUMERIC,  Casdiam NUMERIC,  Casname TEXT,  Surfelev NUMERIC,  Totdepth NUMERIC,  Aquifer TEXT,  Lithfrom TEXT,  Lithto TEXT,  Linktyp TEXT,  Linksite NUMERIC,  Solrad TEXT,  Calibfac NUMERIC,  Calcwind TEXT,  Depsitenum TEXT,  Gaugeloc TEXT,  Hdstatus TEXT,  Inactcode TEXT,  Intendfreq NUMERIC,  Latlonmeth TEXT,  Latlonsrc TEXT,  Mpdescript TEXT,  Polbasin NUMERIC,  Scadadev NUMERIC,  Sitedirect TEXT,  Uidstation NUMERIC,  Wuca TEXT,  Dbver8 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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
package Hydstra::Swfsite;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFSITE';

use constant CHILD_OF => qw( site );  

use constant PARENT_OF => qw( swfvar swfhist swfparm );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfsite table 

=cut

subtype 'SwfsiteWuca', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteInactcode', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFgsno', as 'Str', where { length($_) <= 25 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [25] char, not [$length] characters.~"  };
subtype 'SwfsiteStg10', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteCounty1', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteInout', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteRecordty', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfsiteSitedirect', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteBasin', as 'Str', where { length($_) <= 23 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [23] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc50', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteOutwseq', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'SwfsiteGaugeloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfsiteAquifer', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteCounty', as 'Str', where { length($_) <= 16 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [16] char, not [$length] characters.~"  };
subtype 'SwfsiteUidstation', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,5})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [0].~"  };
subtype 'SwfsiteAgc5', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteLinktyp', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteSurfelev', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStg50', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLatlonsrc', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc233', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdep', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'SwfsiteCasname', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteCalibfac', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteHdstatus', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStg5', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsitePolbasin', as 'Num', where { length($_) <= 3 && $_ =~ m{[+-]?(\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [3] and decimals [0].~"  };
subtype 'SwfsiteNxlowmg', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteMlevst', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteStnname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteStg100', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc20', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteDbver8', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfsiteLinksite', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,7})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [0].~"  };
subtype 'SwfsiteTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteSubtype', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'SwfsiteDepsitenum', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfsiteStg20', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteEqowner', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteCalcwind', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteSolrad', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteLithfrom', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteOutdist', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMpdescript', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteLithto', as 'Str', where { length($_) <= 5 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [5] char, not [$length] characters.~"  };
subtype 'SwfsiteTotdepth', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteFld10y', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteLksize', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,9})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [0].~"  };
subtype 'SwfsiteCtnstru', as 'Str', where { length($_) <= 1 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [1] char, not [$length] characters.~"  };
subtype 'SwfsiteMinflood', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfsiteAdopt', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfsiteIntendfreq', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfsiteAgc100', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteScadadev', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfsiteStg233', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'SwfsiteLatlonmeth', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAgc10', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfsiteAltname', as 'Str', where { length($_) <= 26 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [26] char, not [$length] characters.~"  };
subtype 'SwfsiteCasdiam', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };

 has 'swfsite_wuca'  => ( is => 'rw', isa => 'SwfsiteWuca' ); 
 has 'swfsite_inactcode'  => ( is => 'rw', isa => 'SwfsiteInactcode' ); 
 has 'swfsite_lowmg'  => ( is => 'rw', isa => 'SwfsiteLowmg' ); 
 has 'swfsite_fgsno'  => ( is => 'rw', isa => 'SwfsiteFgsno' ); 
 has 'swfsite_stg10'  => ( is => 'rw', isa => 'SwfsiteStg10' ); 
 has 'swfsite_county1'  => ( is => 'rw', isa => 'SwfsiteCounty1' ); 
 has 'swfsite_inout'  => ( is => 'rw', isa => 'SwfsiteInout' ); 
 has 'swfsite_recordty'  => ( is => 'rw', isa => 'SwfsiteRecordty' ); 
 has 'swfsite_sitedirect'  => ( is => 'rw', isa => 'SwfsiteSitedirect' ); 
 has 'swfsite_basin'  => ( is => 'rw', isa => 'SwfsiteBasin' ); 
 has 'swfsite_agc50'  => ( is => 'rw', isa => 'SwfsiteAgc50' ); 
 has 'swfsite_outwseq'  => ( is => 'rw', isa => 'SwfsiteOutwseq' ); 
 has 'swfsite_gaugeloc'  => ( is => 'rw', isa => 'SwfsiteGaugeloc' ); 
 has 'swfsite_aquifer'  => ( is => 'rw', isa => 'SwfsiteAquifer' ); 
 has 'swfsite_county'  => ( is => 'rw', isa => 'SwfsiteCounty' ); 
 has 'swfsite_uidstation'  => ( is => 'rw', isa => 'SwfsiteUidstation' ); 
 has 'swfsite_agc5'  => ( is => 'rw', isa => 'SwfsiteAgc5' ); 
 has 'swfsite_timecreate'  => ( is => 'rw', isa => 'SwfsiteTimecreate' ); 
 has 'swfsite_linktyp'  => ( is => 'rw', isa => 'SwfsiteLinktyp' ); 
 has 'swfsite_surfelev'  => ( is => 'rw', isa => 'SwfsiteSurfelev' ); 
 has 'swfsite_stg50'  => ( is => 'rw', isa => 'SwfsiteStg50' ); 
 has 'swfsite_latlonsrc'  => ( is => 'rw', isa => 'SwfsiteLatlonsrc' ); 
 has 'swfsite_agc233'  => ( is => 'rw', isa => 'SwfsiteAgc233' ); 
 has 'swfsite_casdep'  => ( is => 'rw', isa => 'SwfsiteCasdep' ); 
 has 'swfsite_casname'  => ( is => 'rw', isa => 'SwfsiteCasname' ); 
 has 'swfsite_calibfac'  => ( is => 'rw', isa => 'SwfsiteCalibfac' ); 
 has 'swfsite_station'  => ( is => 'rw', isa => 'SwfsiteStation' ); 
 has 'swfsite_hdstatus'  => ( is => 'rw', isa => 'SwfsiteHdstatus' ); 
 has 'swfsite_stg5'  => ( is => 'rw', isa => 'SwfsiteStg5' ); 
 has 'swfsite_datecreate'  => ( is => 'rw', isa => 'SwfsiteDatecreate' ); 
 has 'swfsite_polbasin'  => ( is => 'rw', isa => 'SwfsitePolbasin' ); 
 has 'swfsite_nxlowmg'  => ( is => 'rw', isa => 'SwfsiteNxlowmg' ); 
 has 'swfsite_mlevst'  => ( is => 'rw', isa => 'SwfsiteMlevst' ); 
 has 'swfsite_stnname'  => ( is => 'rw', isa => 'SwfsiteStnname' ); 
 has 'swfsite_usercreate'  => ( is => 'rw', isa => 'SwfsiteUsercreate' ); 
 has 'swfsite_stg100'  => ( is => 'rw', isa => 'SwfsiteStg100' ); 
 has 'swfsite_usermod'  => ( is => 'rw', isa => 'SwfsiteUsermod' ); 
 has 'swfsite_agc20'  => ( is => 'rw', isa => 'SwfsiteAgc20' ); 
 has 'swfsite_dbver8'  => ( is => 'rw', isa => 'SwfsiteDbver8' ); 
 has 'swfsite_linksite'  => ( is => 'rw', isa => 'SwfsiteLinksite' ); 
 has 'swfsite_timemod'  => ( is => 'rw', isa => 'SwfsiteTimemod' ); 
 has 'swfsite_datemod'  => ( is => 'rw', isa => 'SwfsiteDatemod' ); 
 has 'swfsite_subtype'  => ( is => 'rw', isa => 'SwfsiteSubtype' ); 
 has 'swfsite_depsitenum'  => ( is => 'rw', isa => 'SwfsiteDepsitenum' ); 
 has 'swfsite_stg20'  => ( is => 'rw', isa => 'SwfsiteStg20' ); 
 has 'swfsite_eqowner'  => ( is => 'rw', isa => 'SwfsiteEqowner' ); 
 has 'swfsite_calcwind'  => ( is => 'rw', isa => 'SwfsiteCalcwind' ); 
 has 'swfsite_solrad'  => ( is => 'rw', isa => 'SwfsiteSolrad' ); 
 has 'swfsite_lithfrom'  => ( is => 'rw', isa => 'SwfsiteLithfrom' ); 
 has 'swfsite_outdist'  => ( is => 'rw', isa => 'SwfsiteOutdist' ); 
 has 'swfsite_mpdescript'  => ( is => 'rw', isa => 'SwfsiteMpdescript' ); 
 has 'swfsite_lithto'  => ( is => 'rw', isa => 'SwfsiteLithto' ); 
 has 'swfsite_totdepth'  => ( is => 'rw', isa => 'SwfsiteTotdepth' ); 
 has 'swfsite_fld10y'  => ( is => 'rw', isa => 'SwfsiteFld10y' ); 
 has 'swfsite_lksize'  => ( is => 'rw', isa => 'SwfsiteLksize' ); 
 has 'swfsite_ctnstru'  => ( is => 'rw', isa => 'SwfsiteCtnstru' ); 
 has 'swfsite_minflood'  => ( is => 'rw', isa => 'SwfsiteMinflood' ); 
 has 'swfsite_adopt'  => ( is => 'rw', isa => 'SwfsiteAdopt' ); 
 has 'swfsite_intendfreq'  => ( is => 'rw', isa => 'SwfsiteIntendfreq' ); 
 has 'swfsite_agc100'  => ( is => 'rw', isa => 'SwfsiteAgc100' ); 
 has 'swfsite_scadadev'  => ( is => 'rw', isa => 'SwfsiteScadadev' ); 
 has 'swfsite_stg233'  => ( is => 'rw', isa => 'SwfsiteStg233' ); 
 has 'swfsite_latlonmeth'  => ( is => 'rw', isa => 'SwfsiteLatlonmeth' ); 
 has 'swfsite_agc10'  => ( is => 'rw', isa => 'SwfsiteAgc10' ); 
 has 'swfsite_altname'  => ( is => 'rw', isa => 'SwfsiteAltname' ); 
 has 'swfsite_casdiam'  => ( is => 'rw', isa => 'SwfsiteCasdiam' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfsite is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables swfsite is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFSITE ( Station TEXT,  Stnname TEXT,  Altname TEXT,  County TEXT,  County1 NUMERIC,  Basin TEXT,  Eqowner TEXT,  Recordty TEXT,  Outdist TEXT,  Subtype TEXT,  Stg233 NUMERIC,  Agc233 TEXT,  Stg5 NUMERIC,  Agc5 TEXT,  Stg10 NUMERIC,  Agc10 TEXT,  Stg20 NUMERIC,  Agc20 TEXT,  Stg50 NUMERIC,  Agc50 TEXT,  Stg100 NUMERIC,  Agc100 TEXT,  Ctnstru TEXT,  Mlevst TEXT,  Adopt TEXT,  Minflood NUMERIC,  Lowmg NUMERIC,  Nxlowmg NUMERIC,  Fld10y NUMERIC,  Lksize NUMERIC,  Fgsno TEXT,  Inout TEXT,  Outwseq NUMERIC,  Casdep NUMERIC,  Casdiam NUMERIC,  Casname TEXT,  Surfelev NUMERIC,  Totdepth NUMERIC,  Aquifer TEXT,  Lithfrom TEXT,  Lithto TEXT,  Linktyp TEXT,  Linksite NUMERIC,  Solrad TEXT,  Calibfac NUMERIC,  Calcwind TEXT,  Depsitenum TEXT,  Gaugeloc TEXT,  Hdstatus TEXT,  Inactcode TEXT,  Intendfreq NUMERIC,  Latlonmeth TEXT,  Latlonsrc TEXT,  Mpdescript TEXT,  Polbasin NUMERIC,  Scadadev NUMERIC,  Sitedirect TEXT,  Uidstation NUMERIC,  Wuca TEXT,  Dbver8 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFSITE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfsite::Validation;
  use Moose;
  extends 'Swfsite';

 has '+swfsite_station' => ( required => 1,  ); 

  
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

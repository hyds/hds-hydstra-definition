
{
package Hydstra::Casing;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'CASING';

use constant CHILD_OF => qw( gwpipe );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a casing table 

=cut

subtype 'CasingSpare5', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'CasingSlotindiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingSpare4', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'CasingUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'CasingProtectcem', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'CasingTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'CasingDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'CasingSlotoutdia', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingPrescemto', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'CasingDepthfrom', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingOpenmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingCementedto', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingInsdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingRectype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingFiltersock', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'CasingBotttype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingStatusdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'CasingOutdiam', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingFixmethod2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingCasetype2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingInterval', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'CasingSpare3', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'CasingOpen', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'CasingScrntype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingCasetype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingCentralisr', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'CasingScrndesc', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingLinerdim', as 'Str', where { length($_) <= 30 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [30] char, not [$length] characters.~"  };
subtype 'CasingSumpfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'CasingNotdrilled', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'CasingTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'CasingStatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingSlotlen', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [1].~"  };
subtype 'CasingOpenbrand', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingSumpto', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'CasingCementfrom', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingSpare2', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'CasingSpare1', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'CasingAttachmeth', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'CasingFixmethod1', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingFixmethod4', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingDepthto', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'CasingDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'CasingAperture', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [2].~"  };
subtype 'CasingParty', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingDbver37', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'CasingHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'CasingFixmethod3', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingPrscemfrom', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'CasingComment', as 'Str', where { length($_) <= 64000 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [64000] char, not [$length] characters.~"  };
subtype 'CasingUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'CasingStatustime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'CasingOpenmater', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'casing_spare5'  => ( is => 'rw', isa => 'CasingSpare5' ); 
 has 'casing_slotindiam'  => ( is => 'rw', isa => 'CasingSlotindiam' ); 
 has 'casing_spare4'  => ( is => 'rw', isa => 'CasingSpare4' ); 
 has 'casing_usermod'  => ( is => 'rw', isa => 'CasingUsermod' ); 
 has 'casing_pipe'  => ( is => 'rw', isa => 'CasingPipe' ); 
 has 'casing_protectcem'  => ( is => 'rw', isa => 'CasingProtectcem' ); 
 has 'casing_timemod'  => ( is => 'rw', isa => 'CasingTimemod' ); 
 has 'casing_datemod'  => ( is => 'rw', isa => 'CasingDatemod' ); 
 has 'casing_slotoutdia'  => ( is => 'rw', isa => 'CasingSlotoutdia' ); 
 has 'casing_prescemto'  => ( is => 'rw', isa => 'CasingPrescemto' ); 
 has 'casing_depthfrom'  => ( is => 'rw', isa => 'CasingDepthfrom' ); 
 has 'casing_openmeth'  => ( is => 'rw', isa => 'CasingOpenmeth' ); 
 has 'casing_cementedto'  => ( is => 'rw', isa => 'CasingCementedto' ); 
 has 'casing_insdiam'  => ( is => 'rw', isa => 'CasingInsdiam' ); 
 has 'casing_rectype'  => ( is => 'rw', isa => 'CasingRectype' ); 
 has 'casing_filtersock'  => ( is => 'rw', isa => 'CasingFiltersock' ); 
 has 'casing_botttype'  => ( is => 'rw', isa => 'CasingBotttype' ); 
 has 'casing_statusdate'  => ( is => 'rw', isa => 'CasingStatusdate' ); 
 has 'casing_outdiam'  => ( is => 'rw', isa => 'CasingOutdiam' ); 
 has 'casing_fixmethod2'  => ( is => 'rw', isa => 'CasingFixmethod2' ); 
 has 'casing_casetype2'  => ( is => 'rw', isa => 'CasingCasetype2' ); 
 has 'casing_interval'  => ( is => 'rw', isa => 'CasingInterval' ); 
 has 'casing_spare3'  => ( is => 'rw', isa => 'CasingSpare3' ); 
 has 'casing_open'  => ( is => 'rw', isa => 'CasingOpen' ); 
 has 'casing_scrntype'  => ( is => 'rw', isa => 'CasingScrntype' ); 
 has 'casing_casetype'  => ( is => 'rw', isa => 'CasingCasetype' ); 
 has 'casing_centralisr'  => ( is => 'rw', isa => 'CasingCentralisr' ); 
 has 'casing_scrndesc'  => ( is => 'rw', isa => 'CasingScrndesc' ); 
 has 'casing_linerdim'  => ( is => 'rw', isa => 'CasingLinerdim' ); 
 has 'casing_sumpfrom'  => ( is => 'rw', isa => 'CasingSumpfrom' ); 
 has 'casing_notdrilled'  => ( is => 'rw', isa => 'CasingNotdrilled' ); 
 has 'casing_timecreate'  => ( is => 'rw', isa => 'CasingTimecreate' ); 
 has 'casing_status'  => ( is => 'rw', isa => 'CasingStatus' ); 
 has 'casing_slotlen'  => ( is => 'rw', isa => 'CasingSlotlen' ); 
 has 'casing_openbrand'  => ( is => 'rw', isa => 'CasingOpenbrand' ); 
 has 'casing_sumpto'  => ( is => 'rw', isa => 'CasingSumpto' ); 
 has 'casing_cementfrom'  => ( is => 'rw', isa => 'CasingCementfrom' ); 
 has 'casing_spare2'  => ( is => 'rw', isa => 'CasingSpare2' ); 
 has 'casing_spare1'  => ( is => 'rw', isa => 'CasingSpare1' ); 
 has 'casing_attachmeth'  => ( is => 'rw', isa => 'CasingAttachmeth' ); 
 has 'casing_station'  => ( is => 'rw', isa => 'CasingStation' ); 
 has 'casing_fixmethod1'  => ( is => 'rw', isa => 'CasingFixmethod1' ); 
 has 'casing_fixmethod4'  => ( is => 'rw', isa => 'CasingFixmethod4' ); 
 has 'casing_depthto'  => ( is => 'rw', isa => 'CasingDepthto' ); 
 has 'casing_datecreate'  => ( is => 'rw', isa => 'CasingDatecreate' ); 
 has 'casing_aperture'  => ( is => 'rw', isa => 'CasingAperture' ); 
 has 'casing_party'  => ( is => 'rw', isa => 'CasingParty' ); 
 has 'casing_dbver37'  => ( is => 'rw', isa => 'CasingDbver37' ); 
 has 'casing_hole'  => ( is => 'rw', isa => 'CasingHole' ); 
 has 'casing_fixmethod3'  => ( is => 'rw', isa => 'CasingFixmethod3' ); 
 has 'casing_prscemfrom'  => ( is => 'rw', isa => 'CasingPrscemfrom' ); 
 has 'casing_comment'  => ( is => 'rw', isa => 'CasingComment' ); 
 has 'casing_usercreate'  => ( is => 'rw', isa => 'CasingUsercreate' ); 
 has 'casing_statustime'  => ( is => 'rw', isa => 'CasingStatustime' ); 
 has 'casing_openmater'  => ( is => 'rw', isa => 'CasingOpenmater' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables casing is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole pipe depthfrom outdiam );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables casing is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables casing is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole pipe depthfrom outdiam depthto interval rectype insdiam status statusdate statustime fixmethod1 fixmethod2 fixmethod3 fixmethod4 cementfrom cementedto attachmeth linerdim centralisr protectcem notdrilled filtersock sumpfrom sumpto prscemfrom prescemto open casetype casetype2 scrntype scrndesc openmeth openmater openbrand slotlen slotindiam slotoutdia aperture botttype party spare1 spare2 spare3 spare4 spare5 comment dbver37 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS CASING ( 'Station' TEXT,  'Hole' NUMERIC,  'Pipe' NUMERIC,  'Depthfrom' NUMERIC,  'Outdiam' NUMERIC,  'Depthto' NUMERIC,  'Interval' NUMERIC,  'Rectype' TEXT,  'Insdiam' NUMERIC,  'Status' TEXT,  'Statusdate' TEXT,  'Statustime' NUMERIC,  'Fixmethod1' TEXT,  'Fixmethod2' TEXT,  'Fixmethod3' TEXT,  'Fixmethod4' TEXT,  'Cementfrom' NUMERIC,  'Cementedto' NUMERIC,  'Attachmeth' TEXT,  'Linerdim' TEXT,  'Centralisr' NUMERIC,  'Protectcem' NUMERIC,  'Notdrilled' NUMERIC,  'Filtersock' NUMERIC,  'Sumpfrom' NUMERIC,  'Sumpto' NUMERIC,  'Prscemfrom' NUMERIC,  'Prescemto' NUMERIC,  'Open' NUMERIC,  'Casetype' TEXT,  'Casetype2' TEXT,  'Scrntype' TEXT,  'Scrndesc' TEXT,  'Openmeth' TEXT,  'Openmater' TEXT,  'Openbrand' TEXT,  'Slotlen' NUMERIC,  'Slotindiam' NUMERIC,  'Slotoutdia' NUMERIC,  'Aperture' NUMERIC,  'Botttype' TEXT,  'Party' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Spare4' TEXT,  'Spare5' TEXT,  'Comment' TEXT,  'Dbver37' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Pipe, Depthfrom, Outdiam))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO CASING VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Casing::Validation;
  use Moose;
  extends 'Hydstra::Casing';

 has '+casing_pipe' => ( required => 1, default => 1, ); 
 has '+casing_depthfrom' => ( required => 1, default => -999, ); 
 has '+casing_outdiam' => ( required => 1, default => -999, ); 
 has '+casing_station' => ( required => 1,  ); 
 has '+casing_hole' => ( required => 1, default => 1, ); 

  
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


{
package Hydstra::Swfvar;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFVAR';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfvar table 

=cut

subtype 'SwfvarSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarHighthresh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfvarSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'SwfvarUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfvarTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfvarLowthresh', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfvarTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfvarDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfvarSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarStatdate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfvarSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfvarStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfvarParmaxover', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfvarSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarInstrument', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfvarDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'SwfvarSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfvarSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfvarParminover', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfvarDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'swfvar_spare5'  => ( is => 'rw', isa => 'SwfvarSpare5' ); 
 has 'swfvar_highthresh'  => ( is => 'rw', isa => 'SwfvarHighthresh' ); 
 has 'swfvar_spare4'  => ( is => 'rw', isa => 'SwfvarSpare4' ); 
 has 'swfvar_variable'  => ( is => 'rw', isa => 'SwfvarVariable' ); 
 has 'swfvar_usermod'  => ( is => 'rw', isa => 'SwfvarUsermod' ); 
 has 'swfvar_timecreate'  => ( is => 'rw', isa => 'SwfvarTimecreate' ); 
 has 'swfvar_lowthresh'  => ( is => 'rw', isa => 'SwfvarLowthresh' ); 
 has 'swfvar_timemod'  => ( is => 'rw', isa => 'SwfvarTimemod' ); 
 has 'swfvar_datemod'  => ( is => 'rw', isa => 'SwfvarDatemod' ); 
 has 'swfvar_spare9'  => ( is => 'rw', isa => 'SwfvarSpare9' ); 
 has 'swfvar_statdate'  => ( is => 'rw', isa => 'SwfvarStatdate' ); 
 has 'swfvar_spare2'  => ( is => 'rw', isa => 'SwfvarSpare2' ); 
 has 'swfvar_spare10'  => ( is => 'rw', isa => 'SwfvarSpare10' ); 
 has 'swfvar_spare1'  => ( is => 'rw', isa => 'SwfvarSpare1' ); 
 has 'swfvar_stattime'  => ( is => 'rw', isa => 'SwfvarStattime' ); 
 has 'swfvar_station'  => ( is => 'rw', isa => 'SwfvarStation' ); 
 has 'swfvar_parmaxover'  => ( is => 'rw', isa => 'SwfvarParmaxover' ); 
 has 'swfvar_spare6'  => ( is => 'rw', isa => 'SwfvarSpare6' ); 
 has 'swfvar_spare7'  => ( is => 'rw', isa => 'SwfvarSpare7' ); 
 has 'swfvar_instrument'  => ( is => 'rw', isa => 'SwfvarInstrument' ); 
 has 'swfvar_datecreate'  => ( is => 'rw', isa => 'SwfvarDatecreate' ); 
 has 'swfvar_spare3'  => ( is => 'rw', isa => 'SwfvarSpare3' ); 
 has 'swfvar_usercreate'  => ( is => 'rw', isa => 'SwfvarUsercreate' ); 
 has 'swfvar_spare8'  => ( is => 'rw', isa => 'SwfvarSpare8' ); 
 has 'swfvar_parminover'  => ( is => 'rw', isa => 'SwfvarParminover' ); 
 has 'swfvar_dbver4'  => ( is => 'rw', isa => 'SwfvarDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables swfvar is a parent of.

=cut
  
sub keys{
  my @kys = qw( station variable statdate stattime );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables swfvar is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfvar is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station variable statdate stattime highthresh instrument lowthresh parmaxover parminover spare1 spare2 spare3 spare4 spare5 spare6 spare7 spare8 spare9 spare10 dbver4 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFVAR ( 'Station' TEXT,  'Variable' NUMERIC,  'Statdate' TEXT,  'Stattime' NUMERIC,  'Highthresh' NUMERIC,  'Instrument' TEXT,  'Lowthresh' NUMERIC,  'Parmaxover' NUMERIC,  'Parminover' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Spare4' TEXT,  'Spare5' TEXT,  'Spare6' TEXT,  'Spare7' TEXT,  'Spare8' TEXT,  'Spare9' TEXT,  'Spare10' TEXT,  'Dbver4' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Variable, Statdate, Stattime))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO SWFVAR VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}

sub is_date{
  my $self = shift;
  my $type_name = shift;
  my ($table,$field) = split('_',$type_name);
  ($field =~ m{^(date|time).*}i)? return 1: return;
}








no Moose;
}
  
  
{
package Hydstra::Swfvar::Validation;
  use Moose;
  extends 'Hydstra::Swfvar';

 has '+swfvar_variable' => ( required => 1,  ); 
 has '+swfvar_statdate' => ( required => 1,  ); 
 has '+swfvar_stattime' => ( required => 1, default => 1200, ); 
 has '+swfvar_station' => ( required => 1,  ); 

  
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

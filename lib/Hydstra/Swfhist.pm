
{
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Source TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Timemod NUMERIC,  Datumcorr NUMERIC,  Datemod TEXT,  Dbver3 NUMERIC,  Spare9 TEXT,  Spare2 TEXT,  Statdate TEXT,  Agency TEXT,  Spare10 TEXT,  Colmeth TEXT,  Spare1 TEXT,  Station TEXT,  Stattime NUMERIC,  Spare6 TEXT,  Spare7 TEXT,  Surveyloc TEXT,  Datecreate TEXT,  Spare3 TEXT,  Usercreate TEXT,  Spare8 TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 
Field [source]false
Field [spare5]false
Field [spare4]false
Field [usermod]false
Field [timecreate]false
Field [timemod]false
Field [datumcorr]false
Field [datemod]false
Field [dbver3]false
Field [spare9]false
Field [spare2]false
Field [statdate]true
Field [agency]false
Field [spare10]false
Field [colmeth]false
Field [spare1]false
Field [station]true
Field [stattime]true
Field [spare6]false
Field [spare7]false
Field [surveyloc]false
Field [datecreate]false
Field [spare3]false
Field [usercreate]false
Field [spare8]false


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Source TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Timemod NUMERIC,  Datumcorr NUMERIC,  Datemod TEXT,  Dbver3 NUMERIC,  Spare9 TEXT,  Spare2 TEXT,  Statdate TEXT,  Agency TEXT,  Spare10 TEXT,  Colmeth TEXT,  Spare1 TEXT,  Station TEXT,  Stattime NUMERIC,  Spare6 TEXT,  Spare7 TEXT,  Surveyloc TEXT,  Datecreate TEXT,  Spare3 TEXT,  Usercreate TEXT,  Spare8 TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 
Field [source] key value [false]
Field [spare5] key value [false]
Field [spare4] key value [false]
Field [usermod] key value [false]
Field [timecreate] key value [false]
Field [timemod] key value [false]
Field [datumcorr] key value [false]
Field [datemod] key value [false]
Field [dbver3] key value [false]
Field [spare9] key value [false]
Field [spare2] key value [false]
Field [statdate] key value [true]
Field [agency] key value [false]
Field [spare10] key value [false]
Field [colmeth] key value [false]
Field [spare1] key value [false]
Field [station] key value [true]
Field [stattime] key value [true]
Field [spare6] key value [false]
Field [spare7] key value [false]
Field [surveyloc] key value [false]
Field [datecreate] key value [false]
Field [spare3] key value [false]
Field [usercreate] key value [false]
Field [spare8] key value [false]


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Source TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Timemod NUMERIC,  Datumcorr NUMERIC,  Datemod TEXT,  Dbver3 NUMERIC,  Spare9 TEXT,  Spare2 TEXT,  Statdate TEXT,  Agency TEXT,  Spare10 TEXT,  Colmeth TEXT,  Spare1 TEXT,  Station TEXT,  Stattime NUMERIC,  Spare6 TEXT,  Spare7 TEXT,  Surveyloc TEXT,  Datecreate TEXT,  Spare3 TEXT,  Usercreate TEXT,  Spare8 TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Source TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Timemod NUMERIC,  Datumcorr NUMERIC,  Datemod TEXT,  Dbver3 NUMERIC,  Spare9 TEXT,  Spare2 TEXT,  Statdate TEXT,  Agency TEXT,  Spare10 TEXT,  Colmeth TEXT,  Spare1 TEXT,  Station TEXT,  Stattime NUMERIC,  Spare6 TEXT,  Spare7 TEXT,  Surveyloc TEXT,  Datecreate TEXT,  Spare3 TEXT,  Usercreate TEXT,  Spare8 TEXT, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Source TEXT,  Spare5 TEXT,  Spare4 TEXT,  Usermod TEXT,  Timecreate NUMERIC,  Timemod NUMERIC,  Datumcorr NUMERIC,  Datemod TEXT,  Dbver3 NUMERIC,  Spare9 TEXT,  Spare2 TEXT,  Statdate TEXT,  Agency TEXT,  Spare10 TEXT,  Colmeth TEXT,  Spare1 TEXT,  Station TEXT,  Stattime NUMERIC,  Spare6 TEXT,  Spare7 TEXT,  Surveyloc TEXT,  Datecreate TEXT,  Spare3 TEXT,  Usercreate TEXT,  Spare8 TEXT, PRIMARY KEY (Statdate, Station, Stattime))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Placeholder ,  Station TEXT,  Statdate TEXT,  Stattime NUMERIC,  Agency TEXT,  Colmeth TEXT,  Source TEXT,  Datumcorr NUMERIC,  Surveyloc TEXT,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Spare4 TEXT,  Spare5 TEXT,  Spare6 TEXT,  Spare7 TEXT,  Spare8 TEXT,  Spare9 TEXT,  Spare10 TEXT,  Dbver3 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Statdate, Stattime))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST (, PRIMARY KEY ()";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES ()";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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
package Hydstra::Swfhist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'SWFHIST';

use constant CHILD_OF => qw( swfsite );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a swfhist table 

=cut

subtype 'SwfhistSource', as 'Str', where { length($_) <= 2 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [2] char, not [$length] characters.~"  };
subtype 'SwfhistSpare5', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare4', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistDatumcorr', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'SwfhistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistDbver3', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'SwfhistSpare9', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStatdate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistAgency', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'SwfhistSpare10', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistColmeth', as 'Str', where { length($_) <= 6 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [6] char, not [$length] characters.~"  };
subtype 'SwfhistSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'SwfhistStattime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'SwfhistSpare6', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSpare7', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistSurveyloc', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'SwfhistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'SwfhistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'SwfhistSpare8', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };

 has 'swfhist_source'  => ( is => 'rw', isa => 'SwfhistSource' ); 
 has 'swfhist_spare5'  => ( is => 'rw', isa => 'SwfhistSpare5' ); 
 has 'swfhist_spare4'  => ( is => 'rw', isa => 'SwfhistSpare4' ); 
 has 'swfhist_usermod'  => ( is => 'rw', isa => 'SwfhistUsermod' ); 
 has 'swfhist_timecreate'  => ( is => 'rw', isa => 'SwfhistTimecreate' ); 
 has 'swfhist_timemod'  => ( is => 'rw', isa => 'SwfhistTimemod' ); 
 has 'swfhist_datumcorr'  => ( is => 'rw', isa => 'SwfhistDatumcorr' ); 
 has 'swfhist_datemod'  => ( is => 'rw', isa => 'SwfhistDatemod' ); 
 has 'swfhist_dbver3'  => ( is => 'rw', isa => 'SwfhistDbver3' ); 
 has 'swfhist_spare9'  => ( is => 'rw', isa => 'SwfhistSpare9' ); 
 has 'swfhist_spare2'  => ( is => 'rw', isa => 'SwfhistSpare2' ); 
 has 'swfhist_statdate'  => ( is => 'rw', isa => 'SwfhistStatdate' ); 
 has 'swfhist_agency'  => ( is => 'rw', isa => 'SwfhistAgency' ); 
 has 'swfhist_spare10'  => ( is => 'rw', isa => 'SwfhistSpare10' ); 
 has 'swfhist_colmeth'  => ( is => 'rw', isa => 'SwfhistColmeth' ); 
 has 'swfhist_spare1'  => ( is => 'rw', isa => 'SwfhistSpare1' ); 
 has 'swfhist_station'  => ( is => 'rw', isa => 'SwfhistStation' ); 
 has 'swfhist_stattime'  => ( is => 'rw', isa => 'SwfhistStattime' ); 
 has 'swfhist_spare6'  => ( is => 'rw', isa => 'SwfhistSpare6' ); 
 has 'swfhist_spare7'  => ( is => 'rw', isa => 'SwfhistSpare7' ); 
 has 'swfhist_surveyloc'  => ( is => 'rw', isa => 'SwfhistSurveyloc' ); 
 has 'swfhist_datecreate'  => ( is => 'rw', isa => 'SwfhistDatecreate' ); 
 has 'swfhist_spare3'  => ( is => 'rw', isa => 'SwfhistSpare3' ); 
 has 'swfhist_usercreate'  => ( is => 'rw', isa => 'SwfhistUsercreate' ); 
 has 'swfhist_spare8'  => ( is => 'rw', isa => 'SwfhistSpare8' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables swfhist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables swfhist is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS SWFHIST ( Station TEXT,  Statdate TEXT,  Stattime NUMERIC,  Agency TEXT,  Colmeth TEXT,  Source TEXT,  Datumcorr NUMERIC,  Surveyloc TEXT,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Spare4 TEXT,  Spare5 TEXT,  Spare6 TEXT,  Spare7 TEXT,  Spare8 TEXT,  Spare9 TEXT,  Spare10 TEXT,  Dbver3 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Statdate, Stattime))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO SWFHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Swfhist::Validation;
  use Moose;
  extends 'Swfhist';

 has '+swfhist_statdate' => ( required => 1,  ); 
 has '+swfhist_station' => ( required => 1,  ); 
 has '+swfhist_stattime' => ( required => 1, default => 1200, ); 

  
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

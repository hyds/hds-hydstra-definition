
{
package Hydstra::Insthist;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'INSTHIST';

use constant CHILD_OF => qw( site );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a insthist table 

=cut

subtype 'InsthistTolucode', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'InsthistDatatrans', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'InsthistUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'InsthistVariable', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'InsthistTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'InsthistRangeucode', as 'Str', where { length($_) <= 4 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [4] char, not [$length] characters.~"  };
subtype 'InsthistDatein', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'InsthistDbver28', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'InsthistModel', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'InsthistTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'InsthistElev', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'InsthistDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'InsthistText', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'InsthistLatitude', as 'Num', where { length($_) <= 12 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [12] and decimals [8].~"  };
subtype 'InsthistTimein', as 'Num', where { length($_) <= 7 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [7] and decimals [2].~"  };
subtype 'InsthistTolerance', as 'Num', where { length($_) <= 10 && $_ =~ m{[+-]?(\d{1,6})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [10] and decimals [3].~"  };
subtype 'InsthistVisitstage', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'InsthistLongitude', as 'Num', where { length($_) <= 13 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [13] and decimals [8].~"  };
subtype 'InsthistMake', as 'Str', where { length($_) <= 12 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [12] char, not [$length] characters.~"  };
subtype 'InsthistStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'InsthistSerial', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'InsthistReason', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'InsthistDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'InsthistRangelo', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'InsthistUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'InsthistRangehi', as 'Num', where { length($_) <= 15 && $_ =~ m{[+-]?(\d{1,8})?(\.\d{1,6})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [15] and decimals [6].~"  };
subtype 'InsthistIpaddress', as 'Str', where { length($_) <= 19 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [19] char, not [$length] characters.~"  };
subtype 'InsthistSubnetmask', as 'Str', where { length($_) <= 19 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [19] char, not [$length] characters.~"  };

 has 'insthist_tolucode'  => ( is => 'rw', isa => 'InsthistTolucode' ); 
 has 'insthist_datatrans'  => ( is => 'rw', isa => 'InsthistDatatrans' ); 
 has 'insthist_usermod'  => ( is => 'rw', isa => 'InsthistUsermod' ); 
 has 'insthist_variable'  => ( is => 'rw', isa => 'InsthistVariable' ); 
 has 'insthist_timecreate'  => ( is => 'rw', isa => 'InsthistTimecreate' ); 
 has 'insthist_rangeucode'  => ( is => 'rw', isa => 'InsthistRangeucode' ); 
 has 'insthist_datein'  => ( is => 'rw', isa => 'InsthistDatein' ); 
 has 'insthist_dbver28'  => ( is => 'rw', isa => 'InsthistDbver28' ); 
 has 'insthist_model'  => ( is => 'rw', isa => 'InsthistModel' ); 
 has 'insthist_timemod'  => ( is => 'rw', isa => 'InsthistTimemod' ); 
 has 'insthist_elev'  => ( is => 'rw', isa => 'InsthistElev' ); 
 has 'insthist_datemod'  => ( is => 'rw', isa => 'InsthistDatemod' ); 
 has 'insthist_text'  => ( is => 'rw', isa => 'InsthistText' ); 
 has 'insthist_latitude'  => ( is => 'rw', isa => 'InsthistLatitude' ); 
 has 'insthist_timein'  => ( is => 'rw', isa => 'InsthistTimein' ); 
 has 'insthist_tolerance'  => ( is => 'rw', isa => 'InsthistTolerance' ); 
 has 'insthist_visitstage'  => ( is => 'rw', isa => 'InsthistVisitstage' ); 
 has 'insthist_longitude'  => ( is => 'rw', isa => 'InsthistLongitude' ); 
 has 'insthist_make'  => ( is => 'rw', isa => 'InsthistMake' ); 
 has 'insthist_station'  => ( is => 'rw', isa => 'InsthistStation' ); 
 has 'insthist_serial'  => ( is => 'rw', isa => 'InsthistSerial' ); 
 has 'insthist_reason'  => ( is => 'rw', isa => 'InsthistReason' ); 
 has 'insthist_datecreate'  => ( is => 'rw', isa => 'InsthistDatecreate' ); 
 has 'insthist_rangelo'  => ( is => 'rw', isa => 'InsthistRangelo' ); 
 has 'insthist_usercreate'  => ( is => 'rw', isa => 'InsthistUsercreate' ); 
 has 'insthist_rangehi'  => ( is => 'rw', isa => 'InsthistRangehi' ); 
 has 'insthist_ipaddress'  => ( is => 'rw', isa => 'InsthistIpaddress' ); 
 has 'insthist_subnetmask'  => ( is => 'rw', isa => 'InsthistSubnetmask' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables insthist is a parent of.

=cut
  
sub keys{
  my @kys = qw( make model serial datein timein );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables insthist is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables insthist is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( make model serial datein timein station reason text latitude longitude elev rangelo rangehi rangeucode tolerance tolucode variable datatrans visitstage ipaddress subnetmask dbver28 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS INSTHIST ( 'Make' TEXT,  'Model' TEXT,  'Serial' TEXT,  'Datein' TEXT,  'Timein' NUMERIC,  'Station' TEXT,  'Reason' TEXT,  'Text' TEXT,  'Latitude' NUMERIC,  'Longitude' NUMERIC,  'Elev' NUMERIC,  'Rangelo' NUMERIC,  'Rangehi' NUMERIC,  'Rangeucode' TEXT,  'Tolerance' NUMERIC,  'Tolucode' TEXT,  'Variable' NUMERIC,  'Datatrans' NUMERIC,  'Visitstage' TEXT,  'Ipaddress' TEXT,  'Subnetmask' TEXT,  'Dbver28' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Make, Model, Serial, Datein, Timein))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO INSTHIST VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Insthist::Validation;
  use Moose;
  extends 'Hydstra::Insthist';

 has '+insthist_datein' => ( required => 1,  ); 
 has '+insthist_model' => ( required => 1,  ); 
 has '+insthist_timein' => ( required => 1,  ); 
 has '+insthist_make' => ( required => 1,  ); 
 has '+insthist_serial' => ( required => 1,  ); 

  
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

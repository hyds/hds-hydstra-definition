
{
package Hydstra::Hydrlmp;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'HYDRLMP';

use constant CHILD_OF => qw( gwpipe );  



=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a hydrlmp table 

=cut

subtype 'HydrlmpSurveydate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpElevacc', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HydrlmpDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'HydrlmpTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HydrlmpTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'HydrlmpComments', as 'Str', where { length($_) <= 10 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [10] char, not [$length] characters.~"  };
subtype 'HydrlmpMeaspttype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpDatumtype', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpSurveyor', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpMeasptdesc', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'HydrlmpSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'HydrlmpSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'HydrlmpAbovgnd', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'HydrlmpStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'HydrlmpRefpoint', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'HydrlmpDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'HydrlmpRlmp', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,4})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [3].~"  };
subtype 'HydrlmpSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'HydrlmpDbver20', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'HydrlmpHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'HydrlmpUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };

 has 'hydrlmp_surveydate'  => ( is => 'rw', isa => 'HydrlmpSurveydate' ); 
 has 'hydrlmp_elevacc'  => ( is => 'rw', isa => 'HydrlmpElevacc' ); 
 has 'hydrlmp_usermod'  => ( is => 'rw', isa => 'HydrlmpUsermod' ); 
 has 'hydrlmp_time'  => ( is => 'rw', isa => 'HydrlmpTime' ); 
 has 'hydrlmp_date'  => ( is => 'rw', isa => 'HydrlmpDate' ); 
 has 'hydrlmp_pipe'  => ( is => 'rw', isa => 'HydrlmpPipe' ); 
 has 'hydrlmp_timecreate'  => ( is => 'rw', isa => 'HydrlmpTimecreate' ); 
 has 'hydrlmp_timemod'  => ( is => 'rw', isa => 'HydrlmpTimemod' ); 
 has 'hydrlmp_comments'  => ( is => 'rw', isa => 'HydrlmpComments' ); 
 has 'hydrlmp_measpttype'  => ( is => 'rw', isa => 'HydrlmpMeaspttype' ); 
 has 'hydrlmp_datumtype'  => ( is => 'rw', isa => 'HydrlmpDatumtype' ); 
 has 'hydrlmp_datemod'  => ( is => 'rw', isa => 'HydrlmpDatemod' ); 
 has 'hydrlmp_surveyor'  => ( is => 'rw', isa => 'HydrlmpSurveyor' ); 
 has 'hydrlmp_measptdesc'  => ( is => 'rw', isa => 'HydrlmpMeasptdesc' ); 
 has 'hydrlmp_spare2'  => ( is => 'rw', isa => 'HydrlmpSpare2' ); 
 has 'hydrlmp_spare1'  => ( is => 'rw', isa => 'HydrlmpSpare1' ); 
 has 'hydrlmp_abovgnd'  => ( is => 'rw', isa => 'HydrlmpAbovgnd' ); 
 has 'hydrlmp_station'  => ( is => 'rw', isa => 'HydrlmpStation' ); 
 has 'hydrlmp_refpoint'  => ( is => 'rw', isa => 'HydrlmpRefpoint' ); 
 has 'hydrlmp_datecreate'  => ( is => 'rw', isa => 'HydrlmpDatecreate' ); 
 has 'hydrlmp_rlmp'  => ( is => 'rw', isa => 'HydrlmpRlmp' ); 
 has 'hydrlmp_spare3'  => ( is => 'rw', isa => 'HydrlmpSpare3' ); 
 has 'hydrlmp_dbver20'  => ( is => 'rw', isa => 'HydrlmpDbver20' ); 
 has 'hydrlmp_hole'  => ( is => 'rw', isa => 'HydrlmpHole' ); 
 has 'hydrlmp_usercreate'  => ( is => 'rw', isa => 'HydrlmpUsercreate' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables hydrlmp is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables hydrlmp is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS HYDRLMP ( 'Station' TEXT,  'Hole' NUMERIC,  'Pipe' NUMERIC,  'Date' TEXT,  'Time' NUMERIC,  'Datumtype' TEXT,  'Rlmp' NUMERIC,  'Elevacc' TEXT,  'Surveydate' TEXT,  'Surveyor' TEXT,  'Abovgnd' NUMERIC,  'Measpttype' TEXT,  'Measptdesc' TEXT,  'Refpoint' NUMERIC,  'Comments' TEXT,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver20' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Pipe, Date, Time))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO HYDRLMP VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Hydrlmp::Validation;
  use Moose;
  extends 'Hydstra::Hydrlmp';

 has '+hydrlmp_time' => ( required => 1, default => 1200, ); 
 has '+hydrlmp_date' => ( required => 1, default => 18991231, ); 
 has '+hydrlmp_pipe' => ( required => 1, default => 1, ); 
 has '+hydrlmp_station' => ( required => 1,  ); 
 has '+hydrlmp_hole' => ( required => 1, default => 1, ); 

  
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

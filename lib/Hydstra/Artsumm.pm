
{
package Hydstra::Artsumm;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'ARTSUMM';

use constant CHILD_OF => qw( gwpipe );  

use constant PARENT_OF => qw( artdist artflows artpress );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a artsumm table 

=cut

subtype 'ArtsummUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummDate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummPipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtsummTrickle', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtsummDatemod', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummFlwastage', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummFlowdstyp1', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummAcidalkal', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtsummBasin2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummOrifplate', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummEleccond', as 'Num', where { length($_) <= 9 && $_ =~ m{[+-]?(\d{1,5})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [9] and decimals [3].~"  };
subtype 'ArtsummSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtsummBasin1', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummCtf', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummHeadleak', as 'Num', where { length($_) <= 6 && $_ =~ m{[+-]?(\d{1,2})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [6] and decimals [3].~"  };
subtype 'ArtsummTime', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtsummTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtsummBasin3', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummFlowdstyp4', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummBarofinish', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtsummFlowdstyp2', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummBarostart', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'ArtsummDbver23', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummLoginstall', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtsummSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'ArtsummFlowdstyp3', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'ArtsummDatecreate', as 'DateTime', where { length($_) <= 8 && $_ =~ m{[1-2]{1}[0,9]{1}\d{6}}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummNote', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'ArtsummBasin4', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummOpenflow', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,3})?(\.\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [1].~"  };
subtype 'ArtsummMonitornam', as 'Str', where { length($_) <= 60 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [60] char, not [$length] characters.~"  };
subtype 'ArtsummHeadwork', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummWatersamp', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'ArtsummUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'ArtsummLendrain', as 'Num', where { length($_) <= 5 && $_ =~ m{[+-]?(\d{1,1})?(\.\d{1,3})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [5] and decimals [3].~"  };

 has 'artsumm_usermod'  => ( is => 'rw', isa => 'ArtsummUsermod' ); 
 has 'artsumm_date'  => ( is => 'rw', isa => 'ArtsummDate' ); 
 has 'artsumm_pipe'  => ( is => 'rw', isa => 'ArtsummPipe' ); 
 has 'artsumm_trickle'  => ( is => 'rw', isa => 'ArtsummTrickle' ); 
 has 'artsumm_timemod'  => ( is => 'rw', isa => 'ArtsummTimemod' ); 
 has 'artsumm_datemod'  => ( is => 'rw', isa => 'ArtsummDatemod' ); 
 has 'artsumm_flwastage'  => ( is => 'rw', isa => 'ArtsummFlwastage' ); 
 has 'artsumm_flowdstyp1'  => ( is => 'rw', isa => 'ArtsummFlowdstyp1' ); 
 has 'artsumm_acidalkal'  => ( is => 'rw', isa => 'ArtsummAcidalkal' ); 
 has 'artsumm_basin2'  => ( is => 'rw', isa => 'ArtsummBasin2' ); 
 has 'artsumm_orifplate'  => ( is => 'rw', isa => 'ArtsummOrifplate' ); 
 has 'artsumm_eleccond'  => ( is => 'rw', isa => 'ArtsummEleccond' ); 
 has 'artsumm_spare3'  => ( is => 'rw', isa => 'ArtsummSpare3' ); 
 has 'artsumm_basin1'  => ( is => 'rw', isa => 'ArtsummBasin1' ); 
 has 'artsumm_ctf'  => ( is => 'rw', isa => 'ArtsummCtf' ); 
 has 'artsumm_headleak'  => ( is => 'rw', isa => 'ArtsummHeadleak' ); 
 has 'artsumm_time'  => ( is => 'rw', isa => 'ArtsummTime' ); 
 has 'artsumm_timecreate'  => ( is => 'rw', isa => 'ArtsummTimecreate' ); 
 has 'artsumm_basin3'  => ( is => 'rw', isa => 'ArtsummBasin3' ); 
 has 'artsumm_flowdstyp4'  => ( is => 'rw', isa => 'ArtsummFlowdstyp4' ); 
 has 'artsumm_barofinish'  => ( is => 'rw', isa => 'ArtsummBarofinish' ); 
 has 'artsumm_flowdstyp2'  => ( is => 'rw', isa => 'ArtsummFlowdstyp2' ); 
 has 'artsumm_barostart'  => ( is => 'rw', isa => 'ArtsummBarostart' ); 
 has 'artsumm_dbver23'  => ( is => 'rw', isa => 'ArtsummDbver23' ); 
 has 'artsumm_loginstall'  => ( is => 'rw', isa => 'ArtsummLoginstall' ); 
 has 'artsumm_spare2'  => ( is => 'rw', isa => 'ArtsummSpare2' ); 
 has 'artsumm_spare1'  => ( is => 'rw', isa => 'ArtsummSpare1' ); 
 has 'artsumm_flowdstyp3'  => ( is => 'rw', isa => 'ArtsummFlowdstyp3' ); 
 has 'artsumm_station'  => ( is => 'rw', isa => 'ArtsummStation' ); 
 has 'artsumm_datecreate'  => ( is => 'rw', isa => 'ArtsummDatecreate' ); 
 has 'artsumm_note'  => ( is => 'rw', isa => 'ArtsummNote' ); 
 has 'artsumm_hole'  => ( is => 'rw', isa => 'ArtsummHole' ); 
 has 'artsumm_basin4'  => ( is => 'rw', isa => 'ArtsummBasin4' ); 
 has 'artsumm_openflow'  => ( is => 'rw', isa => 'ArtsummOpenflow' ); 
 has 'artsumm_monitornam'  => ( is => 'rw', isa => 'ArtsummMonitornam' ); 
 has 'artsumm_headwork'  => ( is => 'rw', isa => 'ArtsummHeadwork' ); 
 has 'artsumm_watersamp'  => ( is => 'rw', isa => 'ArtsummWatersamp' ); 
 has 'artsumm_usercreate'  => ( is => 'rw', isa => 'ArtsummUsercreate' ); 
 has 'artsumm_lendrain'  => ( is => 'rw', isa => 'ArtsummLendrain' ); 


=head1 SUBROUTINES/METHODS

=head2 parent_of()
  
  Find out what tables artsumm is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables artsumm is a child of.

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
  my $sql_statement ="CREATE TABLE IF NOT EXISTS ARTSUMM ( Station TEXT,  Hole NUMERIC,  Pipe NUMERIC,  Date TEXT,  Time NUMERIC,  Note TEXT,  Monitornam TEXT,  Lendrain NUMERIC,  Barostart NUMERIC,  Barofinish NUMERIC,  Openflow NUMERIC,  Acidalkal NUMERIC,  Eleccond NUMERIC,  Headleak NUMERIC,  Headwork TEXT,  Basin1 TEXT,  Flowdstyp1 TEXT,  Basin2 TEXT,  Flowdstyp2 TEXT,  Basin3 TEXT,  Flowdstyp3 TEXT,  Basin4 TEXT,  Flowdstyp4 TEXT,  Loginstall NUMERIC,  Flwastage NUMERIC,  Orifplate NUMERIC,  Trickle NUMERIC,  Ctf NUMERIC,  Watersamp NUMERIC,  Spare1 TEXT,  Spare2 TEXT,  Spare3 TEXT,  Dbver23 NUMERIC,  Datecreate TEXT,  Timecreate NUMERIC,  Usercreate TEXT,  Datemod TEXT,  Timemod NUMERIC,  Usermod TEXT, PRIMARY KEY (Station, Hole, Pipe, Date))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT INTO ARTSUMM VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  return $sql_statement;
}










no Moose;
}
  
  
{
package Hydstra::Artsumm::Validation;
  use Moose;
  extends 'Artsumm';

 has '+artsumm_date' => ( required => 1, default => 18991231, ); 
 has '+artsumm_pipe' => ( required => 1, default => 1, ); 
 has '+artsumm_time' => (  default => 1200, ); 
 has '+artsumm_station' => ( required => 1,  ); 
 has '+artsumm_hole' => ( required => 1, default => 1, ); 

  
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

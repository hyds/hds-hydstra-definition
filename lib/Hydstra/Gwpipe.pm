
{
package Hydstra::Gwpipe;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'GWPIPE';

use constant CHILD_OF => qw( gwhole );  

use constant PARENT_OF => qw( hydmeas pumptest artsumm hydrlmp casing gwtrace );

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  Use this module to create a new valid record for a gwpipe table 

=cut

subtype 'GwpipeToread', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };
subtype 'GwpipeSlotto', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwpipeUsermod', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwpipePipe', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwpipeTimecreate', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwpipePurpose', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwpipeLinkstn', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwpipeTimemod', as 'Num', where { length($_) <= 4 && $_ =~ m{[+-]?(\d{1,4})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [4] and decimals [0].~"  };
subtype 'GwpipeDatemod', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwpipeSpare2', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwpipeGenstatus', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwpipeBookno', as 'Str', where { length($_) <= 3 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [3] char, not [$length] characters.~"  };
subtype 'GwpipeSpare1', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwpipeParent', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwpipeStation', as 'Str', where { length($_) <= 15 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [15] char, not [$length] characters.~"  };
subtype 'GwpipeSlotfrom', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwpipeDatecreate', as 'Num', where { length($_) <= 8 && $_ =~ m{[+-]?(\d{1,8})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [8] and decimals [0].~"  };
subtype 'GwpipeSpare3', as 'Str', where { length($_) <= 20 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [20] char, not [$length] characters.~"  };
subtype 'GwpipeHole', as 'Num', where { length($_) <= 2 && $_ =~ m{[+-]?(\d{1,2})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [2] and decimals [0].~"  };
subtype 'GwpipeUsercreate', as 'Str', where { length($_) <= 8 }, message{ my $length = length($_);my $value = $_; "Value [$value] must be less than [8] char, not [$length] characters.~"  };
subtype 'GwpipeDbver4', as 'Num', where { length($_) <= 1 && $_ =~ m{[+-]?(\d{1,1})?}}, message{ my $length = length($_);my $value = $_; "Value [$value] must be numeric, less than length [1] and decimals [0].~"  };

 has 'gwpipe_toread'  => ( is => 'rw', isa => 'GwpipeToread' ); 
 has 'gwpipe_slotto'  => ( is => 'rw', isa => 'GwpipeSlotto' ); 
 has 'gwpipe_usermod'  => ( is => 'rw', isa => 'GwpipeUsermod' ); 
 has 'gwpipe_pipe'  => ( is => 'rw', isa => 'GwpipePipe' ); 
 has 'gwpipe_timecreate'  => ( is => 'rw', isa => 'GwpipeTimecreate' ); 
 has 'gwpipe_purpose'  => ( is => 'rw', isa => 'GwpipePurpose' ); 
 has 'gwpipe_linkstn'  => ( is => 'rw', isa => 'GwpipeLinkstn' ); 
 has 'gwpipe_timemod'  => ( is => 'rw', isa => 'GwpipeTimemod' ); 
 has 'gwpipe_datemod'  => ( is => 'rw', isa => 'GwpipeDatemod' ); 
 has 'gwpipe_spare2'  => ( is => 'rw', isa => 'GwpipeSpare2' ); 
 has 'gwpipe_genstatus'  => ( is => 'rw', isa => 'GwpipeGenstatus' ); 
 has 'gwpipe_bookno'  => ( is => 'rw', isa => 'GwpipeBookno' ); 
 has 'gwpipe_spare1'  => ( is => 'rw', isa => 'GwpipeSpare1' ); 
 has 'gwpipe_parent'  => ( is => 'rw', isa => 'GwpipeParent' ); 
 has 'gwpipe_station'  => ( is => 'rw', isa => 'GwpipeStation' ); 
 has 'gwpipe_slotfrom'  => ( is => 'rw', isa => 'GwpipeSlotfrom' ); 
 has 'gwpipe_datecreate'  => ( is => 'rw', isa => 'GwpipeDatecreate' ); 
 has 'gwpipe_spare3'  => ( is => 'rw', isa => 'GwpipeSpare3' ); 
 has 'gwpipe_hole'  => ( is => 'rw', isa => 'GwpipeHole' ); 
 has 'gwpipe_usercreate'  => ( is => 'rw', isa => 'GwpipeUsercreate' ); 
 has 'gwpipe_dbver4'  => ( is => 'rw', isa => 'GwpipeDbver4' ); 


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables gwpipe is a parent of.

=cut
  
sub keys{
  my @kys = qw( station hole pipe );
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables gwpipe is a parent of.

=cut
  
sub parent_of{
  my @array = PARENT_OF;
  return \@array;
}

=head2 child_of()
  
  Find out what tables gwpipe is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( station hole pipe linkstn parent toread bookno genstatus purpose slotfrom slotto spare1 spare2 spare3 dbver4 datecreate timecreate usercreate datemod timemod usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS GWPIPE ( 'Station' TEXT,  'Hole' NUMERIC,  'Pipe' NUMERIC,  'Linkstn' TEXT,  'Parent' TEXT,  'Toread' NUMERIC,  'Bookno' TEXT,  'Genstatus' TEXT,  'Purpose' TEXT,  'Slotfrom' NUMERIC,  'Slotto' NUMERIC,  'Spare1' TEXT,  'Spare2' TEXT,  'Spare3' TEXT,  'Dbver4' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Station, Hole, Pipe))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO GWPIPE VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
package Hydstra::Gwpipe::Validation;
  use Moose;
  extends 'Hydstra::Gwpipe';

 has '+gwpipe_pipe' => ( required => 1, default => 1, ); 
 has '+gwpipe_purpose' => (  default => 'oth', ); 
 has '+gwpipe_station' => ( required => 1,  ); 
 has '+gwpipe_hole' => ( required => 1, default => 1, ); 

  
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

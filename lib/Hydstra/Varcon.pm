
{
package Hydstra::Varcon;
use Moose;
use Moose::Util::TypeConstraints;
__PACKAGE__->meta->error_class('Moose::Error::Croak');

use constant UC_TABLE_NAME => 'VARCON';

use constant CHILD_OF => qw(  );  



=head1 VERSION

Version 0.02

=cut

our $VERSION = '0.02';


=head1 SYNOPSIS

  Use this module to create a new valid record for a wrehouse table 

=cut


=head2 variable()
  
  If the table has a variable column return the column number, and indicate whether or not it is a combined variable.
  There are many different options for a variable field. For examples:
  1. combined = variable.subvariable
    e.g. 100.01
  2. uncombined = variable
    e.g 100
  3. from variable = varfrom
    e.g. 100
  4. subvariable = subvar
    e.g. .01
  etc.
 

=cut
  
sub variable{

  #our $VARFROM_COLUMN = '0';
  #our $VARTO_COLUMN = '1';
  #our $COMBINED_VARIABLE = '0';

  my %var = ( 
    'variables'=>1,
    'varfrom_column'=>'0',
    'varto_column'=>'1',
    'combined_variable'=>0
  );
  
  return \%var;
}


=head1 SUBROUTINES/METHODS

=head2 keys()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub keys{
  my @kys = qw( varnum );
  return \@kys;
}

=head2 mergify_keys()
  
  Return the keys required for mergifying

=cut
  
sub mergify_keys{
  my @kys = qw( varfrom varto method subvarkey forcepass2 secvfrom secvto	datasource steps	a	b);
  return \@kys;
}

=head2 parent_of()
  
  Find out what tables wrehouse is a parent of.

=cut
  
sub parent_of{
  return 0;
}

=head2 child_of()
  
  Find out what tables wrehouse is a child of.

=cut
  
sub child_of{
  my @array = CHILD_OF;
  return \@array;
}

=head2 ordered_fields()
  
  Return the ordered fields for SQLite INSERT for the Hydstra table

=cut
  
sub ordered_fields{
  my @fields = qw( varfrom	varto	method	subvarkey	forcepass2	secvfrom	secvto	datasource steps	a	b	dbver22	datecreate	timecreate	usercreate	datemod	timemod	usermod );
  return \@fields;
}

=head2 create()
  
  SQL statement to create table in SQLite db.

=cut
  
sub create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS VARCON ( 'Varfrom' NUMERIC,  'Varto' NUMERIC,  'Method' TEXT,  'Subvarkey' TEXT,  'Forcepass2' TEXT, 'Secvfrom' NUMERIC,  'Secvto' NUMERIC,  'Datasource' TEXT,  'Steps' TEXT,  'A' NUMERIC,  'B' NUMERIC, 'Dbver21' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (Varfrom, Varto))";
  return $sql_statement;
}

=head2 mergify_create()
  
  SQL statement to create table in SQLite db for mergification.

=cut
  
sub mergify_create{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="CREATE TABLE IF NOT EXISTS VARCON ( 'Varfrom' NUMERIC,  'Varto' NUMERIC,  'Method' TEXT,  'Subvarkey' TEXT,  'Forcepass2' TEXT, 'Secvfrom' NUMERIC,  'Secvto' NUMERIC,  'Datasource' TEXT,  'Steps' TEXT,  'A' NUMERIC,  'B' NUMERIC, 'Dbver21' NUMERIC,  'Datecreate' TEXT,  'Timecreate' NUMERIC,  'Usercreate' TEXT,  'Datemod' TEXT,  'Timemod' NUMERIC,  'Usermod' TEXT, PRIMARY KEY (varfrom, varto, method, subvarkey, forcepass2, secvfrom, secvto, datasource, steps, a, b))";
  return $sql_statement;
}

=head2 prepare()
  
  SQL statment to prepare table for entering data to SQLite db.

=cut
  
sub prepare{
  my $uctable = UC_TABLE_NAME;
  my $sql_statement ="INSERT OR IGNORE INTO VARCON VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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

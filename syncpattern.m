## Copyright (C) 2019 Yamasaki Shoma
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} syncpattern (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yamasaki Shoma <yshoma@localhost.localdomain>
## Created: 2019-07-11

function retval = syncpattern (f1, f2, t)
retval = sin(2*pi*f1*t)+sin(2*pi*f2*t);
endfunction

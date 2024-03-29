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
## @deftypefn {} {@var{retval} =} demodule (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yamasaki Shoma <yshoma@localhost.localdomain>
## Created: 2019-07-12

function retval = demodule (m, Arg)
##  retval = pi;
##  for k = 1:m
##    if Arg >= -pi - pi/m + 2*(k-1)*pi/m && Arg < -pi + pi/m + 2*(k-1)*pi/m
##      retval = -pi + 2*(k-1)*pi/m;
##    endif
##  endfor
if Arg < -5*pi/6
  retval = -pi;
elseif -5*pi/6 <= Arg && Arg < -pi/2
  retval = -2*pi/3;
elseif -pi/2 <= Arg && Arg < -pi/6
  retval = -pi/3;
elseif -pi/6 <= Arg && Arg < pi/6
  retval = 0;
elseif pi/6 <= Arg && Arg < pi/2
  retval = pi/3;
elseif pi/2 <= Arg && Arg < 5*pi/6
  retval = 2*pi/3;
else
  retval = pi;
endif
endfunction

## Copyright (C) 2019 Yamasaki SHOMA
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
## @deftypefn {} {@var{retval} =} psi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Yamasaki SHOMA <yshoma@localhost.localdomain>
## Created: 2019-07-18

function retval = psiList (symNum)
retval=zeros(1,symNum);
Sigma=0;
for k=1:symNum
  Sigma=Sigma+g(k-1,symNum);
  retval(k)=2*pi*Sigma/symNum;
  retval(k)=verifying(retval(k));
endfor
endfunction

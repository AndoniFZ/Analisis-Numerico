## Copyright (C) 2019 Fermin
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
## @deftypefn {} {@var{retval} =} w_sor (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Fermin <Fermin@FERMIN-PC>
## Created: 2019-10-03

function[w] = w_sor (T)
  re=max(abs(eig(T)));
  disp('El radio espectral de la matriz T de Gauss Seidel es: '),disp(re);
  disp(' ');
  w=2/(1+sqrt(1-(re*re)));
  disp('El factor de relajacion para el metodo SOR es: '),disp(w);
endfunction

sampling = 48000;
reclength = 210;
dirname = '../';
rootname = ["center_0";"right_0";"left_0"];
%rootname = ["center0";"right0";"left0"];
extension = '.wav';

% data = [];
% for i = 1:3
%     for j = 1:3
%               filename = [dirname,rootname1(,num2str(k),rootname2,num2str(coor(k)),rootname3,extension];
%   disp(filename);
% 	tmp = audioread(filename)(5*48000:205*48000 - 1,1);
%   disp(size(tmp));
% 	tmp = tmp';
% 	data = [data;	tmp];
%     endfor
% endfor

data = [];
for k = 1:3
  for l = 1:3
    filename = strcat(dirname,dirname2,rootname(k,:),num2str(l),extension);
    tmp = audioread(filename)(1:reclength*sampling - 1,1);
    data = [data;tmp'];
  endfor
endfor

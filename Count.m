count = zeros(size(recsymbol)(1),1);
reference = ones(1,9)*pi/3;

for k = 1:length(count)
  for l = 1:100
    count(k) += prod(reference == recsymbol(k,:,l))
  endfor
endfor

for l=1:size(recsymbol)(3)
figure;
for k=1:9
  subplot(3,3,k);
  plot(recsymbol(k,:,l));
endfor
end
##for k=1:1
##Arg=arg(2*j*matchedFilter(comsin(2,:),data(3,index+(150*k-4)*sampling/1000:index+(150*k+4)*sampling/1000)))-arg(2*j*matchedFilter(comsin(1,:),data(3,index+(150*k-4)*sampling/1000:index+(150*k+4)*sampling/1000)));
##
##for l=1:length(Arg)
##  Arg(l)=verifying(Arg(l));
##endfor
##
##subplot(5,2,k);
##plot(Arg);
##disp(size(Arg);
##end

cor=matchedFilter(Chirp,data(3,sampling:3*sampling));
[s,i]=sort(cor,"descend");
index=i(1) + sampling;
figure;
disp(1000);
for k=1:10
  disp('hello');
  Arg2=arg(2*j*matchedFilter(comsin(2,:),data(index+(150*k-2)*sampling/1000:index+(150*k+4)*sampling/1000)));
  Arg1=arg(2*j*matchedFilter(comsin(1,:),data(index+(150*k-2)*sampling/1000:index+(150*k+4)*sampling/1000)));
  Arg=Arg2-Arg1;
  for l=1:length(Arg)
    Arg(l)=verifying(Arg(l));
  endfor
  subplot(5,2,k);
  plot(Arg);  
endfor

cor=matchedFilter(Chirp,data(3,sampling:3*sampling));
[s,i]=sort(cor,"descend");
index=i(1) + sampling;
figure;
arglist=[];
for k=1:10
  tmp=data(3,index+(150*k-2)*sampling/1000:index+(150*k+4)*sampling/1000);
  Arg2=arg(2*j*matchedFilter(comsin(2,:),tmp));
  Arg1=arg(2*j*matchedFilter(comsin(1,:),tmp));
  Arg=Arg2-Arg1;
  for l=1:length(Arg)
    Arg(l)=verifying(Arg(l));
  endfor
  subplot(5,4,k*2-1);
  plot(Arg);
  subplot(5,4,k*2);
  plot(tmp);
  arglist=[arglist;Arg(2*sampling/1000)];
endfor
tmp=arglist(2:end)-arglist(1:end-1);
for k=1:length(tmp)
  tmp(k)=verifying(tmp(k));
  tmp(k)=demodule(6,tmp(k));
endfor
disp(tmp);
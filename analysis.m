c=34000;
Tx=[0,50;50,50;-50,50];
sp=[-10,0;10,0];
ts=zeros(size(Tx)(1)*3,1);
for k=1:size(Tx)(1)
  ts(k*3,1) = (norm(Tx(k,:)-sp(1,:)) - norm(Tx(k,:)-sp(2,:)))/c;
endfor
ts=round(ts*sampling);

cor=matchedFilter(pilot,data(:,sampling:3*sampling));
[tmp,ind]=sort(cor,2,"descend");

window=[];
for k=1:size(data)(1)
  window=[window;data(k,sampling+ind(k,1)+sampling/1000:sampling+ind(k,1)+3*sampling/1000)];
endfor

Arg = arg(2*j*window*pilotExp(2,:)')-arg(2*j*window*pilotExp(1,:)');
for k = 1:length(Arg)
  if Arg(k) > pi
    Arg(k) -= 2*pi;
  elseif Arg(k) <= -pi
    Arg(k) += 2*pi;
  endif
endfor
for k=1:length(Arg)
  Arg(k)=sampling*Arg(k)*(1/pi-1/abs(Arg(k)))/1000;
endfor

index = ind(:,1)+sampling+Arg;
index = round(index)+ts;

phi1=zeros(9,10);
phi2=zeros(9,10);
amp1=zeros(9,10);
amp2=zeros(9,10); 

for k=1:10
  window=[];
  for l=1:size(data)(1)
    window=[window;data(l,index(l)+(150*k+1)*sampling/1000:index(l)+(150*k+3)*sampling/1000)];
  endfor
  pro1=matchedFilter(comsin(1,:),window);
  pro2=matchedFilter(comsin(2,:),window);
  phi1(:,k) = arg(pro1);
  phi2(:,k) = arg(pro2);
  amp1(:,k) = abs(pro1);
  amp2(:,k) = abs(pro2);
endfor

Arg=zeros(3,10);
for k=1:10
  for l=1:3
    Arg(l,k) = arg(amp2(3*l-1,k)*exp(j*phi2(3*l-1,k)) + amp2(3*l,k)*exp(j*phi2(3*l,k))) - arg(amp1(3*l-1,k)*exp(j*phi1(3*l-1,k)) + amp1(3*l,k)*exp(j*phi1(3*l,k)));
    Arg(l,k) = verifying(Arg(l,k));
  endfor
endfor

theta = Arg(:,2:end) - Arg(:,1:end-1);
for k = 1:size(theta)(1)
  for l = 1:size(theta)(2)
    theta(k,l) = demodule(6,theta(k,l));
  endfor
endfor

sampling=524288;
amplitude=floor((power(2,16) - 1) / 4);
amplitude2=[amplitude/2,amplitude,0];
comSampling=sampling/2;
c=34000;
M=6;
SymNum=10;
f0=12000;
f1=18000;
k=(f1-f0)/(10/1000);

control=[1,0,0];

radian=[0];
radius=[50];

target=zeros(length(radian),length(radius),2);
for k=1:length(radian)
  for l=1:length(radius)
    target(k,l,:)=[-radius*sin(radian),radius*cos(radian)];
  endfor
endfor

Tx=[-10,0;10,0;-10,0];
freq=[18750,19250];

psi=psiList(SymNum);

DeltaTheta=ones(SymNum-1)*pi/3;%差動位相差偏移の設定

theta=zeros(1,SymNum);
for k=2:SymNum
  theta(k)=theta(k-1)+DeltaTheta(k-1);
  theta(k)=verifying(theta(k));
endfor

pilot=[
0:1/comSampling:150/1000-1/comSampling;
zeros(1,ceil(150*comSampling/1000-1));
];


for k=1:length(pilot(1,:))
  if pilot(1,k)>=3/1000&&pilot(1,k)<=7/1000
  pilot(1,k)=amplitude*syncpattern(15750,16250,pilot(1,k),0,0);
else
  pilot(1,k)=0;
endif
endfor
pilot=[pilot;pilot(1,:)];


ts=zeros(length(radian),length(radius),size(Tx)(1));
for k=1:length(radian)
  for l=1:length(radius)
    for kk=1:size(Tx)(1)
    ts(k,l,kk)=norm(Tx(kk,:)-[target(k,l,1),target(k,l,2)])/c;
    endfor
  endfor
endfor
ts-=ts(1);

spotWave=[];
for k=1:size(Tx)(1)
  tmp=150/1000:1/comSampling:2;
  for l=1:SymNum
    for kk=1+round((l-1)*150*comSampling/1000):round(l*150*comSampling/1000)
      if mod(1000*tmp(kk),150) > 3 - theta(l)/pi - 1000*ts(k) && mod(1000*tmp(kk),150) < 7 - theta(l)/pi - 1000*ts(k)
        tmp(kk) = amplitude2(k)*syncpattern(freq(1),freq(2),tmp(kk),theta(l),control(k)*psi(l));
      else
        tmp(kk) = 0;
      endif
    endfor
  endfor
  tmp(SymNum*150*comSampling/1000:end)=0;
  tmp=[pilot(k,:),tmp];
  spotWave=[spotWave;tmp];
endfor

for k=1:3
  figure;
  plot(spotWave(k,:));
endfor

%for k=1:1%size(Tx)(1)
%  tmp=150/1000:1/comSampling:2-1/comSampling;
%  for l=1:SymNum
%    disp([k,l]);
%    tmp(round(1+(l-1)*150*comSampling/1000):round(l*150*comSampling/1000))=[zeros(1,floor(comSampling*(3/1000-ts(k)-theta(l)/pi/1000))),amplitude2(k)*syncpattern(freq(1),freq(2),tmp(ceil(comSampling*((l-1)*150/1000+3/1000-ts(k)-theta(l)/pi/1000)):floor(comSampling*((l-1)*150/1000+7/1000-ts(k)-theta(l)/pi/1000))),theta(l),psi(l)),zeros(1,length(tmp(round(1+(l-1)*150*comSampling/1000):round(l*150*comSampling/1000)))-length([zeros(1,floor(comSampling*(3/1000-ts(k)-theta(l)/pi/1000))),amplitude2(k)*syncpattern(freq(1),freq(2),tmp(ceil(comSampling*((l-1)*150/1000+3/1000-ts(k)-theta(l)/pi/1000)):floor(comSampling*((l-1)*150/1000+7/1000-ts(k)-theta(l)/pi/1000))),theta(l),psi(l))]))];
%  endfor
%  spotWave=[spotWave;tmp];
%endfor


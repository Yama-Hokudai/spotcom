m = 6;

freq = [18750,19250];
t1 = -1/1000:1/sampling:1/1000;
t2 = -1/1000:1/sampling:3/1000;

comsin = [exp(-j*2*pi*freq(1)*t1);exp(-j*2*pi*freq(2)*t1)];
sync = syncpattern(freq(1),freq(2),t2,0,0);

pilot = syncpattern(15750,16250,t2,0,0);
pilotExp= [exp(-j*2*pi*15750*t1);exp(-j*2*pi*16250*t1)];

index = zeros(9,1);
recsymbol = zeros(9,9,100);
for iter = 1:2
  window=[];
  for k=1:size(data)(1)
    window=[window;data(k,index(k)+sampling:index(k)+3*sampling)];
  endfor
  
  tmp = matchedFilter(pilot,window);
  [tmp,ind] = sort(abs(tmp),2,"descend");
  
  window=[];
  for k=1:size(data)(1)
    window=[window;data(k,ind(k,1) + index(k) + round(sampling*(1+1/1000)):ind(k,1) + index(k) + round(sampling*(1+3/1000)))];
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

  index += ind(:,1)+sampling+Arg;
  index += 151*sampling/1000;
  index = round(index);
  
  window = [];
  for k = 1:size(data)(1)
    window = [window;data(k,index(k):index(k)+2*sampling/1000)];
  endfor
  Arg = arg(2*j*window*comsin(2,:)')-arg(2*j*window*comsin(1,:)');
  for k = 1:length(Arg)
    if Arg(k) > pi
      Arg(k) -= 2*pi;
    elseif Arg(k) <= -pi
      Arg(k) += 2*pi;       
    endif
  endfor
  epoch = index;
  Arg = [Arg,Arg];

  seqence = zeros(length(Arg),9);
    
  for k = 1:9
    window = [];
    for l = 1:size(data)(1)
      window = [window;data(l,epoch(l) + k*150*sampling/1000:epoch(l) + (2+k*150)*sampling/1000)];
    endfor
    Arg(:,1) = arg(2*j*window*comsin(2,:)')-arg(2*j*window*comsin(1,:)');
    for l = 1:length(Arg)
      Arg(l,1) = verifying(Arg(l,1));
    endfor
    tmp = Arg(:,2) - Arg(:,1);
    Arg(:,2) = Arg(:,1);

    for l = 1:length(tmp)
      tmp(l) = verifying(tmp(l));
      tmp(l) = demodule(m,tmp(l));
    endfor
    seqence(:,k) = tmp;
  endfor
  recsymbol(:,:,iter) = seqence;
  disp(iter);
endfor

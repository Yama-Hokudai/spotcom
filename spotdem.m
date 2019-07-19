m = 6;

freq = [18750,19250];
t1 = -1/1000:1/sampling:1/1000;
t2 = -1/1000:1/sampling:3/1000;

comsin = [exp(-j*2*pi*freq(1)*t1);exp(-j*2*pi*freq(2)*t1)];
sync = syncpattern(freq(1),freq(2),t2);
f0 = 12000;
f1 = 18000;
k = (f1 - f0)/10/1000;
t3 = 0:1/sampling:10/1000;
Chirp = chirp2(f0,f1,t3);

index = 0;
recsymbol = zeros(9,9,100);
for iter = 1:100
  tmp = matchedFilter(Chirp,data(1:9,sampling+index:3*sampling+index));
  [tmp,ind] = sort(abs(tmp),2,"descend");
  index += ind(:,1);
  index += 150*sampling/1000;%changed from 151
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
    epoch = index - 48;
    Arg = [Arg,Arg];

    seqence = zeros(length(Arg),9);
    
      for k = 1:9
      window = [];
      for l = 1:size(data)(1)
        window = [window;data(l,epoch(l) + k*150*sampling/1000:epoch(l) + (2+k*150)*sampling/1000)];
      endfor
      Arg(:,1) = arg(2*j*window*comsin(2,:)')-arg(2*j*window*comsin(1,:)');
      for l = 1:length(Arg)
        if Arg(l,1) > pi
          Arg(l,1) -= 2*pi;
          elseif Arg(l,1) <= -pi
            Arg(l,1) += 2*pi;
          endif
        endfor
        tmp = Arg(:,1) - Arg(:,2);
        Arg(:,2) = Arg(:,1);

        for l = 1:length(tmp)
          tmp(l) = demodule(m,tmp(l));
        endfor
        seqence(:,k) = tmp;
      endfor
      recsymbol(:,:,iter) = seqence;
      disp(iter);
    endfor
    
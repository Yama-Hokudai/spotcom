start=[78600,85670,18900,59200,80300];
duration=[300,300,300,350,350];
ind=[1,2,3,4,7];
for k=1:length(ind)
figure;
for l=1:7
subplot(7,1,l);
plot(data(ind(k),start(k)+(l-1)*150*sampling/1000:start(k)+duration(k)+(l-1)*150*sampling/1000));
end
end
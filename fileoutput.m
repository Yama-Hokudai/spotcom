for k=1:size(spotWave)(1)
filename=['wave/spotwave',num2str(k),'.txt'];
disp(filename);
fileID=fopen(filename,'wb');
formatSpec='%d\n';

fprintf(fileID,formatSpec,spotWave(k,:));

fclose(fileID);
end
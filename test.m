clear;
clc;
tic;
%[data,classLabelvector]=readData('/home/yan/Data/Data1.dat');
[data,classLabelvector]=readMock('/home/yan/mocks/MS_mag_test1.txt');
branching_factor=30;
n_clusters=50;
threshold=1;
brc = Birch( threshold,branching_factor, n_clusters);
brc=brc.fit(data);
labels=brc.predict(data);
labels=labels;

%%               FM-Index
[TP,FN,FP,TN]=New_index(classLabelvector',labels');
fprintf('%f,%f,%f,%f',TP,FN,FP,TN); 
fprintf('\n')
FM=sqrt((TP/(TP+FP))*(TP/(TP+FN))); 
fprintf('the FMindex is %f\n',FM);
toc
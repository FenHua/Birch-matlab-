function[returnMat,classLabelvector]=readData(filename);
data=load(filename);
[row,col]=size(data);
returnMat=zeros(row,2);
classLabelvector=[data(:,1)];
returnMat=data(:,2:3);
end
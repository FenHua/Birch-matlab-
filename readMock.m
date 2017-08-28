function[returnMat,classLabelvector]=readMock(filename);
data=load(filename);
classLabelvector=[data(:,2)];
returnMat=data(:,3:5);
end
clc;
clear all;
fprintf('\nLoading face dataset.\n\n');
%  Load Face dataset
 load ('ex7faces.mat');%load the data
%  Display the first 100 faces in the dataset
X = X(1:100,:);
figure(1)
displayData(X);
new_X = normalize_feature(X);%mean normalization and feature scaling
figure(4)
displayData(new_X)
[m n] = size(new_X);
Cx = (X*X')./m;%Covariance calculation (You can use cov(X))
[U S V] = svd(Cx);%Singular Value Decomposition
Z = U(:,1:20)'*new_X;
figure(2)
displayData(Z);
z_new = U(:,1:20)*Z;
figure(3)
displayData(z_new);

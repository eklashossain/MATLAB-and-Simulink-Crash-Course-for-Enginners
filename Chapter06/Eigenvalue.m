% Eigenvalue
% Input matrix, X
% [vector, lambda]=eig(X)
% Here, vector is the eigenvector
% lambda is a diagonal vector containing the eigenvalues
clc; clear;
X=[1 2 0;0 5 0;1 3 1];
[vector,lambda]=eig(X);
disp('The eigenvalues of X:')
lamda=sum(lambda)
disp('The eigenvector of X:')
vector

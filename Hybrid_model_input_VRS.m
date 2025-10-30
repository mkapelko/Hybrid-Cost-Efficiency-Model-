function [CE,TE,AE,actual_cost,target_cost,targets,lamdas,targets_outputs]=Hybrid_model_input_VRS(X,Y,C,m1)

% It solves a generalization of Fare and Tone model 
% by assuming that the first m1 inputs are fixed and the rest non-fixed. 

[n,inputs] = size(X);

V = X(:,m1+1:inputs).*C(:,m1+1:inputs);
X1 = [X(:,1:m1) V];

C1 = [C(:,1:m1) ones(n,inputs-m1)];

[CE,TE,AE,actual_cost,target_cost,targets,lamdas,targets_outputs]=Fare_model_input_VRS(X1,Y,C1);
function [ alpha, beta, gamma ] = euler2abg( Q )
% this function is used to get rotation angles from euler rotation matrix
%% Coded by
% Mohamed Mohamed El-Sayed Atyya
% mohamed.atyya94@eng-st.cu.edu.eg
%% INPUTS:
% Q  : euler rotation matrix
%% OUTPUTS:
% alpha      : rotation about z
% beta        : rotation about x
% gamma   : rotation about z
% ---------------------------------------------------------------------------------------------------------------------------------------------------------
alpha=atand(Q(3,1)/-Q(3,2));
if Q(3,1) < 0 && -Q(3,2) > 0 && alpha <0
    alpha=alpha+360;
elseif -Q(3,2) < 0 && Q(3,1) > 0 && alpha <0
    alpha=alpha+180;
elseif Q(3,1) < 0 && -Q(3,2) < 0
    alpha=alpha+180;
end
beta=acosd(Q(3,3));
gamma=atand(Q(1,3)/Q(2,3));
if Q(1,3) < 0 && Q(2,3) > 0 && gamma < 0
    gamma=gamma+360;
elseif Q(2,3) < 0 && Q(1,3) > 0 && gamma < 0
    gamma=gamma+180;
elseif Q(1,3) < 0 && Q(2,3) < 0
    gamma=gamma+180;
end
end
% Aerodynamics function
% INPUT: glob, state, prop speeds
% OUTPUT: Aerodynamic forces and torques

function out=aero(in)
Model.glob;

% ********* Operational Conditions *********
roll=in(1);     % [rad]
dotroll=in(2);  % [rad/s]
pitch=in(3);
dotpitch=in(4);
yaw=in(5);
dotyaw=in(6);
z=in(7);        % [m]
dotz=in(8);     % [m/s]
x=in(9);
dotx=in(10);
y=in(11);
doty=in(12);

% ********* Actual rotor speeds *********
Omega=in(13:16);    % [rad/s]
P_active = in(17);


%%YOUR CODE HERE
%should calculate the outputs listed below.

out(1:4)=T;
out(5:8)=Q;
out(9:12)=HX;
out(13:16)=HY;
out(17:20)=RRX;
out(21:24)=RRY;
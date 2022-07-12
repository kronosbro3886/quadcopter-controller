% Dynamics fnction
% INPUT: state, aerodynamic forces & torques, prop rot speed
% OUTPUT: system accelerations

function out=dinamica(in)

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

% from aero file   
T=in(13:16);    % The thrusts [N]
Q=in(17:20);    % The counter-torques [Nm]
HX=in(21:24);    % The hub forces in X [N]
HY=in(25:28);   % The hub forces in Y [N]
RRX=in(29:32);   % The rolling moments in X [N]
RRY=in(33:36);   % The rolling moments in Y [N]

% from motor dyna file
Omega=in(37:40);    % [rad/s]
Om=+Omega(1)-Omega(2)+Omega(3)-Omega(4); % Om residual propellers rot. speed [rad/s]

% *************** Rotations (in body fixed frame) *************** 
%YOUR CODE HERE
%calculate
%1)Roll moments
%2)Pitch moments
%3)Yaw moments

% *************** Translations (in earth fixed frame) *************** 
%YOUR CODE HERE
%calculate
%1)X forces
%2)Y forces
%3)Z forces

% *************** OS4 equations of motion *************** 
%YOUR CODE HERE
%Use equations of motion to find rotations and translations and set them as
%output
%ROTATIONS
%1)roll rate [rad/s] 
%2) roll accel [rad/s^2]
%3) pitch rate [rad/s]
%4) pitch accel [rad/s^2]
%5) yaw rate [rad/s]
%6) yaw accel [rad/s^2]

% TRANSLATIONS Z,X,Y
%1) z rate [m/s]
%2) z accel [m/s^2]
%3) x rate [m/s]
%4) x accel [m/s^2]
%5) y rate [m/s]
%6) y accel [m/s^2]


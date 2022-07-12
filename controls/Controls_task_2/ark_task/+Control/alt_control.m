% Altitude control function
% INPUT: state, desired altitude
% OUTPUT: desired speeds

function out=alt_control(in)

% global file for parameters
Model.glob;
roll=in(1);     % [rad]
pitch=in(2);
z=in(3);        % [m]
zd=in(4);  % desired altitude [m]
dotz = in(5);
dotzd=0;


% ********** CONTROL 1 PD ************
%%YOUR CODE HERE TO CALCULATE THE OUTPUT SPEED OF MOTORS


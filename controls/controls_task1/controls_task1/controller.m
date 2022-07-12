function [ u1, u2 ] = controller(~, state, des_state, params)
%CONTROLLER  Controller for the planar quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [y; z], state.vel = [y_dot; z_dot], state.rot = [phi],
%   state.omega = [phi_dot]
%
%   des_state: The desired states are:
%   des_state.pos = [y; z], des_state.vel = [y_dot; z_dot], des_state.acc =
%   [y_ddot; z_ddot]
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls
u1 = 0;
u2 = 0;
utemp=0;

% FILL IN YOUR CODE HERE
%u1 PID with height
h=state.pos(2);
dh=des_state.pos(2);
utemp=500*(dh-h)+1200*(des_state.vel(2)-state.vel(2));
%if(100*(dh-h)- 100*state.vel(2)>0)
  u1=utemp;
%else
 %u1=0;
%end;
%PID in horizontal direction
e_hoz=des_state.pos(1)-state.pos(1);
f_hoz=5*e_hoz+40*(des_state.vel(1)-state.vel(1));
des_theta=f_hoz;
%PID for theta
%if(des_theta>(3.14/18))
   % des_theta=3.14/18;
e_theta=des_theta-state.rot;
u2=-1*e_theta-10*state.omega;
%u2=-0.001;
%enet=enet+(dh-h)*0.01;
%disp(desired_state.pos);
end


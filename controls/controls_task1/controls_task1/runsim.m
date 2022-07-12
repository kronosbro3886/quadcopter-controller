clear;
close all;

addpath('utils');
addpath('trajectories');
%global enet
%
controlhandle = @controller;

% Choose which trajectory you want to test with
%trajhandle = @traj_diamond;
trajhandle = @traj_sine;

[t, state] = simulation_2d(controlhandle, trajhandle);

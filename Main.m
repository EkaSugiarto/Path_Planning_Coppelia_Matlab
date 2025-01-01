clear all; clc; close all;

vrep = remApi('remoteApi');
vrep.simxFinish(-1);
id = vrep.simxStart('127.0.0.1', 19000, true, true, 5000, 5);

if id < 0
    disp('Connection failed!')
    vrep.delete;
    return;
else
    fprintf('Connection %d to remote API server is open!\n', id);
end

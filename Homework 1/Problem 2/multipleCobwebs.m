% Solution to Problem #2
% Written 2/21/2020 by Stacy Brenes using https://youtu.be/mosnfuyML1Y 
% Function draws multiple cobweb maps for an array of different intial
% conditions

close all 
clear all

z = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 ]; 
lengthZ = length(z);

for i = 1: lengthZ 
    cobweb(@graphFunction, 0,1, z(i), 100, i, lengthZ);
end
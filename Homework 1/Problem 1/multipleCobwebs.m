% Solution to Problem #2
% Written 2/21/2020 by Stacy Brenes using https://youtu.be/mosnfuyML1Y 
% Function draws multiple cobweb maps for an array of different intial
% conditions

close all 
clear all

z = linspace(0,1,10); 
lengthZ = length(z);

for i = 1: lengthZ 
    cobweb(@graphFunction, 0,1, z(i), 50, i, lengthZ);
end
close all 
clear all

z = linspace(0,1,10); 
lengthZ = length(z);

for i = 1: lengthZ 
    cobweb(@graphFunction, 0,1, z(i), 50, i, lengthZ);
end
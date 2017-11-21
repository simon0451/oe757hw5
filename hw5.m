%Simon Popecki
%OE 757
%HW 5

clear all;
close all;

sieve = [4 10 20 40 60 100 140 200]; %sieve size, where PAN is omitted

sievedia = [4.75 2 .84 .425 .25 .149 .105 .074]; %grain diameters for each sieve size

L = [0 .1 1.9 65.5 192 142.4 35.7 6.9 .8 %location 1 mass
0 0 .9 26.9 147.9 203 57 10.9 .7 %location 2 mass
0 0 .8 35.8 49.6 214.8 61.6 9.3 .5 %location 3 mass
.3 3.3 51.2 89.5 130.3 200.2 50.8 6 .6 %location 4 mass
0 1.1 33.5 239.5 390.3 64 4 .4 .1]; %location 5 mass

totalm = [445.3 447.3 372.4 532.2 732.9]; %total mass of each location


L1 = L(1,:);

%gives an array that tells what percent of the total mass is in a specific sieve size
for i = 1:length(L1+1)
Ri(i) = 100*((L1(i))./totalm(1));
end








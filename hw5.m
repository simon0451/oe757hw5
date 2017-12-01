%Simon Popecki
%OE 757
%HW 5

clear all;
close all;

%% Part 1
sieve = [4 10 20 40 60 100 140 200]; %sieve size, where PAN is omitted

sievedia = [4.75 2 .84 .425 .25 .149 .105 .074]; %grain diameters for each sieve size

L = [0 .1 1.9 65.5 192 142.4 35.7 6.9 .8 %location 1 mass
0 0 .9 26.9 147.9 203 57 10.9 .7 %location 2 mass
0 0 .8 35.8 49.6 214.8 61.6 9.3 .5 %location 3 mass
.3 3.3 51.2 89.5 130.3 200.2 50.8 6 .6 %location 4 mass
0 1.1 33.5 239.5 390.3 64 4 .4 .1]; %location 5 mass

totalm = [445.3 447.3 372.4 532.2 732.9]; %g, total mass of each location


L1 = L(1,:);
L2 = L(2,:);
L3 = L(3,:);
L4 = L(4,:);
L5 = L(5,:);

%gives an array that tells what percent of the total mass is in a specific sieve size
for i = 1:length(L1+1)
pdfL1(i) = 100*((L1(i))./totalm(1));
pdfL2(i) = 100*((L2(i))./totalm(2));
pdfL3(i) = 100*((L3(i))./totalm(3));
pdfL4(i) = 100*((L4(i))./totalm(4));
pdfL5(i) = 100*((L5(i))./totalm(5));
end

L1tot=sum(L1);
L2tot=sum(L2);
L3tot=sum(L3);
L4tot=sum(L4);
L5tot=sum(L5);

cdf8L1 = (L1(1)+L1(2)+L1(3)+L1(4)+L1(5)+L1(6)+L1(7)+L1(8))/L1tot;
cdf7L1 = (L1(1)+L1(2)+L1(3)+L1(4)+L1(5)+L1(6)+L1(7))/L1tot;
cdf6L1 = (L1(1)+L1(2)+L1(3)+L1(4)+L1(5)+L1(6))/L1tot;
cdf5L1 = (L1(1)+L1(2)+L1(3)+L1(4)+L1(5))/L1tot;
cdf4L1 = (L1(1)+L1(2)+L1(3)+L1(4))/L1tot;
cdf3L1 = (L1(1)+L1(2)+L1(3))/L1tot;
cdf2L1 = (L1(1)+L1(2))/L1tot;
cdf1L1 = (L1(1))/L1tot;
 
cdf8L2 = (L2(1)+L2(2)+L2(3)+L2(4)+L2(5)+L2(6)+L2(7)+L2(8))/L2tot;
cdf7L2 = (L2(1)+L2(2)+L2(3)+L2(4)+L2(5)+L2(6)+L2(7))/L2tot;
cdf6L2 = (L2(1)+L2(2)+L2(3)+L2(4)+L2(5)+L2(6))/L2tot;
cdf5L2 = (L2(1)+L2(2)+L2(3)+L2(4)+L2(5))/L2tot;
cdf4L2 = (L2(1)+L2(2)+L2(3)+L2(4))/L2tot;
cdf3L2 = (L2(1)+L2(2)+L2(3))/L2tot;
cdf2L2 = (L2(1)+L2(2))/L2tot;
cdf1L2 = (L2(1))/L2tot;
 
cdf8L3 = (L3(1)+L3(2)+L3(3)+L3(4)+L3(5)+L3(6)+L3(7)+L3(8))/L3tot;
cdf7L3 = (L3(1)+L3(2)+L3(3)+L3(4)+L3(5)+L3(6)+L3(7))/L3tot;
cdf6L3 = (L3(1)+L3(2)+L3(3)+L3(4)+L3(5)+L3(6))/L3tot;
cdf5L3 = (L3(1)+L3(2)+L3(3)+L3(4)+L3(5))/L3tot;
cdf4L3 = (L3(1)+L3(2)+L3(3)+L3(4))/L3tot;
cdf3L3 = (L3(1)+L3(2)+L3(3))/L3tot;
cdf2L3 = (L3(1)+L3(2))/L3tot;
cdf1L3 = (L3(1))/L3tot;
 
 
cdf8L4 = (L4(1)+L4(2)+L4(3)+L4(4)+L4(5)+L4(6)+L4(7)+L4(8))/L4tot;
cdf7L4 = (L4(1)+L4(2)+L4(3)+L4(4)+L4(5)+L4(6)+L4(7))/L4tot;
cdf6L4 = (L4(1)+L4(2)+L4(3)+L4(4)+L4(5)+L4(6))/L4tot;
cdf5L4 = (L4(1)+L4(2)+L4(3)+L4(4)+L4(5))/L4tot;
cdf4L4 = (L4(1)+L4(2)+L4(3)+L4(4))/L4tot;
cdf3L4 = (L4(1)+L4(2)+L4(3))/L4tot;
cdf2L4 = (L4(1)+L4(2))/L4tot;
cdf1L4 = (L4(1))/L4tot;
 
cdf8L5 = (L5(1)+L5(2)+L5(3)+L5(4)+L5(5)+L5(6)+L5(7)+L5(8))/L5tot;
cdf7L5 = (L5(1)+L5(2)+L5(3)+L5(4)+L5(5)+L5(6)+L5(7))/L5tot;
cdf6L5 = (L5(1)+L5(2)+L5(3)+L5(4)+L5(5)+L5(6))/L5tot;
cdf5L5 = (L5(1)+L5(2)+L5(3)+L5(4)+L5(5))/L5tot;
cdf4L5 = (L5(1)+L5(2)+L5(3)+L5(4))/L5tot;
cdf3L5 = (L5(1)+L5(2)+L5(3))/L5tot;
cdf2L5 = (L5(1)+L5(2))/L5tot;
cdf1L5 = (L5(1))/L5tot;

cdfL1t = [cdf1L1 cdf2L1 cdf3L1 cdf4L1 cdf5L1 cdf6L1 cdf7L1 cdf8L1];
cdfL2t = [cdf1L2 cdf2L2 cdf3L2 cdf4L2 cdf5L2 cdf6L2 cdf7L2 cdf8L2];
cdfL3t = [cdf1L3 cdf2L3 cdf3L3 cdf4L3 cdf5L3 cdf6L3 cdf7L3 cdf8L3];
cdfL4t = [cdf1L4 cdf2L4 cdf3L4 cdf4L4 cdf5L4 cdf6L4 cdf7L4 cdf8L4];
cdfL5t = [cdf1L5 cdf2L5 cdf3L5 cdf4L5 cdf5L5 cdf6L5 cdf7L5 cdf8L5];

cdfL1td=100*sort(cdfL1t,'descend');
cdfL2td=100*sort(cdfL2t,'descend');
cdfL3td=100*sort(cdfL3t,'descend');
cdfL4td=100*sort(cdfL4t,'descend');
cdfL5td=100*sort(cdfL5t,'descend');

figure(1)
semilogy(sievedia,cdfL1td,'-o',sievedia,cdfL2td,'-o',sievedia,cdfL3td,'-o',sievedia,cdfL4td,'-o',sievedia,cdfL5td,'-o')
title('Cumulative Distributaion For Sediment Diameter')
ylabel('Population Percentage')
xlabel('Grain Diameter (mm)')
legend('Location 1','Location 2','Location 3','Location 4','Location 5','location','southeast')
grid on

figure(2)
semilogx(sievedia,pdfL1(1:end-1),'--o',sievedia,pdfL2(1:end-1),'--o',sievedia,pdfL3(1:end-1),'--o',sievedia,pdfL4(1:end-1),'--o',sievedia,pdfL5(1:end-1),'--o')
title('Probability Distribution For Sediment Diameter')
ylabel('Population Percentage')
xlabel('Grain Diameter (mm)')
legend('Location 1','Location 2','Location 3','Location 4','Location 5','location','southeast')
grid on
%seems to follow a log normal distribution

%finding LD50 grain diameters in mm
LD50L1 = interpolate(50,sievedia,cdfL1td);
LD50L2 = interpolate(50,sievedia,cdfL2td);
LD50L3 = interpolate(50,sievedia,cdfL3td);
LD50L4 = interpolate(50,sievedia,cdfL4td);
LD50L5 = interpolate(50,sievedia,cdfL5td);

%% Part 2
%What is the bulk density, sediment density, porosity, packing, and specific gravity of the sample at Location 2 
bulkdensity = totalm(2)/270.9; %grams/cm^3, the 270.9 number was given sample container volume

masswater = 544.9-totalm(2); %finding what portion of the sample is actually water
volwater = masswater/1.03; %cm^3, finding the volume of the water in the sample
e = volwater/270.9;
porosity = 1-e; %unitless, porosity, "n"
packing = 1-porosity; %unitless
specificgravity = bulkdensity/(porosity); %specific gravity of the sample
sedimentdensity = specificgravity*1030; %kg/m^3, multiplying by water density to get Rho_s

%% Part 3
 
%finding critical shields parameter
rho = 1030; %density of seawater, kilos per cubic meter
g = 9.81; %m/s^2, acceleration of gravity
LD50all = [LD50L1 LD50L2 LD50L3 LD50L4 LD50L5]; %d50 values for all 5 locations, mm?
% tauc = .5*rho*fc*usq
% shieldscrit = tauc/(rho*(s-1)*g*LD50all)










%% Part 5

load part5data.mat

%after = the bathymetry data after the hurricane, depth in meters
%before = the bathymetry data before the hurricane, depth in meters
%offshoredistance = the distance from the beach, meters
%FRFwaterlevelmeters = the tide, meters
%currentsawac5 = the water current at a point called awac 5
%currentsawac6 = the water current at a point called awac 6
%WindSpeedms = the windspeed in meters per second
%wavesawac5Hs = wave height at awac 5, meters
%wavesawac6Hs = wave height at awac 6, meters

%bathymetry information
figure(5)
plot(offshoredistance,before,offshoredistance,after)
title('Bathymetry of Duck Beach Before and After Tropical Storm Beryl')
xlabel('Offshore Distance (m)')
ylabel('Seafloor Profile (m)')
legend('Pre-Storm','Post-Storm')
grid on

sampleint = 6; %six minutes per sample, 240 samples per day
timespan = (0:6:10080); %minutes
timespandays = timespan/1440;

timewind = 0:10.58:(7*1440);
winddays = timewind/1440;

timeheight = 0:60:1440*7;
heightdays = timeheight/1440;

currentheight = 0:120:1440*7;
currentdays = currentheight/1440;

%tidal information
figure(6)
plot(timespandays,FRFwaterlevelmeters)
title('Tides From May 6th to June 2nd')
xlabel('Time Since May 6th (days)')
ylabel('Water Level Deviation From Mean (m)')
grid on

%wind information
figure(7)
plot(winddays,WindSpeedms)
title('Windspeed From May 6th to June 2nd')
xlabel('Time Since May 6th (days)')
ylabel('Wind Speed (m/s)')
grid on

%wave height information
figure(8)
plot(heightdays,wavesawac5Hs,heightdays,wavesawac6Hs)
title('Wave Height From May 6th to June 2nd')
xlabel('Time Since May 6th (days)')
ylabel('Wave Height (m)')
legend('AWAC 5','AWAC 6')
grid on

%current information
figure(9)
plot(currentdays,currentsawac5,currentdays,currentsawac6)
title('Current From May 6th to June 2nd')
xlabel('Time Since May 6th (days)')
ylabel('Current (m/s)')
legend('AWAC 5','AWAC 6')
grid on














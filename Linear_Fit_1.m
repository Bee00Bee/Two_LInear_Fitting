clear all;
close all;
clc;
%% importing data and calculating 
data = importdata('datafilename.txt');
scatter(x,y1,25,'b','*') 
P = polyfit(x,y1,1);
yfit = P(1)*x+P(2);
hold on;
plot(x,yfit,'r-.');
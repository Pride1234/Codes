clear all; 
close all;
clc;
 
 
hold on
 
for i=1:2.0:10.0
[t,x] = ode45('infectious_mosquito',[0.0:1.0:100.0],[950000,80000,12000*i, 10000, 10000, 8000]);
plot(t,x(:,6),'b','Linewidth',1.5)
end

xlabel('Time in Years')
ylabel('Infectious Mosquitos')

grid
hold off
 
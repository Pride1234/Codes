clear all; 
close all;
clc;

 
 
hold on
 
for i=1:2.0:10.0
[t,x] = ode45('susceptible_mosquito',[0.0:1.0:100.0],[950000,80000,12000, 10000, 10000*i, 8000]);

plot(t,x(:,5),'b','Linewidth',1.5)

end

xlabel('Time in Years')
ylabel('Susceptible Mosquitos')

grid
hold off
 
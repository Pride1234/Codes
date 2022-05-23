clear all; 
close all;
clc;
 
hold on
 
for i=1:1.0:5.0
[t,x] = ode45('recovered_humans',[0.0:1.0:100.0],[950000,80000,12000, 10000*i, 10000, 8000]);
plot(t,x(:,4),'b','Linewidth',1.5)
end

xlabel('Time in Years')
ylabel('Recovered Humans')

grid
hold off
 

 
 



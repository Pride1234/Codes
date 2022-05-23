clear all; 
close all;
clc;
%Solve the equations using ODE45
 
 
hold on
 
for i=1:3.0:15.0
[t,x] = ode45('susceptible',[0.0:1.0:100.0],[950000*i,80000,12000, 10000, 10000, 8000]);
plot(t,x(:,1),'b','Linewidth',1.5)
end
%title('Daily Cases From the First Day')
xlabel('Time in Years')
ylabel('Susceptible Humans')
%legend('without half life');
grid
hold off
 

 
 



function dx = infectious_mosquito(t,x)  % to see plots please run Time_Series_Plots_run.m file.
 
global mu H G nu g a b c f delta h k theta L
 
dx=zeros(6,1);

% Inferred Parameters
a=0.0030;  
b=0.0009;   
c=0.000098;    
  

% Parameters from Literature
g=0.0026;    
h=0.001;    
k= 0.006;      
delta = 0.005; 


mu= 0.000041;
nu= 0.0005;
theta=0.004; 
H=3994200;
G= 100000;
f=0.00016;
 
%N=(x(1)+ x(2)+ x(3) + x(4));
L=(x(5)+x(6));
 
dx(1)=mu*H-a*b*x(1)*x(6)-(mu+nu)*x(1) +g*x(2) +h* x(4);
dx(2)=nu*x(1)-a*f*x(2)*x(6)-(mu+g)*x(2); 
dx(3)=mu*G+a*(b*x(1)+f*x(2))*x(6)-(mu+k+delta)*x(3);
dx(4)=k*x(3)-(mu+h)*x(4);
dx(5)=theta*L-a*c*x(5)*x(3)-theta*x(5);
dx(6)=a*c*x(5)*x(3)-theta*x(6);
 


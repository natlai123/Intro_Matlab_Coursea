function T = pendulum(L,angle0)
T=0;
dt=1e-6;
g = 9.8;
omega = 0;
theta = abs(angle0);

while theta > 0 
alpha = g*sin(theta)/L;
omega = omega + alpha * dt;
theta = theta - omega * dt;
T = T + dt;
end

if L == 0 
    T = 0;
end   

T = 4*T;




function x = RK4(f , x0, t0, tf, dt)

    t = t0:dt:tf;
    nt = numel(t); % number of elements in t
    nx = numel(x0); % number of states
    

    
    x = zeros(nx,nt); % initialize the solution matrix
    x(:,1) = x0; % at t=0, x = x0
    
    for k=1:(nt-1)
        
        k_1 = dt * f(t(k),x(:,k));
        k_2 = dt * f(t(k) + dt/2,x(:,k)+k_1/2);
        k_3 = dt * f(t(k) + dt/2,x(:,k)+k_2/2);
        k_4 = dt * f(t(k) + dt,x(:,k) + k_3);
                
        rk_stages = (k_1 + 2*k_2 + 2* k_3 + k_4)/6;
        
        x(:,k+1) = x(:,k) + rk_stages;
        
    end
   

end

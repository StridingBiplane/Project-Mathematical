function xdot = SIR(x,beta,gamma)

    %% The state variable x = (S(t),I(t),R(t))
   
    xdot = [-beta*x(1)*x(2),
            beta*x(1)*x(2)-gamma*x(2),
            gamma * x(2)];
            
end
function [sol,solv] = yalmipSolveF(Constraints,Objective,solver)
    options = sdpsettings('verbose',1,'solver',solver);
    sol = optimize(Constraints,Objective,options);
    solv=value(Objective);
end
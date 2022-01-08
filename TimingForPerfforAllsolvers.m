scip2 = run(yalmipTestScipNoInt);
bnb2 = run(yalmipTestBnbNoInt);
bmibnb2 = run(yalmipTestBmibnbNoInt);
ipopt = run(yalmipTestipopt);
fmincon = run(yalmipTestFmincon);
baron2 = run(yalmipTestBaronNoInt);
%%
T=zeros(19,6);
for i = 1:length(bnb2)
    T(i,1) = bnb2(i).Duration;
end

for i = 1:length(scip2)
    T(i,2) = scip2(i).Duration;
end
for i = 1:length(bmibnb2)
    T(i,3) = bmibnb2(i).Duration;
end
for i = 1:length(ipopt)
    T(i,4) = ipopt(i).Duration;
end
for i = 1:length(fmincon)
    T(i,5) = fmincon(i).Duration;
end
for i = 1:length(baron2)
    T(i,6) = baron2(i).Duration;
end

per(T);
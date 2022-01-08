% result = sltest.testmanager.run(yalmipTest);
% testCaseResultArray = result.getTestCaseResults;

scip = run(yalmipTest);
bnb = run(yalmipTestbnb);
bmibnb = run(yalmipTestbmibnb);
baron=run(yalmipTestbaron);
%%
T=zeros(25,4);
for i = 1:length(bnb)
    T(i,1) = bnb(i).Duration;
end

for i = 1:length(scip)
    T(i,2) = scip(i).Duration;
end
for i = 1:length(bmibnb)
    T(i,3) = bmibnb(i).Duration;
end
for i = 1:length(baron)
    T(i,4) = baron(i).Duration;
end

per(T);
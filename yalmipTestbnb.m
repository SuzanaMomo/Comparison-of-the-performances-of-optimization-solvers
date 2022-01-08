%bnb
function tests = yalmipTestbnb
    tests = functiontests(localfunctions);
end

function test_31_hydro(testCase) 
  x1= sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);  x10= sdpvar(1,1);
 x11 = sdpvar(1,1);
 x12 = sdpvar(1,1);
 x13= sdpvar(1,1);
 x14= sdpvar(1,1);
 x15= sdpvar(1,1);
 x16= sdpvar(1,1);
 x17= sdpvar(1,1);
 x18= sdpvar(1,1);  
 x19 = sdpvar(1,1);
 x20= sdpvar(1,1);
 x21= sdpvar(1,1);
 x22= sdpvar(1,1);
 x23= sdpvar(1,1);
 x24= sdpvar(1,1);
 x25= sdpvar(1,1);
 x26= sdpvar(1,1);x27= sdpvar(1,1);x28= sdpvar(1,1);x29= sdpvar(1,1);x30= sdpvar(1,1);x31= sdpvar(1,1);
%  
% % 
% %  
% %  
% % % % Define constraints 
   Constraints = [  x1 + x7 - x13 >= 1.2e3,
  x2 + x8 - x14 >= 1.5e3,
  x3 + x9 - x15 >= 1.1e3,
  x4 + x10 - x16 >= 1.8e3,
  x5 + x11 - x17 >= 9.5e2,
  x6 + x12 - x18 >= 1.3e3,
  12*x19 - x25 + x26 == 2.4e4,
  12*x20 - x26 + x27 == 2.4e4,
  12*x21 - x27 + x28 == 2.4e4,
  12*x22 - x28 + x29 == 2.4e4,
  12*x23 - x29 + x30 == 2.4e4,
  12*x24 - x30 + x31 == 2.4e4,
  x13 + [ - 8e-5*x7^2 ] == 0,
  x14 + [ - 8e-5*x8^2 ] == 0,
  x15 + [ - 8e-5*x9^2 ] == 0,
  x16 + [ - 8e-5*x10^2 ] == 0,
  x17 + [ - 8e-5*x11^2 ] == 0,
  x18 + [ - 8e-5*x12^2 ] == 0,
  - 4.97*x7 + x19 == 3.3e2,
  - 4.97*x8 + x20 == 3.3e2,
  - 4.97*x9 + x21 == 3.3e2,
  - 4.97*x10 + x22 == 3.3e2,
  - 4.97*x11 + x23 == 3.3e2,
  - 4.97*x12 + x24 == 3.3e2, 1.5e2 <= x1 <= 1.5e3,
 1.5e2 <= x2 <= 1.5e3,
 1.5e2 <= x3 <= 1.5e3,
 1.5e2 <= x4 <= 1.5e3,
 1.5e2 <= x5 <= 1.5e3,
 1.5e2 <= x6 <= 1.5e3,
 x7 <= 1e3,
 x8 <= 1e3,
 x9 <= 1e3,
 x10 <= 1e3,
 x11 <= 1e3,
 x12 <= 1e3,
 x25 <= 1e5,
 6e4 <= x26 <= 1.2e5,
 6e4 <= x27 <= 1.2e5,
 6e4 <= x28 <= 1.2e5,
 6e4 <= x29 <= 1.2e5,
 6e4 <= x30 <= 1.2e5,
 6e4 <= x31 <= 1.2e5 ];
% % 
% % % % Define an objective
  Objective = 662.4*x1 + 662.4*x2 + 662.4*x3 + 662.4*x4 + 662.4*x5 + 662.4*x6 + .26496000000000003*x1^2 + .26496000000000003*x2^2 
  + .26496000000000003*x3^2 + .26496000000000003*x4^2 + .26496000000000003*x5^2 + .26496000000000003*x6^2 + 2.484e5;
     solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_30_ex14_1_6(testCase) 
% % % Define variables
  x1= sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);
 
% 
%  
%  
% % % Define constraints 
  Constraints = [ - .1238*x1 - 1.637e-3*x2 - .9338*x4 + x7 - x9 + [ 4.731e-3*x1*x3 - .3578*x2*x3 ] <= .3571,
  .1238*x1 + 1.637e-3*x2 + .9338*x4 - x7 - x9 + [ - 4.731e-3*x1*x3 + .3578*x2*x3 ] <= -.3571,
  .2638*x1 - 7.745e-2*x2 - .6734*x4 - x7 - x9 + [ .2238*x1*x3 + .7623*x2*x3 ] <= .6022,
 - .2638*x1 + 7.745e-2*x2 + .6734*x4 + x7 - x9 + [ - .2238*x1*x3 - .7623*x2*x3 ] <= -.6022,
  .3578*x1 + 4.731e-3*x2 - x9 + [ x6*x8 ] <= 0,
  - .3578*x1 - 4.731e-3*x2 - x9 + [ - x6*x8 ] <= 0,
 - .7623*x1 + .2238*x2 == -.3461,
  - x9 + [ x1^2 + x2^2 ] <= 1,
  - x9 + [ - x1^2 - x2^2 ] <= -1,
  - x9 + [ x3^2 + x4^2 ] <= 1,
  - x9 + [ - x3^2 - x4^2 ] <= -1,
  - x9 + [ x5^2 + x6^2 ] <= 1,
  - x9 + [ - x5^2 - x6^2 ] <= -1,
  - x9 + [ x7^2 + x8^2 ] <= 1,
  - x9 + [ - x7^2 - x8^2 ] <= -1,-1 <= x1 <= 1,
 -1 <= x2 <= 1,
 -1 <= x3 <= 1,
 -1 <= x4 <= 1,
 -1 <= x5 <= 1,
 -1 <= x6 <= 1,
 -1 <= x7 <= 1,
 -1 <= x8 <= 1 ];
% 
% % % Define an objective
 Objective = x9;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end



function test_29_ex1263a(testCase) 
% % % Define variables
  i1= sdpvar(1,1);
 i2 = sdpvar(1,1);
 i3 = sdpvar(1,1);
 i4 = sdpvar(1,1);
 i5 = sdpvar(1,1);
 i6 = sdpvar(1,1);
 i7 = sdpvar(1,1);
 i8 = sdpvar(1,1);
 i9 = sdpvar(1,1);
 i10 = sdpvar(1,1); i11= sdpvar(1,1);
 i12 = sdpvar(1,1);
 i13 = sdpvar(1,1);
 i14 = sdpvar(1,1);
 i15 = sdpvar(1,1);
 i16 = sdpvar(1,1);
 i17 = sdpvar(1,1);
 i18 = sdpvar(1,1);
 i19 = sdpvar(1,1);
 i20 = sdpvar(1,1);i21 = sdpvar(1,1);i22 = sdpvar(1,1);i23 = sdpvar(1,1);i24 = sdpvar(1,1); b17 = binvar(1,1);
 b18 = binvar(1,1);
 b19 = binvar(1,1);
 b20 = binvar(1,1);
% 
%  
%  
% % % Define constraints 
  Constraints = [ [ i1 * i21 + i2 * i22 + i3 * i23 + i4 * i24 ] >= 15,
  [ i5 * i21 + i6 * i22 + i7 * i23 + i8 * i24 ] >= 28,
  [ i9 * i21 + i10 * i22 + i11 * i23 + i12 * i24 ] >= 21,
  [ i13 * i21 + i14 * i22 + i15 * i23 + i16 * i24 ] >= 30,
  - 2.9e2*i1 - 315*i5 - 3.5e2*i9 - 455*i13 + 1.75e3*b17 <= 0,
  - 2.9e2*i2 - 315*i6 - 3.5e2*i10 - 455*i14 + 1.75e3*b18 <= 0,
  - 2.9e2*i3 - 315*i7 - 3.5e2*i11 - 455*i15 + 1.75e3*b19 <= 0,
  - 2.9e2*i4 - 315*i8 - 3.5e2*i12 - 455*i16 + 1.75e3*b20 <= 0,
  2.9e2*i1 + 315*i5 + 3.5e2*i9 + 455*i13 - 1.85e3*b17 <= 0,
  2.9e2*i2 + 315*i6 + 3.5e2*i10 + 455*i14 - 1.85e3*b18 <= 0,
  2.9e2*i3 + 315*i7 + 3.5e2*i11 + 455*i15 - 1.85e3*b19 <= 0,
  2.9e2*i4 + 315*i8 + 3.5e2*i12 + 455*i16 - 1.85e3*b20 <= 0,
  - i1 - i5 - i9 - i13 + b17 <= 0,
  - i2 - i6 - i10 - i14 + b18 <= 0,
  - i3 - i7 - i11 - i15 + b19 <= 0,
  - i4 - i8 - i12 - i16 + b20 <= 0,
  i1 + i5 + i9 + i13 - 5*b17 <= 0,
  i2 + i6 + i10 + i14 - 5*b18 <= 0,
  i3 + i7 + i11 + i15 - 5*b19 <= 0,
  i4 + i8 + i12 + i16 - 5*b20 <= 0,
  b17 - i21 <= 0,
  b18 - i22 <= 0,
  b19 - i23 <= 0,
  b20 - i24 <= 0,
  - 30*b17 + i21 <= 0,
  - 30*b18 + i22 <= 0,
  - 30*b19 + i23 <= 0,
  - 30*b20 + i24 <= 0,
  i21 + i22 + i23 + i24 >= 19,
  - b17 + b18 <= 0,
  - b18 + b19 <= 0,
  - b19 + b20 <= 0,
  - i21 + i22 <= 0,
  - i22 + i23 <= 0,
 - i23 + i24 <= 0, i1 <= 5,i2 <= 5,i3 <= 5,i4 <= 5,i5 <= 5,i6 <= 5,i7 <= 5,i8 <= 5,i9 <= 5,i10 <= 5
 i11 <= 5,i12 <= 5,i13 <= 5,i14 <= 5,i15 <= 5,i16 <= 5,i21 <= 30,i22 <= 30,i23 <= 30,i24 <= 30 ];
% 
% % % Define an objective
 Objective = .1*b17 + .2*b18 + .3*b19 + .4*b20 + i21 + i22 + i23 + i24;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end


function test_27_graphpart_2g_0044_1601(testCase) 
% % % % Define variables
  b1 = binvar(1,1);b2 = binvar(1,1);b3 = binvar(1,1);b4 = binvar(1,1);b5 = binvar(1,1);b6 = binvar(1,1);
  b7 = binvar(1,1);b8 = binvar(1,1);b9 = binvar(1,1);b10 = binvar(1,1);b11 = binvar(1,1);b12 = binvar(1,1);
  b13 = binvar(1,1);b14 = binvar(1,1);b15 = binvar(1,1);b16 = binvar(1,1);b17 = binvar(1,1);b18 = binvar(1,1);
  b19 = binvar(1,1);b20 = binvar(1,1);b21 = binvar(1,1);b22 = binvar(1,1);b23 = binvar(1,1);b24 = binvar(1,1);
  b25 = binvar(1,1);b26 = binvar(1,1);b27 = binvar(1,1);b28 = binvar(1,1);b29 = binvar(1,1);b30 = binvar(1,1);
  b31 = binvar(1,1);b32 = binvar(1,1);b33 = binvar(1,1);b34 = binvar(1,1);b35 = binvar(1,1);b36 = binvar(1,1);
  b37 = binvar(1,1);b38 = binvar(1,1);b39 = binvar(1,1);b40 = binvar(1,1);b41 = binvar(1,1);b42 = binvar(1,1);
  b43 = intvar(1,1);b44 = intvar(1,1);b45 = sdpvar(1,1);b46 = binvar(1,1);b47 = binvar(1,1);b48 = binvar(1,1);
 Constraints = [  b1 + b2 + b3 == 1,
  b4 + b5 + b6 == 1,
  b7 + b8 + b9 == 1,
  b10 + b11 + b12 == 1,
  b13 + b14 + b15 == 1,
  b16 + b17 + b18 == 1,
  b19 + b20 + b21 == 1,
  b22 + b23 + b24 == 1,
  b25 + b26 + b27 == 1,
  b28 + b29 + b30 == 1,
  b31 + b32 + b33 == 1,
  b34 + b35 + b36 == 1,
  b37 + b38 + b39 == 1,
  b40 + b41 + b42 == 1,
  b43 + b44 + b45 == 1,
  b46 + b47 + b48 == 1 ];

% % Define an objective
 Objective =   2.792e4*b1*b4 + 2.6436e5*b1*b10 
  - 9.091e4*b1*b13 + 42794*b1*b37 + 2.792e4*b2*b5 + 2.6436e5*b2*b11 - 9.091e4*b2*b14 + 42794*b2*b38 
  + 2.792e4*b3*b6 + 2.6436e5*b3*b12 - 9.091e4*b3*b15 + 42794*b3*b39 - 60822*b4*b7 - 203054*b4*b16 
  - 17792*b4*b40 - 60822*b5*b8 - 203054*b5*b17 - 17792*b5*b41 - 60822*b6*b9 - 203054*b6*b18 
  - 17792*b6*b42 - 244664*b7*b10 + 60116*b7*b19 + 66228*b7*b43 - 244664*b8*b11 + 60116*b8*b20 
  + 66228*b8*b44 - 244664*b9*b12 + 60116*b9*b21 + 66228*b9*b45 - 27352*b10*b22 + 249106*b10*b46 
  - 27352*b11*b23 + 249106*b11*b47 - 27352*b12*b24 + 249106*b12*b48 + 34306*b13*b16 + 147382*b13*b22 
  - 64044*b13*b25 + 34306*b14*b17 + 147382*b14*b23 - 64044*b14*b26 + 34306*b15*b18 + 147382*b15*b24 
  - 64044*b15*b27 - 212258*b16*b19 - 2.0279e5*b16*b28 - 212258*b17*b20 - 2.0279e5*b17*b29 - 212258*b18*b21 
  - 2.0279e5*b18*b30 - 21916*b19*b22 - 83502*b19*b31 - 21916*b20*b23 - 83502*b20*b32 - 21916*b21*b24 
  - 83502*b21*b33 - 60892*b22*b34 - 60892*b23*b35 - 60892*b24*b36 + 189038*b25*b28 + 89226*b25*b34 
  + 140282*b25*b37 + 189038*b26*b29 + 89226*b26*b35 + 140282*b26*b38 + 189038*b27*b30 + 89226*b27*b36 
  + 140282*b27*b39 + 147222*b28*b31 - 109584*b28*b40 + 147222*b29*b32 - 109584*b29*b41 + 147222*b30*b33 
  - 109584*b30*b42 + 115326*b31*b34 - 295192*b31*b43 + 115326*b32*b35 - 295192*b32*b44 + 115326*b33*b36 
  - 295192*b33*b45 + 141726*b34*b46 + 141726*b35*b47 + 141726*b36*b48 + 48948*b37*b40 - 3.57e5*b37*b46 
  + 48948*b38*b41 - 3.57e5*b38*b47 + 48948*b39*b42 - 3.57e5*b39*b48 + 237426*b40*b43 + 237426*b41*b44 
  + 237426*b42*b45 + 68558*b43*b46 + 68558*b44*b47 + 68558*b45*b48;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end


function test_26_himmel_11(testCase) % 
  x1 = sdpvar(1,1);
 x2 = sdpvar(1,1); x3 = sdpvar(1,1); x4 = sdpvar(1,1); x5 = sdpvar(1,1); x6 = sdpvar(1,1); x7 = sdpvar(1,1);
  x8 = sdpvar(1,1); x9 = sdpvar(1,1); 

 
 
% % Define constraints 
Constraints = [  5*x4 - x5 + 7*x7 - x9 >= 0,
  x1 + 2*x4 + [ - 6.262e-4*x5*x8 - 5.6858e-3*x6*x9 + 2.2053e-3*x7*x9 ] <= 85.334407,
  x2 + [ - 2.9955e-3*x5*x6 - 7.1317e-3*x6*x9 - 2.1813e-3*x7^2 ] == 80.51249,
  x3 + 4*x4 + [ - 1.2547e-3*x5*x7 - 1.9085e-3*x7*x8 - 4.7026e-3*x7*x9 ] == 9.300961, x1 <= 92,
 90 <= x2 <= 1.1e2,20 <= x3 <= 25.78 <= x5 <= 102,33 <= x6 <= 45,27 <= x7 <= 45,27 <= x8 <= 45,
 27 <= x9 <= 45];

% % Define an objective
Objective = 5e3*x4 + 37.293239*x5 + [ 1.67137828*x5*x9 + 10.7157094*x7^2 ]/2 -40792.141;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end

function test_24_gbd(testCase) % 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 b3 = binvar(1,1);
 b4 = binvar(1,1);
 b5 = binvar(1,1);
 
 
% % Define constraints 
Constraints = [ 3*x2 - b3 - b4 <= 0,
  - x2 + .1*b4 + .25*b5 <= 0,
  b3 + b4 + b5 >= 2,
  b3 + b4 + 2*b5 >= 2,.2 <= x2 <= 1];

% % Define an objective
Objective = b3 + b4 + b5 + [ 10*x2^2 ]/2;;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end
function test_23_fuel(testCase) % 
b1 = binvar(1,1);
 b2 = binvar(1,1);
 b3 = binvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);x7 = sdpvar(1,1);x8 = sdpvar(1,1);x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);x12 = sdpvar(1,1);
 x13 = sdpvar(1,1);x14 = sdpvar(1,1);x15 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [ - 100*b1 + x4 >= 0,
  - 100*b2 + x5 >= 0,
  - 100*b3 + x6 >= 0,
  - 500*b1 + x4 <= 0,
  - 500*b2 + x5 <= 0,
  - 500*b3 + x6 <= 0,
  x10 + x13 == 3.5e3,
  x11 - x13 + x14 == 500,
  x12 - x14 + x15 == 500,
  x4 + x7 >= 400,
  x5 + x8 >= 900,
  x6 + x9 >= 700,
  - 50*b1 - x4 + x10 + [ - 5e-3*x4^2 ] == 0,
  - 50*b2 - x5 + x11 + [ - 5e-3*x5^2 ] == 0,
  - 50*b3 - x6 + x12 + [ - 5e-3*x6^2 ] == 0, 50 <= x7 <= 700,50 <= x8 <= 700,50 <= x9 <= 700,x13 <= 4e3,
 x14 <= 4e3,2e3 <= x15 <= 4e3];

% % Define an objective
Objective = 6*x7 + 6*x8 + 6*x9 + [ 5e-3*x7^2 + 5e-3*x8^2 + 5e-3*x9^2 ]/2 + 900;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end
function test_22_ex1223a(testCase)
    x1 = sdpvar(1,1);
    x2 = sdpvar(1,1);
    x3 = sdpvar(1,1);
    b4 = binvar(1,1);
    b5 = binvar(1,1);
    b6 = binvar(1,1);
    b7 = binvar(1,1);

    % % Define constraints 
    Constraints = [  x1 + x2 + x3 + b4 + b5 + b6 <= 5,
        b6 + [ x1^2 + x2^2 + x3^2 ] <= 5.5,
        x1 + b4 <= 1.2,
        x2 + b5 <= 1.8,
        x3 + b6 <= 2.5,
        x1 + b7 <= 1.2,
        b5 + [ x2^2 ] <= 1.64,
        b6 + [ x3^2 ] <= 4.25,
        b5 + [ x3^2 ] <= 4.64, x1 <= 10,
        x2 <= 10,x3 <= 10];

    % % Define an objective
    Objective = - 2*x1 - 4*x2 - 6*x3 - b4 - 3*b5 - b6 - .693147180559945*b7 + [ 2*x1^2 + 2*x2^2 + 2*x3^2 ]/2 + 20;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end
function test_21_ex9_2_2(testCase) 
 x2 = intvar(1,1);
 x3 = intvar(1,1);
 x4 = intvar(1,1);
 x5 = intvar(1,1);
 x6 = intvar(1,1);
 x7 = intvar(1,1);
 x8 = intvar(1,1);
 x9 = intvar(1,1);x10 = intvar(1,1);x11 = intvar(1,1);
 
 
% % Define constraints 
Constraints = [ x2 <= 15,
  - x2 + x3 <= 0,
  - x2 <= 0,
  x2 + x3 + x4 == 20,
  - x3 + x5 == 0,
  x3 + x6 == 20,
  [ x4*x8 ] == 0,
  [ x5 * x9 ] == 0,
  [ x6*x10 ] == 0,
  [ x7*x11 ] == 0,
  2*x2 + 4*x3 + x8 - x9 + x10 == 60,x4 <= 20,
 x5 <= 20,x6 <= 20,x7 <= 20,x8 <= 20,x9 <= 20,x10 <= 20,x11 <= 20 ];

% % Define an objective
    Objective = - 20*x3 + [ 2*x2^2 + 2*x3^2 ]/2 + 100 ;
     solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_20_ex9_1_8(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);x12 = sdpvar(1,1);x13 = sdpvar(1,1);x14 = sdpvar(1,1);
 x15 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [ x2 + x3 <= 2,
  - 2*x2 + x4 - x5 + x6 == -2.5,
  x2 - 3*x3 + x5 + x7 == 2,
  - x4 + x8 == 0,
  - x5 + x9 == 0,
  [ x6*x11 ] == 0,
  [ x7*x12 ] == 0,
  [ x8*x13 ] == 0,
  [ x9*x14 ] == 0,
  [ x10*x15 ] == 0,
  x11 - x13 == 4,
  x11 + x12 - x14 == -1 ];

% % Define an objective
Objective = - 2*x2 + x3 + .5*x4 ;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_19_ex9_1_4(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [  - x2 + x3 + x4 == 3,
  x2 + 2*x3 + x5 == 12,
  4*x2 - x3 + x6 == 12,
  - x3 + x7 == 0,
 [ x4*x8 ] == 0,
 [ x5*x9 ] == 0,
  [ x6*x10 ] == 0,
  [ x7*x11 ] == 0,
  x8 + 2*x9 - x10 - x11 == -1, x4 <= 200,
 x5 <= 200,
 x6 <= 200,
 x7 <= 200,
 x8 <= 200,
 x9 <= 200,
 x10 <= 200,
 x11 <= 200 ];

% % Define an objective
Objective = x2 - 4*x3 ;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_18_ex9_1_2(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [  - x2 + x3 + x4 == 3,
  x2 + 2*x3 + x5 == 12,
  4*x2 - x3 + x6 == 12,
  - x3 + x7 == 0,
 [ x4*x8 ] == 0,
 [ x5*x9 ] == 0,
  [ x6*x10 ] == 0,
  [ x7*x11 ] == 0,
  x8 + 2*x9 - x10 - x11 == -1 ];

% % Define an objective
Objective = - x2 - 3*x3 ;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_17_ex9_1_1(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);x12 = sdpvar(1,1);x13 = sdpvar(1,1);x14 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [  x1 + 4*x2 - 2*x4 + x5 == 16,
  3*x1 - 2*x2 + 8*x4 + x6 == 48,
  x1 - 3*x2 - 2*x4 + x7 == -12,
  - x1 + x8 == 0,
  x1 + x9 == 4,
  [ x5*x10 ] == 0,
  [ x6*x11 ] == 0,
  [ x7*x12 ] == 0,
  [ x8 * x13 ] == 0,
  [ x9*x14 ] == 0,
  x10 + 3*x11 + x12 - x13 + x14 == 1,
  2*x11 - 3*x12 == 0 ];

% % Define an objective
Objective = - 3*x1 + 2*x2 - x4 ;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_16_ex8_4_1(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);x12 = sdpvar(1,1);x13 = sdpvar(1,1);x14 = sdpvar(1,1);x15 = sdpvar(1,1);
 x16 = sdpvar(1,1);x17 = sdpvar(1,1);x18 = sdpvar(1,1);x19 = sdpvar(1,1);x20 = sdpvar(1,1);x21 = sdpvar(1,1);x22 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [ - x2 + x21 + [ x1 * x22 ] == 0,
  - x4 + x21 + [ x3 * x22 ] == 0,
  - x6 + x21 + [ x5 * x22 ] == 0,
  - x8 + x21 + [ x7 * x22 ] == 0,
  - x10 + x21 + [ x9 * x22 ] == 0,
  - x12 + x21 + [ x11 * x22 ] == 0,
  - x14 + x21 + [ x13 * x22 ] == 0,
  - x16 + x21 + [ x15 * x22 ] == 0,
  - x18 + x21 + [ x17 * x22 ] == 0,
  - x20 + x21 + [ x19 * x22 ] == 0, -.5 <= x1 <= .5,
 5.4 <= x2 <= 6.4, .4 <= x3 <= 1.4, 4.9 <= x4 <= 5.9,1.3 <= x5 <= 2.3,3.9 <= x6 <= 4.9,2.1 <= x7 <= 3.1,
 4.1 <= x8 <= 5.1,2.8 <= x9 <= 3.8,3 <= x10 <= 4,3.9 <= x11 <= 4.9,3.2 <= x12 <= 4.2,4.7 <= x13 <= 5.7,
 2.3 <= x14 <= 3.3,5.6 <= x15 <= 6.6,2.3 <= x16 <= 3.3,6 <= x17 <= 7,1.9 <= x18 <= 2.9,6.9 <= x19 <= 7.9,1 <= x20 <= 2,
 x21 <= 10,-2 <= x22 <= 1 ];

% % Define an objective
Objective = - 11.8*x2 - 1.8*x3 - 10.8*x4 - 3.6*x5 - 8.8*x6 - 5.2*x7 - 9.2*x8 - 6.6*x9 - 7*x10 - 8.8*x11 
  - 7.4*x12 - 10.4*x13 - 5.6*x14 - 12.2*x15 - 5.6*x16 - 13*x17 - 4.8*x18 - 14.8*x19 - 3*x20 
  + [ 2*x1^2 + 2*x2^2 + 2*x3^2 + 2*x4^2 + 2*x5^2 + 2*x6^2 + 2*x7^2 + 2*x8^2 + 2*x9^2 + 2*x10^2 + 2*x11^2 
  + 2*x12^2 + 2*x13^2 + 2*x14^2 + 2*x15^2 + 2*x16^2 + 2*x17^2 + 2*x18^2 + 2*x19^2 + 2*x20^2 ]/2 + 356.43999999999994;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end
function test_15_ex7_3_3(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [   - 4*x1 - x2 + x3 - 78*x4 + [ 9.625*x1*x4 + 16*x2*x4 + 16*x4^2 ] == -12,
 - 19*x1 - 8*x2 - x3 - 24*x4 + [ 16*x1*x4 ] == -44,
  x1 - .25*x5 <= 2.25,
  - x1 - .25*x5 <= -2.25,
  - x2 - .5*x5 <= -1.5,
  x2 - .5*x5 <= 1.5,
  - x3 - 1.5*x5 <= -1.5,
  x3 - 1.5*x5 <= 1.5,x4<=10 ];

% % Define an objective
Objective = x5;
       solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_14_ex5_4_2(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);

 
% % Define constraints 
Constraints = [ x4 + x6 <= 400,
  - x4 + x5 + x7 <= 300,
  - x5 + x8 <= 100,
  x1 + 833.333333333333*x4 + [ - x1*x6 ] <= 83333.3333333333,
  - 1.25e3*x4 + 1.25e3*x5 + [ x2*x4 - x2*x7 ] <= 0,
  - 2.5e3*x5 + [ x3*x5 - x3*x8 ] <= -1.25e6,100 <= x1 <= 1e4,1e3 <= x2 <= 1e4,1e3 <= x3 <= 1e4,10 <= x4 <= 1e3,
 10 <= x5 <= 1e3,10 <= x6 <= 1e3,10 <= x7 <= 1e3,10 <= x8 <= 1e3 ];

% % Define an objective
Objective = x1 + x2 + x3;
      solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end
%%%% scip very very slow hangs%%
function test_13_ex5_3_2(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);x10 = sdpvar(1,1);x11 = sdpvar(1,1);x12 = sdpvar(1,1);x13 = sdpvar(1,1);x14 = sdpvar(1,1);x15 = sdpvar(1,1);
 x16 = sdpvar(1,1);x17 = sdpvar(1,1);x18 = sdpvar(1,1);x19 = sdpvar(1,1);x20 = sdpvar(1,1);x21 = sdpvar(1,1);x22 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [  x1 + x2 + x3 + x4 == 300,
  x5 - x6 - x7 == 0,
  x8 - x9 - x10 - x11 == 0,
  x12 - x13 - x14 - x15 == 0,
  x16 - x17 - x18 == 0,
  .333*x1 - x5 + [ x13*x21 ] == 0,
  .333*x1 + [ - x8*x20 + x13*x22 ] == 0,
  .333*x1 + [ - x8*x19 ] == 0,
  - .333*x2 + [ - x12*x21 ] == 0,
  .333*x2 + [ x9*x20 - x12*x22 ] == 0,
  .333*x2 - x16 + [ x9*x19 ] == 0,
  .333*x3 + x6 + [ x14*x21 ] == 30,
  .333*x3 + [ x10*x20 + x14*x22 ] == 50,
  .333*x3 + x17 + [ x10*x19 ] == 30,
  x19 + x20 == 1,
  x21 + x22 == 1,x1 <= 300,x2 <= 300,x3 <= 300,x4 <= 300,x5 <= 300,x6 <= 300,x7 <= 300,x8 <= 300,x9 <= 300,
  x10 <= 300,x11 <= 300,x12 <= 300,x13 <= 300,x14 <= 300,x15 <= 300,x16 <= 300,x17 <= 300,x18 <= 300,x19 <= 1,
 x20 <= 1,x21 <= 1,x22 <= 1 ];

% % Define an objective
Objective = 4.32e-3*x1 + 1.517e-2*x2 + 1.517e-2*x9 + 4.32e-3*x13 + .9979;
      solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

%%%% scip very very slow hangs%%
function test_12_ex5_2_2_case1(testCase) 
 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
 x7 = sdpvar(1,1);
 x8 = sdpvar(1,1);
 x9 = sdpvar(1,1);
 
% % Define constraints 
Constraints = [ - x3 - x4 + x8 + x9 == 0,
  x1 - x5 - x8 == 0,
  x2 - x6 - x9 == 0,
  - 2.5*x1 + 2*x5 + [ x7*x8 ] <= 0,
  - 1.5*x2 + 2*x6 + [ x7*x9 ] <= 0,
  - 3*x3 - x4 + [ x7*x8 + x7*x9 ] == 0, x1 <= 100,x2 <= 200,x3 <= 500,x4 <= 500,x5 <= 500,x6 <= 500,
 x7 <= 500,x8 <= 500,x9 <= 500 ];

% % Define an objective
Objective = - 9*x1 - 15*x2 + 6*x3 + 16*x4 + 10*x5 + 10*x6;
      solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_11_dispatch(testCase) 

 x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 
 
 
% % Define constraints 
Constraints = [ 7.66e-4*x1 + 3.42e-5*x2 - 1.89e-4*x3 + x4 + [ - 6.76e-4*x1^2 - 1.906e-4*x1 * x2 + 1.014e-4*x1*x3 
  - 5.21e-4*x2^2 - 1.8020000000000002e-4*x2*x3 - 2.94e-4*x3^2 ] == 4.0357e-2, x1 + x2 + x3 - x4 >= 2.1e2,50 <= x1 <= 200,
 37.5 <= x2 <= 1.5e2,45 <= x3 <= 1.8e2 ];

% % Define an objective
Objective = 11.669*x1 + 10.333*x2 + 10.833*x3 + [ 1.066e-2*x1^2 + 1.778e-2*x2^2 + 1.482e-2*x3^2 ]/2 + 653.1;
      solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_10_cvxnonsep_normcon20r(testCase) 
 i1= sdpvar(1,1);
 i2 = sdpvar(1,1);
 i3 = sdpvar(1,1);
 i4 = sdpvar(1,1);
 i5 = sdpvar(1,1);
 i6 = sdpvar(1,1);
 i7 = sdpvar(1,1);
 i8 = sdpvar(1,1);
 i9 = sdpvar(1,1);
 i10 = sdpvar(1,1);
 x11= sdpvar(1,1);
 x12= sdpvar(1,1);
 x13= sdpvar(1,1);
 x14= sdpvar(1,1);
 x15= sdpvar(1,1);
 x16= sdpvar(1,1);
 x17= sdpvar(1,1);
 x18= sdpvar(1,1);
 x19= sdpvar(1,1);
 x20= sdpvar(1,1);
 x21= sdpvar(1,1);
 x22= sdpvar(1,1);
 x23= sdpvar(1,1);
 x24= sdpvar(1,1);
 x25 = sdpvar(1,1);
 x26 = sdpvar(1,1);
 x27 = sdpvar(1,1);
 x28 = sdpvar(1,1);
 x29 = sdpvar(1,1);
 x30 = sdpvar(1,1);
 x31 = sdpvar(1,1);
 x32 = sdpvar(1,1);
 x33 = sdpvar(1,1);x34 = sdpvar(1,1);x35 = sdpvar(1,1);x36 = sdpvar(1,1);x37 = sdpvar(1,1);x38 = sdpvar(1,1);
 x39 = sdpvar(1,1);x40 = sdpvar(1,1);x41 = sdpvar(1,1);

% % Define constraints 
Constraints = [ x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 
  + x39 + x40 + x41 <= 99.9999,
  - x22 + [ i1^2 ] <= 0,
  - x23 + [ i2^2 ] <= 0,
  - x24 + [ i3^2 ] <= 0,
  - x25 + [ i4^2 ] <= 0,
  - x26 + [ i5^2 ] <= 0,
  - x27 + [ i6^2 ] <= 0,
  - x28 + [ i7^2 ] <= 0,
  - x29 + [ i8^2 ] <= 0,
  - x30 + [ i9^2 ] <= 0,
  - x31 + [ i10^2 ] <= 0,
  - x32 + [ x11^2 ] <= 0,
  - x33 + [ x12^2 ] <= 0,
  - x34 + [ x13^2 ] <= 0,
  - x35 + [ x14^2 ] <= 0,
  - x36 + [ x15^2 ] <= 0,
  - x37 + [ x16^2 ] <= 0,
  - x38 + [ x17^2 ] <= 0,
  - x39 + [ x18^2 ] <= 0,
  - x40 + [ x19^2 ] <= 0,
  - x41 + [ x20^2 ] <= 0,i1 <= 5,i2 <= 5, i3 <= 5,i4 <= 5,i5 <= 5,i6 <= 5,i7 <= 5,i8 <= 5,i9 <= 5,i10 <= 5,
 x11 <= 5,x12 <= 5, x13 <= 5,x14 <= 5,x15 <= 5,x16 <= 5,x17 <= 5,x18 <= 5,x19 <= 5,x20 <= 5];

% % Define an objective
Objective = - .175*i1 - .39*i2 - .83*i3 - .805*i4 - 6e-2*i5 - .4*i6 - .52*i7 - .415*i8 - .655*i9 - .63*i10 
  - .29*x11 - .43*x12 - 1.5e-2*x13 - .985*x14 - .165*x15 - .105*x16 - .37*x17 - .2*x18 - .49*x19 - .34*x20;
     solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_9_clay0203(testCase) % 
x1 = sdpvar(1,1);
 x2 = sdpvar(1,1);
 x3 = sdpvar(1,1);
 x4 = sdpvar(1,1);
 x5 = sdpvar(1,1);
 x6 = sdpvar(1,1);
  b7 = binvar(1,1);
 b8 = binvar(1,1);
 b9 = binvar(1,1);
 b10 = binvar(1,1);
 b11= binvar(1,1);
 b12= binvar(1,1);
 b13= binvar(1,1);
 b14= binvar(1,1);
 b15= binvar(1,1);
 b16= binvar(1,1);
 b17= binvar(1,1);
 b18= binvar(1,1);
 b19= binvar(1,1);
 b20= binvar(1,1);
 b21= binvar(1,1);
 b22= binvar(1,1);
 b23= binvar(1,1);
 b24= binvar(1,1);
 x25 = sdpvar(1,1);
 x26 = sdpvar(1,1);
 x27 = sdpvar(1,1);
 x28 = sdpvar(1,1);
 x29 = sdpvar(1,1);
 x30 = sdpvar(1,1);

% % Define constraints 
Constraints = [ - x1 + x2 + x25 >= 0,
 - x1 + x3 + x26 >= 0,
 - x2 + x3 + x27 >= 0,
   x1 - x2 + x25 >= 0,
   x1 - x3 + x26 >= 0,
  x2 - x3 + x27 >= 0,
 - x4 + x5 + x28 >= 0,
  - x4 + x6 + x29 >= 0,
  - x5 + x6 + x30 >= 0,
  x4 - x5 + x28 >= 0,
  x4 - x6 + x29 >= 0,
  x5 - x6 + x30 >= 0,
  x1 - x2 + 46*b7 <= 40,
  x1 - x3 + 46*b8 <= 42,
  x2 - x3 + 46*b9 <= 41,
  - x1 + x2 + 46*b10 <= 40,
  - x1 + x3 + 46*b11 <= 42,
  - x2 + x3 + 46*b12 <= 41,
  x4 - x5 + 81*b13 <= 75.5,
  x4 - x6 + 81*b14 <= 76.5,
  x5 - x6 + 81*b15 <= 77,
  - x4 + x5 + 81*b16 <= 75.5,
  - x4 + x6 + 81*b17 <= 76.5,
  - x5 + x6 + 81*b18 <= 77,
  b7 + b10 + b13 + b16 == 1,
  b8 + b11 + b14 + b17 == 1,
  b9 + b12 + b15 + b18 == 1,
 - 35*x1 - 14*x4 + 6814*b19 + [ x1^2 + x4^2 ] <= 6494.75,
 - 37*x2 - 15*x5 + 6678*b20 + [ x2^2 + x5^2 ] <= 6315.5,
  - 33*x3 - 17*x6 + 6958*b21 + [ x3^2 + x6^2 ] <= 6649.5,
  - 105*x1 - 154*x4 + 6556*b22 + [ x1^2 + x4^2 ] <= -2104.25,
  - 107*x2 - 155*x5 + 6697*b23 + [ x2^2 + x5^2 ] <= -2146.5,
  - 103*x3 - 157*x6 + 6985*b24 + [ x3^2 + x6^2 ] <= -1804.5,
  - 35*x1 - 26*x4 + 5.95e3*b19 + [ x1^2 + x4^2 ] <= 5510.75,
  - 37*x2 - 25*x5 + 5953*b20 + [ x2^2 + x5^2 ] <= 5490.5,
  - 33*x3 - 23*x6 + 6517*b21 + [ x3^2 + x6^2 ] <= 6148.5,
  - 105*x1 - 166*x4 + 7432*b22 + [ x1^2 + x4^2 ] <= -2188.25,
  - 107*x2 - 165*x5 + 7432*b23 + [ x2^2 + x5^2 ] <= -2211.5,
  - 103*x3 - 163*x6 + 7432*b24 + [ x3^2 + x6^2 ] <= -1837.5,
  - 25*x1 - 14*x4 + 7189*b19 + [ x1^2 + x4^2 ] <= 7019.75,
  - 23*x2 - 15*x5 + 7189*b20 + [ x2^2 + x5^2 ] <= 7036.5,
  - 27*x3 - 17*x6 + 7189*b21 + [ x3^2 + x6^2 ] <= 6970.5,
  - 95*x1 - 154*x4 + 6171*b22 + [ x1^2 + x4^2 ] <= -1989.25,
  - 93*x2 - 155*x5 + 6172*b23 + [ x2^2 + x5^2 ] <= -1971.5,
  - 97*x3 - 157*x6 + 6748*b24 + [ x3^2 + x6^2 ] <= -1741.5,
  - 25*x1 - 26*x4 + 6325*b19 + [ x1^2 + x4^2 ] <= 6035.75,
  - 23*x2 - 25*x5 + 6464*b20 + [ x2^2 + x5^2 ] <= 6211.5,
  - 27*x3 - 23*x6 + 6748*b21 + [ x3^2 + x6^2 ] <= 6469.5,
  - 95*x1 - 166*x4 + 7047*b22 + [ x1^2 + x4^2 ] <= -2073.25,
  - 93*x2 - 165*x5 + 6907*b23 + [ x2^2 + x5^2 ] <= -2036.5,
  - 97*x3 - 163*x6 + 7195*b24 + [ x3^2 + x6^2 ] <= -1774.5,
  b19 + b22 == 1,
  b20 + b23 == 1,
  b21 + b24 == 1,
  11.5 <= x1 <= 52.5,
 12.5 <= x2 <= 51.5,
 10.5 <= x3 <= 53.5,
 7 <= x4 <= 82,
 6.5 <= x5 <= 82.5,
 5.5 <= x6 <= 83.5];

% % Define an objective
Objective = 300*x25 + 2.4e2*x26 
  + 100*x27 + 300*x28 + 2.4e2*x29 + 100*x30;
      solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
end

function test_7_ball_mk4_10(testCase) % 
 i2 = sdpvar(1,1);
 i3 = sdpvar(1,1);
 i4 = sdpvar(1,1);
 i5 = sdpvar(1,1);
 i6 = sdpvar(1,1);
 i7 = sdpvar(1,1);
 i8 = sdpvar(1,1);
 i9 = sdpvar(1,1);
 i10 = sdpvar(1,1);
 i11= sdpvar(1,1);
 i12= sdpvar(1,1);
 i13= sdpvar(1,1);
 i14= sdpvar(1,1);
 i15= sdpvar(1,1);
 i16= sdpvar(1,1);
 i17= sdpvar(1,1);
 i18= sdpvar(1,1);
 i19= sdpvar(1,1);
 i20= sdpvar(1,1);
 i21= sdpvar(1,1);
% % Define constraints 
Constraints = [- 98*i2 - 98*i3 - 98*i4 - 98*i5 - 98*i6 - 98*i7 - 98*i8 - 98*i9 - 98*i10 - 98*i11 - 98*i12 - 98*i13 
  - 98*i14 - 98*i15 - 98*i16 - 98*i17 - 98*i18 - 98*i19 - 98*i20 - 98*i21 + [ 100*i2^2 - 4*i2*i21 + 100*i3^2 
  - 4*i3*i4 + 100*i4^2 + 100*i5^2 - 4*i5*i6 + 100*i6^2 + 100*i7^2 - 4*i7*i8 + 100*i8^2 + 100*i9^2 
  - 4*i9*i10 + 100*i10^2 + 100*i11^2 - 4*i11*i12 + 100*i12^2 + 100*i13^2 - 4*i13*i14 + 100*i14^2 
  + 100*i15^2 - 4*i15*i16 + 100*i16^2 + 100*i17^2 - 4*i17*i18 + 100*i18^2 + 100*i19^2 - 4*i19*i20 
  + 100*i20^2 + 100*i21^2 ] <= -1 , -100 <= i2, -100 <= i3, -100 <= i4, -100 <= i5,-100 <= i6,-100 <= i7,-100 <= i8,
  -100 <= i9,-100 <= i10,-100 <= i11,-100 <= i12,-100 <= i13,-100 <= i14,-100 <= i15,-100 <= i16, -100 <= i17
 -100 <= i18,-100 <= i19,-100 <= i20,-100 <= i21];

% % Define an objective
Objective = 19*i2 + 18*i3 + 17*i4 + 16*i5 + 15*i6 + 14*i7 + 13*i8 + 12*i9 + 11*i10 + 10*i11 + 9*i12 + 8*i13 
  + 7*i14 + 6*i15 + 5*i16 + 4*i17 + 3*i18 + 2*i19 + i20 + 20*i21;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end
function test_3_ball_mk2_10(testCase) % 
 i2 = sdpvar(1,1);
 i3 = sdpvar(1,1);
 i4 = sdpvar(1,1);
 i5 = sdpvar(1,1);
 i6 = sdpvar(1,1);
 i7 = sdpvar(1,1);
 i8 = sdpvar(1,1);
 i9 = sdpvar(1,1);
 i10 = sdpvar(1,1);
 i11= sdpvar(1,1);
 
% % Define constraints 
Constraints = [- .987420882906575*i2 - .987420882906575*i3 - .987420882906575*i4 - .987420882906575*i5 - .987420882906575*i6 
  - .987420882906575*i7 - .987420882906575*i8 - .987420882906575*i9 - .987420882906575*i10 - .987420882906575*i11
   + [ i2^2 + i3^2 + i4^2 + i5^2 + i6^2 + i7^2 + i8^2 + i9^2 + i10^2 + i11^2 ] <= 0 , -1 <= i2 <= 1,-1 <= i3 <= 1,-1 <= i4 <= 1,-1 <= i5 <= 1,-1 <= i6 <= 1,-1 <= i7 <= 1,-1 <= i8 <= 1,-1 <= i9 <= 1,-1 <= i10 <= 1,-1 <= i11 <= 1];

% % Define an objective
Objective = - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end

function test_2_autocorr_bern20_03(testCase) % 
  b1 = binvar(1,1);b2 = binvar(1,1);b3 = binvar(1,1);b4 = binvar(1,1);b5 = binvar(1,1);b6 = binvar(1,1);
  b7 = binvar(1,1);b8 = binvar(1,1);b9 = binvar(1,1);b10 = binvar(1,1);b11 = binvar(1,1);b12 = binvar(1,1);
  b13 = binvar(1,1);b14 = binvar(1,1);b15 = binvar(1,1);b16 = binvar(1,1);b17 = binvar(1,1);b18 = binvar(1,1);
  b19 = binvar(1,1);b20 = binvar(1,1);

 objvar= sdpvar(1,1,'full');
% % Define constraints 
Constraints = [-4*b1 -4*b2 - 8*b3 - 8*b4 - 8*b5 - 8*b6 - 8*b7 - 8*b8 - 8*b9 - 8*b10 - 8*b11 - 8*b12 - 8*b13 - 8*b14 
  - 8*b15 - 8*b16 - 8*b17 - 8*b18 - 4*b19 - 4*b20 - objvar + [ 8*b1*b3 + 8*b2*b4 + 8*b3*b5 + 8*b4*b6 
  + 8*b5*b7 + 8*b6*b8 + 8*b7*b9 + 8*b8*b10 + 8*b9*b11 + 8*b10*b12 + 8*b11*b13 + 8*b12*b14 
  + 8*b13*b15 + 8*b14*b16 + 8*b15*b17 + 8*b16*b18 + 8*b17*b19 + 8*b18*b20 ] <= 0 ];

% % Define an objective
Objective = objvar;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end

function test_1_autocorr_bern25_03(testCase) % 
  b1 = binvar(1,1);b2 = binvar(1,1);b3 = binvar(1,1);b4 = binvar(1,1);b5 = binvar(1,1);b6 = binvar(1,1);
  b7 = binvar(1,1);b8 = binvar(1,1);b9 = binvar(1,1);b10 = binvar(1,1);b11 = binvar(1,1);b12 = binvar(1,1);
  b13 = binvar(1,1);b14 = binvar(1,1);b15 = binvar(1,1);b16 = binvar(1,1);b17 = binvar(1,1);b18 = binvar(1,1);
  b19 = binvar(1,1);b20 = binvar(1,1);b21 = binvar(1,1);b22 = binvar(1,1);b23 = binvar(1,1);b24 = binvar(1,1);
  b25 = binvar(1,1);



 objvar= sdpvar(1,1,'full');
% % Define constraints 
Constraints = [-4*b1 - 4*b2 - 8*b3 - 8*b4 - 8*b5 - 8 *b6 - 8 *b7 - 8* b8 - 8* b9 - 8 *b10 - 8* b11 - 8*b12 - 8*b13 - 8*b14 
  - 8*b15 - 8*b16 - 8*b17 - 8*b18 - 8*b19 - 8*b20 - 8*b21 - 8*b22 - 8*b23 - 4*b24 - 4*b25 - objvar+[ 8*b1*b3 + 8*b2*b4 + 8*b3*b5 + 8*b4*b6 + 8*b5*b7 + 8*b6*b8 + 8*b7*b9 + 8*b8*b10 + 8*b9*b11 
  + 8* b10 * b12 + 8* b11 * b13 + 8* b12 * b14 + 8* b13 * b15 + 8* b14 * b16 + 8 *b15 * b17 + 8* b16 * b18 + 8* b17 * b19 
  + 8*b18*b20 + 8*b19*b21 + 8*b20*b22 + 8*b21*b23 + 8*b22*b24 + 8*b23*b25 ] <= 0];

% % Define an objective
Objective = objvar;
   solver = 'bnb';
    solverTime='bnb.maxtime';
    time=300;
    [optsolv,optSol] = yalmipSolve(Constraints,Objective,solver,solverTime,time)
    
   
    
end
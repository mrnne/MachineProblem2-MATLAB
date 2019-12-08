% MACHINE PROBLEM 2
% MATLAB Program for solving the center, radius and vector DEF from 3 input points (x,y)
% Center-radius form/ General form (x-h)^2 + (y-k)^2 = r^2
% x^2 + y^2 + Dx + Ey + F= 0


% Obtaining 3 input points (x,y)
x1= input('Enter point1 X: ');
y1= input('Enter point1 Y: ');
x2= input('Enter point2 X: ');
y2= input('Enter point2 Y: ');
x3= input('Enter point3 X: ');
y3= input('Enter point3 Y: ');


% Creating an array with columns of x^2  + y^2, x1, y1, 1 
M= [(x1^2  + y1^2), x1, y1, 1; (x2^2  + y2^2), x2, y2, 1; (x3^2  + y3^2), x3, y3, 1];

% M1 is a minor of M without column 1
M1= M(:,[2,3,4]);
% M12 is a minor of M without column 2
M12= M(:,[1,3,4]);
% M13 is a minor of M without column 3
M13= M(:,[1,2,4]);

% Obtaining the center (x value) 
x= round((det(M12)/ det(M1))*(1/2));

% Obtaining the center (x value) 
y= round((det(M13)/ det(M1))*(-1/2));

% We will be using the 1st Point (x1,y1) to substitute

% Radius is from  r^2= (x-h)^2 + (y-k)^2 
r= sqrt(((x1-x)^2) + ((y1-y)^2));

% Constant F is derived from x^2 + y^2 + Dx + Ey + F= 0
F = ( - x1^2  - y1^2 - (2 * -x  *x1) - (2 * -y *y1));

% Combining the constants into a horizontal vector
DEF= [2*(-x), 2*(-y), F];

% Displaying the Center (x,y)
center = ['Center: ',num2str(x),', ',num2str(y)];
disp(center);

% Displaying the Radius (r)
radius = ['Radius: ',num2str(r)];
disp(radius);

% Displaying the Vector (DEF)
vector = ['vector[D,E,F]: ', num2str(DEF)];
disp(vector);
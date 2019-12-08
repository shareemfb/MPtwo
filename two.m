p1x = input('Input the x-coordinate of the first point lying on a circle: ');
p1y = input('Input the y-coordinate of the first point lying on a circle: ');
p2x = input('Input the x-coordinate of the second point lying on a circle: ');
p2y = input('Input the y-coordinate of the second point lying on a circle: ');
p3x = input('Input the x-coordinate of the third point lying on a circle: ');
p3y = input('Input the y-coordinate of the third point lying on a circle: ');

%original equation: x^2 + y^2 + D*x + E*y + F = 0
b1 = -(p1x)^2 - (p1y)^2;
b2 = -(p2x)^2 - (p2y)^2;
b3 = -(p3x)^2 - (p3y)^2;

%solving for vector [D,E,F}
B = [b1; b2; b3];
A = [p1x p1y 1; p2x p2y 1; p3x p3y 1];
forD = [b1 p1y 1; b2 p2y 1; b3 p3y 1];
forE = [p1x b1 1; p2x b2 1; p3x b3 1];
forF = [p1x p1y b1; p2x p2y b2; p3x p3y b3];
D = det(forD)/det(A);
E = det(forE)/det(A);
F = det(forF)/det(A);
disp('vector [D,E,F]:')
disp([D, E, F])

%the general form: x^2 + y^2 + Dx + Ey + F = 0
%x^2 + D*x + y^2 + E*y = -F
square1 = ((1/2)*D)^2;
square2 = ((1/2)*E)^2;
%completing the square:
%(x^2 + Dx + square1) + (y^2 + Ey + square2) = -F + square1 + square 2
rightS = -F + square1 + square2;
h = (D*(1/D))*sqrt(square1);
k = (E*(1/E))*sqrt(square2);
%standard equation of a circle: (x - h)^2 + (y - k)^2 = rightS

disp('The standard equation of the circle:')
fprintf('(x - (%.2f))^2 + (y - (%.2f))^2 = %.2f', h, k, rightS)
fprintf('\nThe coordinates of the center of the circle are ')
fprintf('(%.2f,%.2f).', h, k)

r = sqrt(rightS);
fprintf('\nThe radius of the circle is %.2f units.\n', r)






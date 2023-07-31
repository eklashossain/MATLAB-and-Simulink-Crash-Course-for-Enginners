function [ x1, x2 ] = quad_roots( a,b,c )
x1 = (-b + sqrt(b^2 - 4 * a * c))/(2*a);
x2 = (-b - sqrt(b^2 - 4 * a * c))/(2*a);
end

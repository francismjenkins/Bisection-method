% Equation is: f(x) = -2*x^6 - 1.6*x^4 + 12*x + 1

% Its devrivative is: F(x) = f'(x) = -12*x^5 - 6.4*x^3 + 12

% Find maximum of f(x) using bisection method


F =@(x) (-2*x.^6)-(1.6*x.^4)+(12*x)+1; % given function

f=@(x) (-12*x.^5)-(1.6*4*x.^3)+12; % derivative of F (to find maximum)

format long

err = 0.05;



a = 0.0;

b = 1.0;

while (b - a >= 0|| ( abs( f(a) ) >= err && abs( f(b) ) >= err ) )

c = (a + b)/2;

if ( f(c) == 0 )

break;

elseif ( f(a)*f(c) < 0 )

b = c;

else

a = c;

end

end

fprintf('The max value of F(x)= %d at c = %d',F(c),c)



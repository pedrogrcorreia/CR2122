% a)

a = [1:1:100];
disp(a);

% b)
b = transpose(a);
disp(b);

% c)
c = [ 1 2 3
      4 5 6
      7 8 9];
disp(c);

% d)
c(1, 3) = 33;
disp(c);

% e)
e = ones(3);
disp(e);

% f)
f = randn(8);
disp(f);

f = rand(8);
disp(f);

% g)
g = f;
g(:,1) = [];
disp(g);

% h)
h = [0:pi/100:2*pi];
fun = sin(h);
plot(h, fun);

% i)
hold("on");
i = [0: pi/100: 2*pi];
func = cos(i);
plot(i, func);

% j)
% a)
hold("off");
legend("sin(2*pi)", "cos(2*pi)");

% b)
title("sin and cos graphs");

%c)
hold("on");
plot(i, func, 'color', 'g');


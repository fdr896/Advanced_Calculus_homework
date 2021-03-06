x = linspace(-pi/2, pi, 10000);
re_f = @(x) exp(x).*cos(20.*x);
im_f = @(x) exp(x).*sin(20.*x);

figure(1); 
plot(x, re_f(x)); hold on;
plot(x, im_f(x)); hold off;
xlabel('x');
ylabel('Values');
legend({'$e^x \cdot \cos(20x)$', '$e^x \cdot \sin(20x)$'}, ...
       'Location', 'southwest', ...
       'Interpreter', 'latex', ...
       'fontweight', 'bold', ...
       'fontsize', 14)
title('Plots of $e^x \cdot \cos(20x)$ and $e^x \cdot \sin(20x)$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
      'fontsize', 16)

x = linspace(-pi/20 * 1.3, pi/20 * 1.3, 10000);
re_f = @(x) real(cos(x * (1 + 20*1i)));
im_f = @(x) imag(cos(x * (1 + 20*1i)));

figure(2); 
plot(x, re_f(x)); hold on;
plot(x, im_f(x)); hold off;
xlabel('x');
ylabel('Values');
legend({'Re$\left\{ \cos(x \cdot (1 + 20i)) \right\}$', ...
        'Im$\left\{\cos(x \cdot (1 + 20i))\right\}$'}, ...
        'Interpreter', 'latex', ...
        'fontweight', 'bold', ...
        'fontsize', 14)
title('Plots of $Re\left\{\cos(x \cdot (1 + 20i))\right\}$ and Im$\left\{\cos(x \cdot (1 + 20i))\right\}$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)
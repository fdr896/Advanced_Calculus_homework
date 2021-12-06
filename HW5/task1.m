A = [       -1  1                      -21                  21;
	    sqrt(2) 1       40 - 400 * sqrt(2) 20 * (sqrt(2) - 20);
	    sqrt(7) 1       7 * (20 - sqrt(7))    20 * sqrt(7) - 7;
	2 * sqrt(7) 1  28 * (2 * sqrt(7) - 20)   28 - 40 * sqrt(7)]; % матрица, соответствующая СЛУ
B = [-1; -2; -7; -28]; % столбец из правой части
X = A^(-1) * B; % столбец решений

coef = [1 -2.7939 -1.5099 0.0412 -0.0676]; % коэффициенты R(x)
inter = [-1 1; sqrt(2) -20; sqrt(7) sqrt(7); 2*sqrt(7) -2*sqrt(7)]; % точки интерполяции
l = -2; % левая граница области построения
r = 21; % правая граница области построения
figure(1);
syms x; % объявляем x
R = (coef(1).*x.^2 + coef(2).*x + coef(3)) ./ ((coef(4).*x + coef(5)) .* (x - 20)); % считаем значения функции в точках
fplot(R, [l r]); hold on; % строим график
for i = 1:length(inter) % строим точки интерполяции
    plot(inter(i, 1), inter(i, 2), '*r');
end
grid on;
xlabel('x');
ylabel('R(x)');
title("$R(x) = \frac{x^2 - 2.7939x - 1.5099}{(0.0412x - 0.0676) \cdot (x - 20)}$", ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
      'fontsize', 16);
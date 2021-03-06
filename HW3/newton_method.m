function [root, path] = newton_method(f, df, z_0)
eps = 1e-6; %% обозначим желаюмую точность вычисления,
            %% то такое число, что числа,
            %% отличающиеся по модулю меньше,
            %% чем на него, будем считать равными.
max_iters = 100; %% количество итераций,
                 %% после скольки считаем,
                 %% что метод не сошёлся.

%% будем хранить путь метода Ньютона.
path = NaN(max_iters + 1, 1);
%% проделаем первые две итерации метода.
path(1) = z_0;
path(2) = path(1) - f(path(1)) / df(path(1));

k = 1;
%% дальше будем итерироваться,
%% пока либо не сойдётся метод,
%% либо не превысится max_iters.
while abs(path(k + 1) - path(k)) >= eps
    k = k + 1;
    if k > max_iters
        error('Method did not converge');
    end
    path(k + 1) = path(k) - f(path(k)) / df(path(k));
end

%% если метод сошёлся быстрее,
%% удалим все Nan значения.
path = path(~isnan(path));
%% найденный корень лежит в конце массива.
root = path(end);

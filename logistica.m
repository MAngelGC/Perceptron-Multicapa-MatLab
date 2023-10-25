function [Y] = logistica(X,Beta)
%% Calcula la función logística para cada uno de los elementos del vector columna X
    %% ->> Completar aquí <<-
    Y = 1 ./ (1 + exp(-2 * Beta * X));
end


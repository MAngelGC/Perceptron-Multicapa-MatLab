function [Y] = derivadaLogistica(X,Beta)
%% Calcula la derivada de la función logística para cada uno de los elementos del vector columna X
    %% ->> Completar aquí <<-
    Y = 2 * Beta * logistica(X, Beta) .* (1 - logistica(X, Beta));
end


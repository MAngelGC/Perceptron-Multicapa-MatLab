function [difW, difT] = retropropagacionError(patron, Z, y, w, s, h, u, Beta, eta)
%% Función que calcula los diferenciales de los pesos W y T

%% Incialización de variables
nSalidas=size(y,1);
nOcultas=size(w,2);

delta2=zeros(nSalidas,1);
difW=zeros(nSalidas, nOcultas);
delta1=zeros(nOcultas,1);
difT=zeros(nOcultas,size(patron,2));

%% --> Cálculo de deltas2 y difW <--
%% ->> Completar aquí <<-

err = (Z - y);
g1d = derivadaLogistica(h, Beta);
g2d = derivadaLogistica(u, Beta);
delta2 = err * g1d;
difW = eta * delta2 * s;
%% --> Cálculo de deltas1 y difT <--
%% ->> Completar aquí <<-

delta1 = g2d' .* delta2 .* w';
difT = eta * delta1 * patron;
end


%caso base
fluxo_energia(A, D) :- 
    alimenta(A, D).

%passo recursivo
fluxo_energia(A, D) :- 
    alimenta(A, Z), 
    fluxo_energia(Z, D).

%query teste
% ?- fluxo_energia(sol, Destino).

%retorno
% Destino = plantas 
% Destino = algas 
% Destino = capivara 
% Destino = veado 
% Destino = gafanhoto 
% Destino = anta 
% Destino = onca 
% Destino = jacare 
% Destino = onca 
% Destino = sapo 
% Destino = passaro 
% Destino = cobra 
% Destino = gavião 
% Destino = cobra 
% Destino = gavião 

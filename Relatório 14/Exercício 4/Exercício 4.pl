%caso base
fluxo_energia(A, D) :- 
    alimenta(A, D).

%passo recursivo
fluxo_energia(A, D) :- 
    alimenta(A, Z), 
    fluxo_energia(Z, D).

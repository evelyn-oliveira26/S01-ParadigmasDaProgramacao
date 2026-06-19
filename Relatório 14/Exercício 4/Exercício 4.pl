%caso Base
fluxo_energia(A, D) :- 
    alimenta(A, D).

%passo Recursivo
fluxo_energia(A, D) :- 
    alimenta(A, Z), 
    fluxo_energia(Z, D).

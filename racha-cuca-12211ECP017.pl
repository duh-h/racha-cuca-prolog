resolve(Sol) :-
    Sol = mesa(_,_,_,_,_),
    %O casal que namora h� um ano est� ao lado da mulher que ganhou uma Bolsa.
    aolado(A,B,Sol),
    tempo(A,1),
    presente(B,bolsa),
    %A mulher de Branco est� exatamente � direita da de Amarelo.
    exatamente_a_direita(C,D,Sol),
    vestido(C,branco),
    vestido(D,amarelo),
    %Na primeira posi��o est� a mulher que ganhou um Perfume.
    primeira(E,Sol),
    presente(E,perfume),
    %O casal que se conheceu na Praia est� em uma das pontas.
    uma_das_pontas(F,Sol),
    conheceram(F,praia),
    %M�nica est� em algum lugar � direita da mulher de Vermelho.
    algum_lugar_a_direita(G,H,Sol),
    mulher(G,monica),
    vestido(H,vermelho),
    %A mulher do vestido Branco est� exatamente � esquerda de Maur�cio.
    exatamente_a_esquerda(I,J,Sol),
    vestido(I,branco),
    homem(J,mauricio),
    %A mulher que ganhou um Anel est� na terceira posi��o.
    terceira(K,Sol),
    presente(K,anel),
    %Laura est� ao lado da mulher de Verde.
    aolado(L,M,Sol),
    mulher(L,laura),
    vestido(M,verde),
    %Renan namora Denise.
    casal(N,Sol),
    homem(N,renan),
    mulher(N,denise),
    %Quem ganhou um Perfume est� exatamente � esquerda do casal que se conheceu num Churrasco.
    exatamente_a_esquerda(O,P,Sol),
    presente(O,perfume),
    conheceram(P,churasco),
    %A mulher que ganhou uma Bolsa est� em algum lugar entre o Igor e a mulher de Vermelho, nessa ordem.
    primeira(Z2,Sol),
    homem(Z2,igor),
    terceira(Z3,Sol),
    vestido(Z3,vermelho),
    segunda(Z4,Sol),
    presente(Z4,bolsa),
    %Ant�nio namora M�nica.
    casal(Q,Sol),
    homem(Q,antonio),
    mulher(Q,monica),
    %Na quarta posi��o est� o casal que namora h� 3 anos.
    quarta(R,Sol),
    tempo(R,3),
    %O casal que namora h� 2 anos est� ao lado de Maur�cio.
    aolado(S,T,Sol),
    tempo(S,2),
    homem(T,mauricio),
    %O casal do namoro mais longo � aquele que se conheceu numa Festa.
    casal(U,Sol),
    tempo(U,5),
    conheceram(U,festa),
    %Renan est� exatamente � esquerda do casal que namora h� 4 anos.
    exatamente_a_esquerda(V,W,Sol),
    homem(V,renan),
    tempo(W,4),
    %Claudia est� na segunda posi��o.
    segunda(X,Sol),
    mulher(X,claudia),
    %A mulher que ganhou um Vestido est� exatamente � esquerda do casal que se conheceu na Faculdade.
    exatamente_a_esquerda(Y,Z,Sol),
    presente(Y,vestido),
    conheceram(Z,faculdade),
    %fechamento.
    casal(Z1,Sol),
    mulher(Z1,ana),
    casal(A1,Sol),
    homem(A1,caio),
    casal(B1,Sol),
    conheceram(B1,trabalho),
    casal(C1,Sol),
    vestido(C1,azul),
    casal(D1,Sol),
    presente(D1,sandalia).




casal(X,mesa(X,_,_,_,_)).
casal(X,mesa(_,X,_,_,_)).
casal(X,mesa(_,_,X,_,_)).
casal(X,mesa(_,_,_,X,_)).
casal(X,mesa(_,_,_,_,X)).

primeira(X,mesa(X,_,_,_,_)).
segunda(X,mesa(_,X,_,_,_)).
terceira(X,mesa(_,_,X,_,_)).
quarta(X,mesa(_,_,_,X,_)).
quinta(X,mesa(_,_,_,_,X)).


vestido(casais(X,_,_,_,_,_),X).
homem(casais(_,X,_,_,_,_),X).
mulher(casais(_,_,X,_,_,_),X).
conheceram(casais(_,_,_,X,_,_),X).
tempo(casais(_,_,_,_,X,_),X).
presente(casais(_,_,_,_,_,X),X).

aolado(X,Y,mesa(X,Y,_,_,_)).
aolado(X,Y,mesa(Y,X,_,_,_)).
aolado(X,Y,mesa(_,X,Y,_,_)).
aolado(X,Y,mesa(_,Y,X,_,_)).
aolado(X,Y,mesa(_,_,X,Y,_)).
aolado(X,Y,mesa(_,_,Y,X,_)).
aolado(X,Y,mesa(_,_,_,X,Y)).
aolado(X,Y,mesa(_,_,_,Y,X)).

uma_das_pontas(X,mesa(X,_,_,_,_)).
uma_das_pontas(X,mesa(_,_,_,_,X)).

algum_lugar_a_direita(X,Y,mesa(Y,X,_,_,_)).
algum_lugar_a_direita(X,Y,mesa(Y,_,X,_,_)).
algum_lugar_a_direita(X,Y,mesa(Y,_,_,X,_)).
algum_lugar_a_direita(X,Y,mesa(Y,_,_,_,X)).
algum_lugar_a_direita(X,Y,mesa(_,Y,X,_,_)).
algum_lugar_a_direita(X,Y,mesa(_,Y,_,X,_)).
algum_lugar_a_direita(X,Y,mesa(_,Y,_,_,X)).
algum_lugar_a_direita(X,Y,mesa(_,_,Y,X,_)).
algum_lugar_a_direita(X,Y,mesa(_,_,Y,_,X)).
algum_lugar_a_direita(X,Y,mesa(_,_,_,Y,X)).

algum_lugar_a_esquerda(X,Y,Mesa) :-
    algum_lugar_a_direita(Y,X,Mesa).

exatamente_a_esquerda(X,Y,mesa(X,Y,_,_,_)).
exatamente_a_esquerda(X,Y,mesa(_,X,Y,_,_)).
exatamente_a_esquerda(X,Y,mesa(_,_,X,Y,_)).
exatamente_a_esquerda(X,Y,mesa(_,_,_,X,Y)).

exatamente_a_direita(X,Y,Mesa) :-
   exatamente_a_esquerda(Y,X,Mesa).


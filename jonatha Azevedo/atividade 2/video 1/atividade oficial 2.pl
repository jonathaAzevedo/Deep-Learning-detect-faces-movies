progenitor(maria,joao).
progenitor(jose,joao).
progenitor(maria,ana).
progenitor(jose,ana).
progenitor(joao,mario).
progenitor(ana,helena).
progenitor(ana,joana).
progenitor(mario,carlos).
progenitor(helena,carlos).

sexo(ana,feminino).
sexo(maria,feminino).
sexo(helena,feminino).

sexo(mario,masculino).
sexo(joao,masculino).
sexo(jose,masculino).
sexo(carlos,masculino).

irma(X,Y) :- progenitor(A,X),
			progenitor(A,Y),
    		X==Y,
    		sexo(X,feminino).

irmao(X,Y) :- progenitor(A,X),
			progenitor(A,Y),
    		X\==Y,
    		sexo(X,masculino).

descendente(X,Y) :- progenitor(X,Y).
descendente(X,Y) :- progenitor(X,A),
					descendente(A,Y).


avo(X,Y):-progenitor(X,A),
    	progenitor(A,Y),
    	sexo(X,masculino).


mae(X,Y) :-progenitor(X,Y),
    	sexo(x,feminino).


pai(X,Y) :-progenitor(X,Y),
    	sexo(x,masculino).


tio(X,Y):- irmao(X,A),
			progenitor(A,Y).

primo(X,Y):- irmao(A,B),
    			progenitor(A,X),
    			progenitor(B,Y).
    			X\==Y



    


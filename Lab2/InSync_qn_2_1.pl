% Facts: the children of Queen Elizabeth in order of birth
child(prince_charles, queen_elizabeth).
child(princess_ann, queen_elizabeth).
child(prince_andrew, queen_elizabeth).
child(prince_edward, queen_elizabeth).

% Rules: the old Royal succession rule
successor(X) :-
    maleSuccessor(X);femaleSuccessor(X).
maleSuccessor(X) :-
    male(X),
    child(X, Y),
    monarch(Y).
femaleSuccessor(X):-
    female(X),
    child(X, Q),
    monarch(Q).

% Facts: Queen Elizabeth is the current monarch
monarch(queen_elizabeth).

% Facts: defining which children are male and female
male(prince_charles).
male(prince_andrew).
male(prince_edward).
female(princess_ann).


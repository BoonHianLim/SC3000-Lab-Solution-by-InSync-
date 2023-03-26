% Facts: the children of Queen Elizabeth in order of birth
child(prince_charles, queen_elizabeth).
child(princess_ann, queen_elizabeth).
child(prince_andrew, queen_elizabeth).
child(prince_edward, queen_elizabeth).
child(princess_something, queen_elizabeth).

sibling(prince_charles, princess_ann).
sibling(princess_ann, prince_andrew).
sibling(prince_andrew, prince_edward).
sibling(prince_edward, princess_something).

% Rules: the old Royal succession rule
successor(X) :-
    child(X, Y),
    monarch(Y).
% Facts: Queen Elizabeth is the current monarch
monarch(queen_elizabeth).

% Rules: defining the relations between the children
siblings(X, Y) :-
    sibling(X, Y).
siblings(X, Z) :-
    sibling(X, Y),
    siblings(Y, Z).

% Facts: defining which children are male and female
male(prince_charles).
male(prince_andrew).
male(prince_edward).
female(princess_ann).
female(princess_something).

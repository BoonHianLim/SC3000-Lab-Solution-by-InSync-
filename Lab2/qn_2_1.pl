monarch(elizabeth).

female(elizabeth).

female(ann).

male(charles).

male(andrew).

male(edward).

siblings(charles,ann).

siblings(ann,andrew).

siblings(andrew,edward).

parent(elizabeth, charles).

parent(elizabeth, ann).

parent(elizabeth, andrew).

parent(elizabeth, edward).

siblings(Older, Younger) :- siblings(Older, SlightlyOlder), siblings(SlightlyOlder, Younger).

order_of_succession(Parent,First, Second, Third, Fourth) :- monarch(Parent), parent(Parent, First), parent(Parent, Second), parent(Parent, Third), parent(Parent, Fourth).

sum(A, B, C, D):- C is A + B, D is A+B+C.
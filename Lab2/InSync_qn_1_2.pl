develop(sumsum,galactica-s3).

steal(stevey,galactica-s3).

boss(stevey,appy).

competitors(sumsum, appy).

competitors(X,Y):- competitors(Y,X),X\=Y.

unethical(StoleBoss):- steal(StoleBoss,Tech),business(RivalCompany,Tech),boss(StoleBoss,OwnCompany),rivals(OwnCompany,RivalCompany),OwnCompany\=RivalCompany.

business(X,Y):-develop(X,Y).

rivals(X,Y):-competitors(X,Y).


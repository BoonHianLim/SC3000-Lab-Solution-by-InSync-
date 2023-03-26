competitors(sumsum, appy).

develop(sumsum,galactica-s3).

steal(stevey,galactica-s3).

boss(stevey,appy).

competitors(X,Y):- competitors(Y,X).



unethical(StoleBoss):- steal(StoleBoss,Tech),business(RivalCompany,Tech),boss(StoleBoss,OwnCompany),rivals(OwnCompany,RivalCompany).

business(X,Y):-develop(X,Y).

rivals(X,Y):-competitors(X,Y).


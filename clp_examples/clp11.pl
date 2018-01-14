% Kallipos 
% Τεχνικές Λογικού Προγραμματιμσού, η γλώσσα Prolog
% (Sakellariou et al)
% page 265


:- use_module(library(clpfd)).

assign_tasks(Teams,Cost) :- 
	Teams = [T1,T2,T3,T4,T5],
	element(I1,[2,3,4],T1),
	element(I1,[30,10,40],C1),
	element(I2,[1,4,5],T2),
	element(I2,[70,20,140],C2),
	element(I3,[2,4,5],T3),
	element(I3,[10,80,100],C3),
	element(I4,[1,3,4],T4),
	element(I4,[20,40,40],C4),
	element(I5,[1,2,4],T5),
	element(I5,[40,10,10],C5),
	all_different(Teams),
	Cost #= C1 + C2 + C3 + C4 + C5,
	labeling([min(Cost)], Teams).


main :- assign_tasks(Teams, Cost), write([Teams, Cost]), nl.
% [[3,4,5,1,2],160]
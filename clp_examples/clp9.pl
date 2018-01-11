% Logic Programming and Prolog
% Chapter 16 page 17
% by Ulf Nilsson
% Example using global constraints: element and circuit
% Traveling Salesman Problem

:- use_module(library(clpfd)).

tsp(Cities,Cost) :- 
	Cities = [X1,X2,X3,X4,X5,X6,X7],
	element(X1, [0,4,8,10,7,14,15], C1),
	element(X2, [4,0,7,7,10,12,5], C2),
	element(X3, [8,7,0,4,6,8,10], C3),
	element(X4, [10,7,4,0,2,5,8], C4),
	element(X5, [7,10,6,2,0,6,7], C5),
	element(X6, [14,12,8,5,6,0,5], C6),
	element(X7, [15,5,10,8,7,5,0], C7),
	Cost #= C1 + C2 + C3 + C4 + C5 + C6 + C7,
	circuit(Cities),
	labeling([min(Cost)], Cities).

% ?- tsp(X, C), write([X, C]).
% [[2,7,1,3,4,5,6],34]
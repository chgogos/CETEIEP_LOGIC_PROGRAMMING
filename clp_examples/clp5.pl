% Logic Programming and Prolog
% Chapter 16 page 11
% by Ulf Nilsson
% adapted for swi prolog
% optimization example:
% 3 items A,B,C
% A can be sold for 3 euros, requires 2 units of space
% B can be sold for 4 euros, requires 3 units of space
% C can be sold for 10 euros, requires 7 units of space
% Given that the available space capacity is 13, what is the optimal mix of items sold?

:- use_module(library(clpfd)).

items(A,B,C,S,P) :- 
	[A,B,C] ins 0..10,
	S #>= 2*A + 3*B + 7*C,
	P #= 3*A + 4*B + 10*C,
	labeling([max(P)], [P,S,A,B,C]).

% ?- items(A,B,C,13,P), write([A,B,C,P]).
% [3,0,1,19]
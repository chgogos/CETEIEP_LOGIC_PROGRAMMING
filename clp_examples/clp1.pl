% factorial, pure relation (can work bothways)

:- use_module(library(clpfd)).

n_factorial(0,1).
n_factorial(N,F) :- 
	N #> 0, N1 #= N-1, F #= N*F1,
	n_factorial(N1,F1).

% ?- n_factorial(38,F), write(F).
% 523022617466601111760007224100074291200000000

% ?- n_factorial(N,120), write(N).
% 5
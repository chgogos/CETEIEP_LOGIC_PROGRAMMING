% all_different vs all_distinct

% ?- use_module(library(clpfd)).
% ?- X in 1..2, Y in 1..2, Z in 1..2, all_different([X,Y,Z]).
% X in 1..2,
% all_different([X, Y, Z]),
% Y in 1..2,
% Z in 1..2


% ?- use_module(library(clpfd)).
% ?- X in 1..2, Y in 1..2, Z in 1..2, all_distinct([X,Y,Z]).
% false.
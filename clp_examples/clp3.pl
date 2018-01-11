% reification (assign value to logical variable based on other variables)
% example: assign value to variable B

:- use_module(library(clpfd)).

% ?-  X #= Y #<==> B, X in 0..3, Y in 4..5, write([X,Y,B]).
% [_822,_862,0]
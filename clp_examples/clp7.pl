% Logic Programming and Prolog
% Chapter 16 page 13
% by Ulf Nilsson
% example using global constraint: cumulative
% adapted for swi prolog

% 3 tasks 
% start times: S1, S2, S3
% durations: 3, 4, 2
% resource requested: 2, 1, 3 
% maximum resource: 3 

:- use_module(library(clpfd)).

solve([S1,S2,S3]) :-
	[S1,S2,S3] ins 0..4,
	S1 #< S3,
	Tasks = [
		task(S1, 3, _, 2, _),
		task(S2, 4, _, 1, _),
		task(S3, 2, _, 3, _)
	],
	cumulative(Tasks, [limit(3)]).


% ? solve([S1,S2,S3]), label([S1,S2,S3]), write([S1,S2,S3]).
% [0,0,4]
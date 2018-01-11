% another example using all_different

:- use_module(library(clpfd)).

ages(As) :-
        As = [Abe,Dan,Mary,Sue],    % There are 4 children: Abe, Dan, Mary, Sue
        As ins {3,5,6,8},           % Their ages are 3, 5, 6 and 8
        all_different(As),
        Abe #> Dan,                 % Abe is older than Dan
        Sue #< Mary,                % Sue is younger than Mary
        Sue #= Dan + 3,             % Sue's age is Dan's age plus 3 years
        Mary #> Abe.                % Mary is older than Abe

% ?- ages(As), write(As).
% [5,3,8,6]
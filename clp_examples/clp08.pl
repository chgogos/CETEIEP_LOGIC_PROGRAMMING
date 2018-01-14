:- use_module(library(clpfd)).

% http://www.pathwayslms.com/swipltuts/clpfd/clpfd.html#_element_index_list_element
% Suzy wants to flirt with Nathan
% But not when her old boyfriend John is around
%
% Suzy, Nathan, and John all must take classes 1..6
%
% How can Suzy arrange her schedule so she can flirt
% in at least 3 classes?

flirt_constraint(Suzy, Nathan, John, FlirtPeriods) :-
        length(Suzy, 6),
        length(Nathan, 6),
        length(John, 6),
        Suzy ins 1..6,
        Nathan ins 1..6,
        John ins 1..6,
        all_different(Suzy),
        all_different(Nathan),
        all_different(John),
        FlirtPeriods = [A,B,C],
        FlirtPeriods ins 1..6,
        A #< B,    % remove unwanted symmetry
        B #< C,
        flirty_period(A, Suzy, Nathan, John),
        flirty_period(B, Suzy, Nathan, John),
        flirty_period(C, Suzy, Nathan, John),
        label(Suzy),
        label(FlirtPeriods).

flirty_period(Period, Suzy, Nathan, John) :-
        Class in 1..6,
        DiffClass #\= Class,
        element(Period, Suzy, Class),
        element(Period, Nathan, Class),
        element(Period, John, DiffClass).
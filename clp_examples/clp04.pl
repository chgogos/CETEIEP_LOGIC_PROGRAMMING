% solve the cryptaritmetic puzzle
%  SEND   9567
% +MORE   1085
% MONEY  10652

:- use_module(library(clpfd)).         

puzzle([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y]) :-   
        Vars = [S,E,N,D,M,O,R,Y],     
        Vars ins 0..9,      
        all_different(Vars),        
                  S*1000 + E*100 + N*10 + D +     
                  M*1000 + O*100 + R*10 + E #=
        M*10000 + O*1000 + N*100 + E*10 + Y,
        M #\= 0, S #\= 0.  

% ?- puzzle(As+Bs=Cs).

% ?-  puzzle(As+Bs=Cs), label(As), label(Bs), label(Cs), write([As,Bs,Cs]).
% [[9,5,6,7],[1,0,8,5],[1,0,6,5,2]]


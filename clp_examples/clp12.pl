
:- use_module(library(clpfd)).

schedule_start_times(teamA([St1,St4,St5]), teamB([St2,St3]), Makespan) :- 
	Starts = [St1, St2, St3, St4, St5],
	Ends = [End1, End2, End3, End4, End5],
	Starts ins 0..sup,
	Ends ins 0..sup,
	Makespan in 0..sup,
	End1 #= 5 + St1, 
	End2 #= 4 + St2,
	End3 #= 7 + St3,
	End4 #= 1 + St4,
	End5 #= 9 + St5,
	End1 #=< St2,
	End3 #=< St5,
	serialized([St1,St4,St5],[5,1,9]),
	serialized([St2,St3],[4,7]),
	Makespan #>= End1,
	Makespan #>= End2,
	Makespan #>= End3,
	Makespan #>= End4,
	Makespan #>= End5,
	labeling([min(Makespan)], [St1,St2,St3,St4,St5,End1,End2,End3,End4,End5]).

main :- schedule_start_times(T1,T2,M), write([T1,T2,M]), nl. 
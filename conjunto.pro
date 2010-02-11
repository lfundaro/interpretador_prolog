%% conjunto([H|S],[],[H]).
%% conjunto([H|S],[H|P],[H|P]).
%% conjunto([H|S],[T|Q],[Z|U]) :-  

%% change([H,Q,D,N,P]) :- 
%%     member(H,[0,1,2]),                      /* Half-dollars */ 
%%     member(Q,[0,1,2,3,4]),                  /* quarters     */ 
%%     member(D,[0,1,2,3,4,5,6,7,8,9,10]) ,    /* dimes        */ 
%%     member(N,[0,1,2,3,4,5,6,7,8,9,10,       /* nickels      */ 
%%                11,12,13,14,15,16,17,18,19,20]),  
%%     S is 50*H + 25*Q +10*D + 5*N, 
%%     S =< 100, 
%%     P is 100-S,
%%     write(P), fail.


print_head([X|Y]) :- write(X).
check_sing(N,N).
member2(X,[X|R]) :- write(X).
member2(X,[Y|R]) :- member2(X,R).
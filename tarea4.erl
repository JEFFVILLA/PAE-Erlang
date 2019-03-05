-module(tarea4).
-compile(export_all).
one() -> 1.
two() -> 2.

add(X,Y) -> X() + Y().

map(_,[]) -> [];
map(F, [H|T]) -> [F(H)|map(F,T)].

incr(X) -> X+1.
decr(X) -> X-1.

% PrepareAlarm = fun(Room) ->
%     io:format("Alarm set in ~s.~n",[Room]),
%     fun() ->  io:format("Alarm tripped in ~s! Call Batman!~n",[Room]) end
% end.

a() ->
    Secret= "pony",
    fun() -> Secret end.
b(F) ->
    "a/o's password is " ++ F().

base() ->
    A=1,
    (fun() -> A = 2 end)().

base1() ->
    A=1,
    (fun(A) -> A = 2 end)(2).


filter(Pred, L) -> lists:reverse(filter(Pred, L,[])).

filter(_,[], Acc) -> Acc;
filter(Pred, [H|T],Acc) ->
    case Pred(H) of
        true -> filter(Pred, T, [H|Acc]);
        false -> filter(Pred, T, Acc)
    end.

cuadrado(X) ->  X * X.
sumAll(A,B) when B > A -> 
    lists:foldl(fun(A,B) -> A + B end, 0 ,lists:seq(A,B)).

sumAllSq(A,B) when B > A ->  
    L = lists:seq(A,B),
    R = lists:map(fun tarea4:cuadrado/1,L),
    lists:foldl(fun(A,B) -> A + B end,0,R).

sumAllSqEven(A,B) when B > A ->  
    L = lists:seq(A,B),
    F = lists:filter(fun(X) -> X rem 2 == 0 end,L),
    R = lists:map(fun tarea4:cuadrado/1,F),
    lists:foldl(fun(A,B)  -> A + B end,0,R).

sumAllSqEven1(A,B) when B > A ->  
            L = lists:seq(A,B),
            lists:foldl(fun(A,B) when A rem 2 == 0 -> (A*A) + B ;
                           (_,B) when true -> B end, 0,L).

throws(F) ->   
    try F() of        
        _ -> ok    
    catch        
    Throw -> {throw, caught, Throw}    
    end.
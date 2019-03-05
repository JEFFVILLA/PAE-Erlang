-module(class4).
-compile(export_all).


unzip(L) ->
 {X,Y} = lists:foldl(fun({A,B},{L1,L2}) -> {[A|L1],[B|L2]} end , {[],[]}, L),
 {lists:reverse(X),lists:reverse(Y)}.


       
in_rank(A,B,L) -> 
    lists:map(fun(X) -> X >= A andalso X =< B end , L).


% first(L) ->
%     lists:foldl(fun() -> first end, [], L)

lk(_Key,[]) -> not_found;
lk(Key,[{Key,Val}|_]) -> Val;
lk(Key,[_|R]) -> lk(Key,R).

keys(X,Y) ->
    lists:map(fun(A) -> fun class4:lk/2(A,Y) end, X).


-module(tarea3).
-compile([export_all]).


search(_,[]) -> false;
search(X,[X|_]) -> true;
search(X,[_|Y]) -> search(X,Y). 



unzip(T) -> unzip(T, {[], []}).

unzip([], {I, A}) ->
    {lists:reverse(I), lists:reverse(A)};
unzip([{A, B} | T], {I, A}) ->
unzip(T, {[A | I], [B | A]}).
 
calc({add, X, Y}) -> calc(X) + calc(Y);
calc({sub, X, Y}) -> calc(X) - calc(Y);
calc({mul, X, Y}) -> calc(X) * calc(Y);
calc({coc, X, Y}) -> calc(X) / calc(Y);
calc({neg, X}) -> calc(-X);
calc(X) -> X.

-module(tarea).
-compile([export_all]).

ordinal(Numero) -> 
        case Numero of
                1 -> io:fwrite("Ordinal 1st ");
                2 -> io:fwrite("Ordinal 2nd ");
                3 -> io:fwrite("Ordinal 3rt "); 
                4 -> io:fwrite("Ordinal 4th ");
                5 -> io:fwrite("Ordinal 5th ");
                6 -> io:fwrite("Ordinal 6st ");
                7 -> io:fwrite("Ordinal 7st ");
                8 -> io:fwrite("Ordinal 8st ");
                9 -> io:fwrite("Ordinal 9st ")
    end.
    
    
igual({A,B}) when A =:= B -> true;
igual({A,B}) when A =/= B -> false.


foo([{X,X}|T]) -> T;
foo([{X,Y}|_]) -> {Y,X}.

cal({add,Y,Z}) -> Y+Z;
cal({sub,Y,Z}) -> Y-Z;
cal({mul,Y,Z}) -> Y*Z;
cal({coc,Y,Z}) -> Y/Z.


len([]) -> 0;
len([_|T]) -> 1 + len(T);

tail_len(L) -> tail_len(L,0).
tail_len([],Acc) -> Acc;
tail_len([_|T],Acc) -> tail_len(T,Acc+1).





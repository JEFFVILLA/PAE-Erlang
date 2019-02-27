-module(useless).
-import(lists,[nth/2]). 
-compile([export_all]).
add(A,B) ->
    A+B.


hello() -> 
    io:format("Hello,world!").

greet_and_add_two(X) ->
    hello(),
    add(X,2).

beach(Temperature) ->  
    case Temperature of 
     {celsius, N} when N >= 20, N =< 45 -> 'favorable';
     {kelvin, N} when N >= 293, N =< 318 -> 'scientifically favorable'; 
     {fahrenheit, N} when N >= 68, N =< 113 ->  'favorable in the US';        
    _ -> 'avoid beach' 
end.

help_me(Animal) ->    
    Talk = if Animal == cat  -> "meow";
    Animal == beef -> "mooo";              
    Animal == dog  -> "bark";
    Animal == tree -> "bark";
    true -> "fgdadfgna"           
end,    
{Animal, "says " ++ Talk ++ "!"}.


start() -> 
   Lst1 = [1,4,3,2,2,2], 
   io:fwrite("~p~n",[nth(2,Lst1)]).

ordinal(Numero) -> 
        case numero of
                1 -> io:fwrite("Ordinal 1st");
                2 -> io:fwrite("Ordinal 2nd");
                3 -> io:fwrite("Ordinal 3rt"); 
                4 -> io:fwrite("Ordinal 4th");
                5 -> io:fwrite("Ordinal 5th");
                6 -> io:fwrite("Ordinal 6st");
                7 -> io:fwrite("Ordinal 7st");
                8 -> io:fwrite("Ordinal 8st");
                9 -> io:fwrite("Ordinal 9st")
    end.
    
    
igual({A,B}) when A =:= B -> true;
igual({A,B}) when A =/= B -> false.
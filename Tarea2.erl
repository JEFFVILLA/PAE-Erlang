-module(tarea).
-compile([export_all]).

ordinal(numero) -> 
    case numero of
            1 -> io:fwrite("Ordinal 1st");
            2 -> io:fwrite("Ordinal 2st");
            3 -> io:fwrite("Ordinal 3st"); 
            4 -> io:fwrite("Ordinal 3st");



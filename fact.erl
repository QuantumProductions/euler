-module(fact).
-export([fact_rec/1]).

fact_rec(N) ->
    fact_rec(N, 1, []).

fact_rec(N, I, Acc) when I =< trunc(N/2) ->
    case N rem I of
        0 -> fact_rec(N, I+1, [I | Acc]);
        _ -> fact_rec(N, I+1, Acc)
    end;
fact_rec(N, _I, Acc) -> lists:reverse(Acc) ++ [N].
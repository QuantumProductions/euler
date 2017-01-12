-module(e12).
-compile(export_all).

sum(List) ->
  lists:foldl(fun(X, Sum) -> X + Sum end, 0, List).

triangle2(N, Factors) ->
  case sum(Factors) of
    Sum when Sum > N -> {false, Factors}; 
    N -> {true, Factors};
    _ -> triangle2(N, lists:append(Factors, [length(Factors) + 1]))
  end.

triangle2(N) ->
  triangle2(N, []).

euler(N) ->
 case triangle2(N) of
   {true, Factors} -> 
     % case length(Factors) > 3 of
       case length(fact:fact_rec(N)) > 500 of
       true -> N;
       false -> euler(N+1) 
     end;
   {false, _Factors} ->
       euler(N+1)
 end.
   
euler() ->
  euler(1).

triangle(N, Sum, _) when Sum > N ->
  false;
triangle(N, Sum, _) when Sum =:= N ->
  true;
triangle(N, Sum, Factor) ->
  triangle(N, Sum + Factor, Factor + 1).

triangle(N) ->
  triangle(N, 0, 1).
  
  

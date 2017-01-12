-module(e12).
-compile(export_all).

triangle(N, Sum, _) when Sum > N ->
  false;
triangle(N, Sum, _) when Sum =:= N ->
  true;
triangle(N, Sum, Factor) ->
  triangle(N, Sum + Factor, Factor + 1).

triangle(N) ->
  triangle(N, 0, 1).
  
  

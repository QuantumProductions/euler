-module(gcd).
-export([run/2]).

run(A, 0) ->
  A;
run(A, B) ->
  run(B, A rem(B)).

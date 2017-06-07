-module(fizzbuzz).

-include_lib("eunit/include/eunit.hrl").

evaluate(Num) when (Num rem 3 =:= 0) and (Num rem 5 =:= 0) ->
  "FizzBuzz";

evaluate(Num) when Num rem 3 =:= 0 ->
  "Fizz";

evaluate(Num) when Num rem 5 =:= 0 ->
  "Buzz";

evaluate(Num) ->
  integer_to_list(Num).

normal_number_test() ->
  ?assertEqual("2", evaluate(2)).

divisible_by_3_test() ->
  ?assertEqual("Fizz", evaluate(3)).

divisible_by_5_test() ->
  ?assertEqual("Buzz", evaluate(5)).

divisible_by_3_and_5_test() ->
  ?assertEqual("FizzBuzz", evaluate(15)).

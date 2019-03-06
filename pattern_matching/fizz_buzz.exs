fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> "#{c}"
end

IO.puts(fizz_buzz.(0, 0, 0))
IO.puts(fizz_buzz.(0, 1, 0))
IO.puts(fizz_buzz.(1, 0, 0))
IO.puts(fizz_buzz.(1, 1, 'ELIXIR'))

IO.puts("-------------------------")


another_fizz_buzz = fn
  (n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts(another_fizz_buzz.(10))
IO.puts(another_fizz_buzz.(11))
IO.puts(another_fizz_buzz.(12))
IO.puts(another_fizz_buzz.(13))
IO.puts(another_fizz_buzz.(14))
IO.puts(another_fizz_buzz.(15))
IO.puts(another_fizz_buzz.(16))

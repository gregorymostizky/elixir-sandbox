a = 40 + 2


IO.puts "Hello world from Elixir"
IO.puts "integer: #{a}"
IO.puts "list: #{inspect [1,2,3]}"
IO.puts "list: #{inspect is_boolean(true) }"

myadd = fn x,y -> x + y end
added = myadd.(1,2)

IO.puts "function call: #{added}"

x = case {1,2,3} do
  {4,5,6} ->
    "This will not match"
  {1, x, 3} ->
    "Matching with #{x}"
  _ ->
    "This will always match anything"
end

IO.puts x

positive = fn
  x when is_number(x) and x > 0 -> x
  x when is_number(x) and x < 0 -> -x
  _ -> 0
end

IO.puts positive.(-15)
IO.puts positive.(12)
IO.puts positive.(:ok)

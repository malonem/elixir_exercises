defmodule Progelixir do
  def fizzword(0, 0, _), do: :fizzbuzz
  def fizzword(0, _, _), do: :fizz
  def fizzword(_, 0, _), do: :buzz
  def fizzword(_, _, x), do: x
  def fizzbuzz(x) do
    fizzword(rem(x,3), rem(x,5), x)
  end
end

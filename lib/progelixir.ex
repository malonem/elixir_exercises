defmodule Progelixir do
  def fizzword(0, 0, _), do: :fizzbuzz
  def fizzword(0, _, _), do: :fizz
  def fizzword(_, 0, _), do: :buzz
  def fizzword(_, _, x), do: x
  def fizzbuzz(x) do
    fizzword(rem(x,3), rem(x,5), x)
  end

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))

  defp reduce(low, high), do: div(high-low, 2)
  def guess(number, low..high) when high > number do
    guess(number, low..(reduce(low,high) + low))
  end
  def guess(number, low..high) when high < number do
    guess(number, high..(reduce(low, high) + high + 1))
  end
  def guess(number, low..high) when high == number, do: number

  def sum([]), do: 0
  def sum([head|tail]), do: head + sum(tail)

  def caesar([], n), do: []
  def caesar([head|tail], n)
  when head+n <= ?z do
    [head+n | caesar(tail, n)]
  end
  def caesar([head|tail], n) do
    [head + n - ?z + ?a - 1 | caesar(tail, n)]
  end

end

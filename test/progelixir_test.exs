defmodule ProgelixirTest do
  use ExUnit.Case

  test "fizzword with first two 0" do
    assert Progelixir.fizzword(0, 0, 0) == :fizzbuzz
  end

  test "fizzword with first 0, others not" do
    assert Progelixir.fizzword(0, 1, 1) == :fizz
  end

  test "fizzword with second 0, others not" do
    assert Progelixir.fizzword(1, 0, 1) == :buzz
  end
  
  test "fizzword with first and second not 0" do
    assert Progelixir.fizzword(1, 1, 1) == 1
  end

  test "fizzbuzz first 15" do
    assert Enum.map(
      1..15,
      &(Progelixir.fizzbuzz(&1))
    ) == [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14, :fizzbuzz]
  end

  test "parameterized functions" do
    prefix = fn pre -> (fn text -> pre <> " " <> text end) end
    mrs = prefix.("Mrs")
    assert mrs.("Smith") == "Mrs Smith"
    assert prefix.("Elixir").("Rocks") == "Elixir Rocks"
  end

  test "aliasing functions" do
    map = &Enum.map/2
    assert map.([1,2,3,4], &(&1 + 2)) == [3,4,5,6]
  end

  test "greatest common divisor" do
    assert Progelixir.gcd(36,10) == 2
  end

  test "guess a number in range" do
    assert Progelixir.guess(273, 1..1000) == 273
  end

  test "sum function" do
    assert Progelixir.sum([1,2,3,4]) == 10
  end

  test "caesar cypher" do
    assert Progelixir.caesar('ryvkve', 13) == 'elixir'
  end
end

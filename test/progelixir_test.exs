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
end

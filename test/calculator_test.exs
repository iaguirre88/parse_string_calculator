defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "simple operation" do
    assert Calculator.calculate("3+2") == 5
  end

  test "precedence" do
    assert Calculator.calculate("3*2+1") == 7
  end

  test "operation with floats" do
    assert Calculator.calculate("0.5+1") == 1.5
    assert Calculator.calculate("2*0.5") == 1
  end

  test "parentheses" do
    assert Calculator.calculate("(1)") == 1
    assert Calculator.calculate("3 * (2 + 1)") == 9
    assert Calculator.calculate("3 * (2 + 1 + 5 * (3+2))") == 84
  end
end

defmodule Calculator do
  def calculate(str) do
    str
    |> tokenize
    |> parser
    |> do_calculate
  end

  defp tokenize(str) do
    {:ok, tokens, _} =
      str
      |> to_charlist
      |> :lexer.string

    tokens
  end

  defp parser(tokens) do
    {:ok, tree} = :grammar.parse(tokens)
    tree
  end

  defp do_calculate({:number, _line, number}), do: number
  defp do_calculate({{:+, _line}, left, right}), do: do_calculate(left) + do_calculate(right)
  defp do_calculate({{:*, _line}, left, right}), do: do_calculate(left) * do_calculate(right)
end

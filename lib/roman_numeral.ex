defmodule RomanNumeral do
  @ten_i String.duplicate("I", 10)
  @five_i String.duplicate("I", 5)

  def roman_sum(x, y) do
    xy = expandio(x) <> expandio(y)
    reductio(xy)
  end

  defp reductio(<<@ten_i, rest::binary>>), do: "X" <> reductio(rest)
  defp reductio(@ten_i), do: "X"
  defp reductio("IIIIIIIII"), do: "IX"
  defp reductio(<<@five_i, rest::binary>>), do: "V" <> reductio(rest)
  defp reductio(@five_i), do: "V"
  defp reductio("IIII"), do: "IV"
  defp reductio(letters), do: letters

  # convert to I's
  defp expandio("IV"),    do: String.duplicate("I", 4)
  defp expandio("V"),     do: @five_i
  defp expandio(<<"V", rest::binary>>), do: @five_i <> expandio(rest)
  defp expandio("IX"),    do: String.duplicate("I", 9)
  defp expandio("X"),    do: @ten_i
  defp expandio(<<"X", rest::binary>>), do: @ten_i <> expandio(rest)
  defp expandio(letters), do: letters
end


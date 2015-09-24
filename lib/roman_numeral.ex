defmodule RomanNumeral do
  def roman_sum(x, y) do
    xy = expandio(x) <> expandio(y)
    reductio(xy)
  end

  defp reductio("IIIIIIIIII"), do: "X"
  defp reductio("IIIIIIIII"), do: "IX"
  defp reductio(<<"IIIII", rest::binary>>), do: "V" <> rest
  defp reductio("IIIII"), do: "V"
  defp reductio("IIII"), do: "IV"
  defp reductio(letters), do: letters

  # convert to I's
  defp expandio("IV"),    do: String.duplicate("I", 4)
  defp expandio("V"),     do: String.duplicate("I", 5)
  defp expandio("IX"),    do: String.duplicate("I", 9)
  defp expandio(letters), do: letters
end


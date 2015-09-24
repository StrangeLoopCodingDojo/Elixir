defmodule RomanNumeral do
  def roman_sum(x, y) do
    xy = expandio(x) <> expandio(y)
    reductio(xy)
  end

  defp reductio("IIII"), do: "IV"
  defp reductio("IIIII"), do: "V"
  defp reductio("IIIIIIIII"), do: "IX"
  defp reductio("IIIIIIIIII"), do: "X"
  defp reductio(letters), do: letters

  # convert to I's
  defp expandio("IV"), do: "IIII"
  defp expandio("V"), do: "IIIII"
  defp expandio(letters) do
    letters
  end
end


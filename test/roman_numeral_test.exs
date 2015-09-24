defmodule RomanNumeralTest do
  use ExUnit.Case

  import RomanNumeral

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "I + I = II" do
    assert roman_sum("I", "I") == "II"
  end

  test "I + II = III" do
    assert roman_sum("I", "II") == "III"
  end

  test "II + III = V" do
    assert roman_sum("II", "III") == "V"
  end

  test "V + V = X" do
    assert roman_sum("V", "V") == "X"
  end

  test "I + III = IV" do
    assert roman_sum("I", "III") == "IV"
  end

  test "IV + V = IX" do
    assert roman_sum("IV", "V") == "IX"
  end

  test "V + IV = IX" do
    assert roman_sum("V", "IV") == "IX"
  end
end

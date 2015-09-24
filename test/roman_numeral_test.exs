defmodule RomanNumeralTest do
  use ExUnit.Case

  import RomanNumeral

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

  test "IX + I = X" do
    assert roman_sum("IX", "I") == "X"
  end

  test "III + III = VI" do
    assert roman_sum("III", "III") == "VI"
  end

  test "VI + II = VIII" do
    assert roman_sum("VI", "II") == "VIII"
  end

  test "IV + VI = X" do
    assert roman_sum("IV", "VI") == "X"
  end

  test "XIV" do
    assert roman_sum("X", "IV") == "XIV"
    assert roman_sum("IV", "X") == "XIV"
  end

  test "X + V = XV" do
    assert roman_sum("X", "V") == "XV"
  end

  test "XXX" do
    assert roman_sum("X", "XX") == "XXX"
    assert roman_sum("V", "XXV") == "XXX"
  end
end

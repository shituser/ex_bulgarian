defmodule ExBulgarianTest do

  use ExUnit.Case
  use ExBulgarian

  doctest ExBulgarian

  test "it transliterates words according to official transliteration rules" do
    assert transliterate("Aneliya") == "Анелия"
    assert transliterate("Zhivko") == "Живко"
    assert transliterate("Tsarevo") == "Царево"
    assert transliterate("Chepelare") == "Чепеларе"
    assert transliterate("Shturets") == "Щурец"
    assert transliterate("Шумен") == "Шумен"
    assert transliterate("Yuliya") == "Юлия"
    assert transliterate("Yambol") == "Ямбол"
    assert transliterate("Sofiya") == "София"
  end

  test "it transliterates words according to commonly used patterns" do
    assert transliterate("Warna") == "Варна"
    assert transliterate("Jivko") == "Живко"
    assert transliterate("Xaskowo") == "Хасково"
    assert transliterate("4epelare") == "чепеларе"
    assert transliterate("6umen") == "шумен"
    assert transliterate("6t1rkel") == "щъркел"
    assert transliterate("Carevo") == "Царево"
    assert transliterate("Veliko Tyrnovo") == "Велико Търново"
    assert transliterate("Weliko T1rnowo") == "Велико Търново"
    assert transliterate("Sofiq") == "София"
    assert transliterate("Jambol") == "Ямбол"
  end
end

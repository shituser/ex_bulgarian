defmodule ExBulgarian.Vocabulary do

  @lower_single %{
    "a" => "а",
    "b" => "б",
    "v" => "в",
    "w" => "в",
    "g" => "г",
    "d" => "д",
    "e" => "е",
    "j" => "ж",
    "z" => "з",
    "i" => "и",
    "k" => "к",
    "l" => "л",
    "m" => "м",
    "n" => "н",
    "o" => "о",
    "p" => "п",
    "r" => "р",
    "s" => "с",
    "t" => "т",
    "u" => "у",
    "f" => "ф",
    "h" => "х",
    "x" => "х",
    "c" => "ц",
    "4" => "ч",
    "6" => "ш",
    "y" => "ъ",
    "1" => "ъ",
    "q" => "я",
  }

  @lower_multi %{
    "zh"  => "ж",
    "ts"  => "ц",
    "ch"  => "ч",
    "sh"  => "ш",
    "sht" => "щ",
    "yu"  => "ю",
    "ya"  => "я",
    "ja"  => "я",
    "6t"  => "щ",
  }

  @uppper_single  %{
    "A" => "А",
    "B" => "Б",
    "V" => "В",
    "W" => "В",
    "G" => "Г",
    "D" => "Д",
    "E" => "Е",
    "J" => "Ж",
    "Z" => "З",
    "I" => "И",
    "K" => "К",
    "L" => "Л",
    "M" => "М",
    "N" => "Н",
    "O" => "О",
    "P" => "П",
    "R" => "Р",
    "S" => "С",
    "T" => "Т",
    "U" => "У",
    "F" => "Ф",
    "C" => "Ц",
    "H" => "Х",
    "X" => "Х",
    "Y" => "Ъ",
    "Q" => "Я",
  }

  @upper_multi %{
    "Zh"  => "Ж",
    "Ts"  => "Ц",
    "Ch"  => "Ч",
    "Sh"  => "Ш",
    "Sht" => "Щ",
    "Yu"  => "Ю",
    "Ya"  => "Я",
    "Ja"  => "Я",
  }

  @lower Map.merge(@lower_single, @lower_multi)
  @upper Map.merge(@uppper_single, @upper_multi)

  def lower, do: @lower

  def upper, do: @upper

  def multi_chars_regex do
    regex =
      Map.merge(@lower_multi, @upper_multi)
      |> Map.keys
      # Keep the Sht, before Sh, since Elixir orders maps by default
      |> Enum.reverse
      |> Enum.join("|")

  ~r/(#{regex}|\w|.)/um
  end
end

defmodule ExBulgarian do
  @moduledoc """
    Elixir transliteration for Bulgarian language. Converts latin characters into cyrillic, according to official and commonly used transliteration patterns in Bulgaria.

    Транслитерация на буквите от латиница на кирилица.

        iex> ExBulgarian.transliterate("Sofiya e stolitsata na Bylgariya")
        "София е столицата на България"

        iex> ExBulgarian.transliterate("Veliko T1rnowo e starata stolica na B1lgariq")
        "Велико Търново е старата столица на България"

    Transliteration entirely based on Anatoliy Kovalchuk's package
    https://github.com/Kr00lIX/russian_elixir/
  """

  defmacro __using__(_opts) do
    quote do
      import ExBulgarian
    end
  end

  @spec transliterate(String.t) :: String.t
  def transliterate(text) do
    ExBulgarian.Transliteration.transliterate(text)
  end
end

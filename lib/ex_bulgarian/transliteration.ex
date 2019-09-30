  defmodule ExBulgarian.Transliteration do

    import ExBulgarian.Vocabulary

    @doc """
      Transliteration of letters from latin to cyrrilic in Bulgarian

      Транслитерация на буквите от латиница на кирилица
    """
    @spec transliterate(String.t) :: String.t
    def transliterate(str) do
      trans_chars Regex.scan(multi_chars_regex(), str, capture: :first)
    end

    defp trans_chars([[nil]]) do
      ""
    end

    defp trans_chars([[char]]) do
      trans_chars [[char], [nil]]
    end

    defp trans_chars([ [char] | tail ]) do
      result =
        cond do
          Map.has_key?(upper(), char) ->
            upper()[char]
          Map.has_key?(lower(), char) ->
            lower()[char]
          true ->
            char
        end
      result <> trans_chars(tail)
    end
  end

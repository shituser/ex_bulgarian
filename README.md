# ExBulgarian

Elixir transliteration for Bulgarian language. Converts latin characters into cyrillic, according to official and commonly used transliteration patterns in Bulgaria.

## Installation

Add the dependency to your mix.exs file:
```elixir
def deps do
  [
    {:ex_bulgarian, "~> 0.1.1"}
  ]
end
```
## Usage
```elixir
ExBulgarian.transliterate "Sofiya e stolitsata na Bylgariya"
```
OR
```elixir
defmodule ExampleModule do
  use ExBulgarian

  def example do
    transliterate "Sofiya"
  end
end
```

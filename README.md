# ExBulgarian

Elixir transliteration for Bulgarian language. Converts latin characters into cyrillic, according to official and commonly used transliteration patterns in Bulgaria.

## Installation

Add the dependency to your mix.exs file:
```elixir
def deps do
  [
    {:ex_bulgarian, "~> 0.1.0"}
  ]
end
```

## Usage
```elixir
ExBulgarian.transliterate "Sofiya e stolitsata na Bylgariya"
```
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_bulgarian](https://hexdocs.pm/ex_bulgarian).


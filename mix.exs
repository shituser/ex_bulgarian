defmodule ExBulgarian.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_bulgarian,
      description: "Elixir transliteration for Bulgarian language. Converts latin characters into cyrillic, according to official and commonly used transliteration patterns in Bulgaria.",
      package: package(),
      version: "0.1.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/shituser/ex_bulgarian"}
    ]
  end
end

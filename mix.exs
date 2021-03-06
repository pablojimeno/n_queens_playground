defmodule NQueensPlayground.Mixfile do
  use Mix.Project

  def project do
    [app: :n_queens_playground,
     name: "N-Queens Playground",
     version: "0.0.1",
     elixir: "~> 1.3-rc",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     docs: [
       extras: ["README.md"]
     ]
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:dialyxir, "~> 0.3.3", only: [:dev, :test]},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end

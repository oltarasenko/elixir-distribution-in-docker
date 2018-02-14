defmodule Exsample.MixProject do
  use Mix.Project

  def project do
    [
      app: :exsample,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Exsample, []},
      extra_applications: [:logger, :epmdless, :erlang_node_discovery]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:epmdless, git: "https://github.com/oltarasenko/epmdless.git", tag: "0.1.0"},
      {:erlang_node_discovery, git: "https://github.com/oltarasenko/erlang-node-discovery.git", tag: "0.1.2"}
    ]
  end
end

defmodule HelloScenicFull.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_scenic_full,
      version: "0.1.0",
      elixir: "~> 1.9",
      build_embedded: true,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {HelloScenicFull, []},
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scenic, "~> 0.11.0"},
      # {:scenic, path: "~/dev/forks/scenic", override: true},
      # {:scenic_driver_local, "~> 0.11.0"},
      # {:scenic_driver_local, path: "~/dev/forks/scenic_driver_local", override: true},
      {:scenic_driver_local, github: "ScenicFramework/scenic_driver_local", branch: "main", override: true},
      {:scenic_clock, "~> 0.11.0"}
    ]
  end
end

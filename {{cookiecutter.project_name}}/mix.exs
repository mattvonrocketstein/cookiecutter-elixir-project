defmodule {{cookiecutter.module_name}}.Mixfile do
  use Mix.Project

  def project do
    [app: {{cookiecutter.app_name}},
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [
       tool: Coverex.Task,
       console_log: true],
      deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [
      :logger
      ],
     mod: {
       {{cookiecutter.module_name}}, []
       }
    ]
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
      # a linter for elixir code
      {:dogma, "~> 0.1", only: :dev},

      # NB: 0.1.4 is available on github but not hex currently
      {:mock, "~> 0.1.4", git: "https://github.com/jjh42/mock.git"},

      # a static analysis tool
      {:dialyxir, "~> 0.3", only: [:dev]},

      # coverage tool for tests
      # https://github.com/alfert/coverex
      {:coverex, "~> 1.4.9", only: :test},
    ]
  end
end

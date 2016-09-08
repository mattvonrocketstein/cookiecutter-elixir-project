# {{cookiecutter.project_name}}

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `{{cookiecutter.project_name}}` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:{{cookiecutter.project_name}}, "~> 0.1.0"}]
    end
    ```

  2. Ensure `project_slug` is started before your application:

    ```elixir
    def application do
      [applications: [{{cookiecutter.app_name}}]]
    end
    ```

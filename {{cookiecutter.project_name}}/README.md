# {{cookiecutter.project_name}}

## Prerequisites
Installing elixir: [see instructions here](http://elixir-lang.org/install.html#unix-and-unix-like)

## Installation

### As a library

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `{{cookiecutter.project_name}}` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:{{cookiecutter.project_name}}, "~> 0.1.0"}]
    end
    ```

  2. Ensure `{{cookiecutter.project_name}}` is started before your application:

    ```elixir
    def application do
      [applications: [{{cookiecutter.app_name}}]]
    end
    ```

### For developers

**Clone this repository and enter source root**

    $ git clone git@github.com:{{cookiecutter.github_username}}/{{cookiecutter.project_slug}}.git {{cookiecutter.project_dir_name}}
    $ cd {{cookiecutter.project_dir_name}}

**Install Elixir project dependencies**

    $ mix deps.get

## Mix commands

### Run tests

    $ mix test --cover

### Creating a commandline script

    $ mix escript.build
    $ ./{{cookiecutter.project_slug}} [args]

### Run linter

    $ mix dogma

### Run static analysis

The first time you have to build the [persistent lookup table](https://github.com/jeremyjh/dialyxir#plt), which takes a while.

    $ mix dialyzer.plt

Thereafter, just run

    $ mix dialyzer

## Installing project pre-commit hooks

    $ cd {{cookiecutter.project_dir_name}}
    $ sudo pip install pre-commit
    $ pre-commit install

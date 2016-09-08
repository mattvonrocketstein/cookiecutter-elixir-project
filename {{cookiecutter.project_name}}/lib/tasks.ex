defmodule Mix.Tasks.{{cookiecutter.mix_task_name}} do
  @moduledoc """
  """

  use Mix.Task

  @doc """
  """
  def run(anything) do
    Mix.Tasks.App.Start.run([])
    main(anything)
  end

  @doc """
  """
  def main([]) do
    IO.puts("No arguments given!")
  end

  @doc """
  """
  def main([fname]) do
    IO.puts("Given a filename #{fname}")
  end
end

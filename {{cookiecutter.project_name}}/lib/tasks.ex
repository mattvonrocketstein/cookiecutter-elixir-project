defmodule Mix.Tasks.{{cookiecutter.mix_task_name}} do
  use Mix.Task

  def run(anything) do
    Mix.Tasks.App.Start.run([])
    main(anything)
  end

  def main([]) do
    IO.puts("No arguments given!")
  end

  def main([fname]) do
    IO.puts("Given a filename #{fname}")
  end
end

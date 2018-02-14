defmodule Exsample do
  use Application

  def start(_type, _args) do
    Supervisor.start_link([{Exsample.Worker, []}], strategy: :one_for_one)
  end
end

defmodule Exsample.Worker do
  use GenServer

  def start_link([]) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init([]) do
    Process.send_after(self(), :discovered_nodes, 1000)
    {:ok, %{}}
  end

  def handle_info(:discovered_nodes, state) do
    IO.puts "I know these nodes: #{inspect Node.list()}"
    Process.send_after(self(), :discovered_nodes, 1000)
    {:noreply, state}
  end
end
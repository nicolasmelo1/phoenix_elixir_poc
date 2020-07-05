defmodule PhoenixTestWeb.PageController do
  use PhoenixTestWeb, :controller

  def index(conn, _params) do
    IO.puts "passou aqui"
    render(conn, "index.html")
  end
end

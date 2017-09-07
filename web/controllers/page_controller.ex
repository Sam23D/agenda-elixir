defmodule AgentaElixir.PageController do
  use AgentaElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

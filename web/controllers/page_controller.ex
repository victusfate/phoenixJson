defmodule PhoenixJson.PageController do
  use PhoenixJson.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule MoriawaseWeb.PageController do
  use MoriawaseWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule ScWeb.PageController do
  use ScWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

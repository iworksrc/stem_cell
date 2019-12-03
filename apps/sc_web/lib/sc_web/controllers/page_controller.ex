defmodule ScWeb.PageController do
  use ScWeb, :controller

  def index(conn, _params) do

    items = ScModels.list_items();

    render(conn, "index.html", items: items, ass: "список игр")
  end
end

defmodule ScWeb.ItemController do
  use ScWeb, :controller

  def index(conn, _params) do

#    items = ScModels.list_items();

#    render(conn, "index.html", items: items, ass: "список игр")
    render(conn, "", 'sam medved')
  end

  def show(conn, %{"id" => id}) do
    render('prived medved')
  end
end

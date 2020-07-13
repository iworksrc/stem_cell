defmodule ScWeb.Api.ItemController do
  use ScWeb, :controller

  def index(conn, _params) do
    items = ScModels.list_items();
    render conn, "index.json", items: items
  end

  def show(conn, %{"id" => id}) do
#    IO.puts "id is: "
#    Integer.parse id
    item = ScModels.get_item( String.to_integer id)
    render conn, "show.json", item: item
  end
end

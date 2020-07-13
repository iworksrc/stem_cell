defmodule ScWeb.Api.ItemView do
  use ScWeb, :view

#  def render("show.json", %{item: item}) do
#    %{data: render_one(item, __MODULE__, "item.json")}
#  end
#
#  def render("index.json", %{item: item}) do
#    %{data: render_many(item, __MODULE__, "item.json")}
#  end

  def render("index.json", %{items: items}) do
    %{data: items}
  end

  def render("show.json", %{item: item}) do
#    %{
#      data: %{
#        type: "item",
#        id: item.id,
#        title: item.title,
#        description: item.description,
#        ends_at: item.ends_at
#      }
#    }
      item
  end
end

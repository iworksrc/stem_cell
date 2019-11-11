defmodule ScModels do
  @moduledoc """
  Documentation for ScModels.
  """

  alias ScModels.{FakeRepo, Item}

  @repo FakeRepo

  @doc """
  get all items
  """
  def list_items do
    @repo.all(Item)
  end

  @doc """
  get item by id
  """
  def get_item(id) do
    @repo.get!(Item, id)
  end

  @doc """
  get item by attributes
  """

  def get_item_by(attrs) do
    @repo.get_by(Item, attrs)
  end

  @doc """
  Structure for represent item entity
  """
  defmodule Item do
    defstruct id: 0,
              title: "default title",
              description: "default description",
              ends_at: ~N[2020-12-31 23:59:59]
  end
end

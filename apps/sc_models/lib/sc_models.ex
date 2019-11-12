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

end

defmodule ScModels.Item do
  @moduledoc """
  Structure for represent item entity
  """

    defstruct id: 0,
              title: "default title",
              description: "default description",
              ends_at: ~N[2020-12-31 23:59:59]
end

defmodule ScModels.FakeRepo do
  @moduledoc """
  Mock repository for debug
  """
  alias ScModels.Item

  @items [
    %Item{
      id: 1,
      title: "my item",
      description: "A tasty item sure to please",
      ends_at: ~N[2020-01-01 00:00:00]
    },
    %Item{
      id: 2,
      title: "WarGames Bluray",
      description: "The best computer movie of all time, now on Bluray!",
      ends_at: ~N[2018-10-15 13:39:35]
    },
    %Item{
      id: 3,
      title: "U2 - Achtung Baby on CD",
      description: "The sound of 4 men chopping down The Joshua Tree",
      ends_at: ~N[2018-11-05 03:12:29]
    }
  ]

  def all(Item), do: @items

  def get!(Item, id) do
    Enum.find(@items, fn(item) -> item.id === id end)
  end

  def get_by(Item, attrs) do
    Enum.find(@items, fn(item) ->
      Enum.all?(Map.keys(attrs), fn(key) ->
        Map.get(item, key) === attrs[key]
      end)
    end)
  end

end

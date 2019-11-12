defmodule ScModels.Item do
  @moduledoc """
  Structure for represent item entity
  """
  defstruct [:id, :title, :description, :ends_at]
#  defstruct id: 0,
#            title: "default title",
#            description: "default description",
#            ends_at: ~N[2020-12-31 23:59:59]
end

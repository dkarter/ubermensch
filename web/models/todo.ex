defmodule Ubermensch.Todo do
  use Ubermensch.Web, :model

  schema "todos" do
    field :title
    field :notes
    field :due_date
    field :start_date

    timestamps()
  end
end

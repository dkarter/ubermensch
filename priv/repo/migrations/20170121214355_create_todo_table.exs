defmodule Ubermensch.Repo.Migrations.CreateTodoTable do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string, null: false
      add :due_date, :utc_datetime
      add :start_date, :utc_datetime
      add :notes, :string

      add :created_at, :timestamptz, null: false, default: fragment("now()")
      add :updated_at, :timestamptz, null: false, default: fragment("now()")
    end
  end
end

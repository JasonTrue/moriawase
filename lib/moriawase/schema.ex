defmodule Moriawase.Schema do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:id, :binary_id, autogenerate: true} # UUID by default
      @foreign_key_type :binary_id # UUID by default
      @timestamps_opts [type: :utc_datetime]
      end
   end
end
defmodule Moriawase.Factory do
  use ExMachina.Ecto, repo: Moriawase.Repo

  def member_factory do
    Moriawase.Member
  end
end
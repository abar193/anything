defmodule Anything.HowLongFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Anything.HowLong` context.
  """

  @doc """
  Generate a day.
  """
  def day_fixture(attrs \\ %{}) do
    {:ok, day} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Anything.HowLong.create_day()

    day
  end
end

defmodule AnythingWeb.YearController do
  use AnythingWeb, :controller

  @subtitles [
    "Feeling old yet?",
    "You ok in there?",
    "Need time processing?",
    "How are you?",
    "Yep, I thought that too!"
  ]

  @far_apart [
    "I have no idea how to comment this",
    "Which is strange?",
    "Ok...",
    "Not that it is of any use for us?"
  ]

  def index(conn, _params) do
    n = (:rand.uniform(90) + 10) * 365
    t = Date.utc_today()

    conn
    |> assign(:now, to_year(t))
    |> assign(:page_title, "What year?!")
    |> assign(:future, Date.utc_today() |> Date.add(n) |> to_year())
    |> assign(:past, Date.utc_today() |> Date.add(-n) |> to_year())
    |> assign(:sub, Enum.random(@subtitles))
    |> render(:index)
  end

  def for_year(conn, %{"year" => year}) do
    t = Date.utc_today()

    conn
    |> assign(:now, to_year(t))
    |> assign(:future, Date.utc_today() |> Date.add(year) |> to_year())
    |> assign(:past, Date.utc_today() |> Date.add(-year) |> to_year())
    |> assign(:sub, Enum.random(@subtitles))
    |> render(:index)
  end

  defp to_year(d), do: d |> Date.to_erl() |> elem(0) |> format()

  defp format(n) when n < 0, do: "#{-n} BC"
  defp format(0), do: "0"
  defp format(n), do: n
end

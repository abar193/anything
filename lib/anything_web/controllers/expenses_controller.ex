defmodule AnythingWeb.ExpensesController do
  use AnythingWeb, :controller

  def index(conn, _params) do
    conn
    |> assign(:form, expenses_form())
    |> assign(:name, "name")
    |> render(:index)
  end

  defp expenses_form(), do: %{:email => "a@s.d", :username => "aaa"}
end

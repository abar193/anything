defmodule AnythingWeb.Router do
  use AnythingWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {AnythingWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug AnythingWeb.Plugs.Locale, "en"
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AnythingWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  scope "/anything", AnythingWeb do
    pipe_through :browser

    get "/", PageController, :home

    get "/year", YearController, :index
    get "/year/:year", YearController, :for_year

    resources "/expenses", ExpensesController
    # resources "/posts", PostController, only: [:index, :show]
  end

  scope "/admin", AnythingWeb.Admin do
    pipe_through :browser

    # resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", AnythingWeb do
  #   pipe_through :api
  # end
  # mix phx.routes

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:anything, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: AnythingWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end

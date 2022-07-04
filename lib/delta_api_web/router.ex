defmodule DeltaApiWeb.Router do
  use DeltaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DeltaApiWeb do
    pipe_through :api

    # get "/abc", AbcController, :get_abc
    # post "/delta", DeltaController, :calc
    post "/eq2g", DeltaController, :post

    get "/eq2g", DeltaController, :get
    get "/eq2g/:id", DeltaController, :get_id
    get "/eq2g/:id/delta", DeltaController, :delta
    get "/eq2g/:id/x1", DeltaController, :x1
    get "/eq2g/:id/x2", DeltaController, :x2

    delete "/eq2g", DeltaController, :delete
    delete "/eq2g/:id", DeltaController, :delete_id

    put "/eq2g/:id", DeltaController, :put
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]

      live_dashboard "/dashboard", metrics: DeltaApiWeb.Telemetry
    end
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end

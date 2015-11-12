defmodule PhoenixJson.Router do
  use PhoenixJson.Web, :router

  alias PhoenixJson.ContactController

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixJson do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  resources "/api/contacts", ContactController, except: [:new, :edit]

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixJson do
  #   pipe_through :api
  # end
end

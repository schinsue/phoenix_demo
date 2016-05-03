defmodule BaseApp.Router do
  use BaseApp.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", BaseApp do
    pipe_through :browser # Use the default browser stack

    get "*path", PageController, :index
  end
end

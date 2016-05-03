defmodule BaseApp.PageController do
  use BaseApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule Ubermensch.PageController do
  use Ubermensch.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule BlogGuardWeb.PageController do
  use BlogGuardWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

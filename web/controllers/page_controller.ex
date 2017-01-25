defmodule Trace.PageController do
  use Trace.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

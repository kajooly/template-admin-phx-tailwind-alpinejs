defmodule KajoolyTemplateTailwindWeb.LayoutsLive.Special do
  use KajoolyTemplateTailwindWeb, :live_view

  import  KajoolyTemplateTailwindWeb.GenericLive.Breadcrum
  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  import KajoolyTemplateTailwindWeb.GenericLive.Badges

  import KajoolyTemplateTailwindWeb.LayoutsLive.FakeDb

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, list: list())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Special")
    #|> put_flash(:info, "Alerta de información ")
    #|> put_flash(:error, "Alerta de Error 404")
    #|> put_flash(:warning, "Alerta de Aviso ")
    #|> put_flash(:success, "Alerta de Éxito ")
  end

end

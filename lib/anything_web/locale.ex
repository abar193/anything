defmodule AnythingWeb.Plugs.Locale do
	import Plug.Conn

	@locales ["en", "ru", "de"]

	def init(default), do: default

	def call(%Plug.Conn{params: %{"locale" => locale}} = conn, _de) 
	when locale in @locales do
		assign(conn, :locale, locale)
	end

	def call(conn, default) do
		assign(conn, :locale, default)
	end
end
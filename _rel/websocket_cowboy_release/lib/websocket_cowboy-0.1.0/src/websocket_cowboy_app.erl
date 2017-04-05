-module(websocket_cowboy_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	Dispatch = cowboy_router:compile([
		{'_', [
			{"/[...]", cowboy_static, {priv_file, websocket_cowboy, "cowboy.jpg",
			[
               			{mimetypes, cow_mimetypes, all}
             ]
		}}	%{"/", web_socket, []}
		]}
	]),
	{ok, _} = cowboy:start_http(http, 100, [{port, 8080}], 
	[
		{compress, true},
		{env, [{dispatch, Dispatch}]}
		
		
	]),
	io:format("hi"),
	websocket_cowboy_sup:start_link().

stop(_State) ->
ok.

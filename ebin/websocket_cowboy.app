{application, 'websocket_cowboy', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['web_socket','websocket_cowboy_app','websocket_cowboy_sup']},
	{registered, [websocket_cowboy_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {websocket_cowboy_app, []}},
	{env, []}
]}.
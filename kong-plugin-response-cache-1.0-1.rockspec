-- Luarocks rockspec details
package = "kong-plugin-response-cache"
version = "1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
	url = "http://github.com/wshirey/kong-plugin-response-cache"
}
description = {
	summary = "A Kong plugin that will cache responses in redis",
	license = "MIT"
}
local pluginName = "response-cache"
dependencies = {
	"lua ~> 5.1"
}
build = {
	type = "builtin",
	modules = {
		["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
		["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
	}
}
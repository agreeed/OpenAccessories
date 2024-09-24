local private = {}
local LunarInstanceTree = loadstring(game:HttpGet("https://raw.githubusercontent.com/agreeed/Lunar/refs/heads/main/LunarInstanceTree.lua"))()

local function new(class, t)
	local ins = Instance.new(class)
	for i, v in t do
		ins[i] = v
	end
	return ins
end

private.AccessoryStorage = {
	["infyld"] = function()
		local ins = new("ParticleEmitter", {Enabled = true})
		return ins
	end
}

local public = {}

public.Validate = function(AccessoryName)
	-- Converted to boolean
	return not not private.AccessoryStorage[AccessoryName]
end

public.Accessory = function(AccessoryName)
	assert(type(AccessoryName) == "string", `Invalid argument #1 (expected string got {type(AccessoryName)})`)
	return (function(t, s) return {Name = s, Encoded = t[s]} end)(private.AccessoryStorage, AccessoryName)
end

public.Decode = function(Accessory)
	assert(type(Accessory) == "table", `Invalid argument #1 (expected OpenAcsAccessory got {type(Accessory)})`)
	assert(public.Validate(Accessory.Name), `Invalid argument #1 (expected OpenAcsAccessory got {type(Accessory)})`)

	return public.Accessory()
end

return public

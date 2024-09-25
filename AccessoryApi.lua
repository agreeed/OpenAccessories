local private = {}

local function new(class, t)
	local ins = Instance.new(class)
	for i, v in t do
		ins[i] = v
	end
	return ins
end

private.AccessoryStorage = loadstring(game:HttpGet("https://github.com/agreeed/OpenAccessories/raw/refs/heads/main/Accessories.lua"))()
private.Sanitize = function(s) return s:sub(0, 6) end

local public = {}

public.Validate = function(AccessoryName)
	-- Converted to boolean
	return not not private.AccessoryStorage[AccessoryName]
end

public.Accessory = function(AccessoryName)
	assert(type(AccessoryName) == "string", `Invalid argument #1 (expected string got {type(AccessoryName)})`)
	return (function(t, s) return {Name = private.Sanitize(s), Encoded = t[private.Sanitize(s)]} end)(private.AccessoryStorage, AccessoryName)
end

public.Decode = function(Accessory, Parent)
	assert(type(Accessory) == "table", `Invalid argument #1 (expected OpenAcsAccessory got {type(Accessory)})`)
	assert(public.Validate(private.Sanitize(Accessory.Name)), `Invalid argument #1 (expected OpenAcsAccessory got {type(Accessory)})`)

	return Accessory.Encoded(Parent)
end

return public
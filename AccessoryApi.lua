local private = {}

local function new(class, t)
	local ins = Instance.new(class)
	for i, v in t do
		ins[i] = v
	end
	return ins
end

private.AccessoryStorage = {
	["infyld"] = function(parent)
		local ins = new("Attachment", {Parent = parent, Name = "MIDDLE"})
		local CIRCLE = new("ParticleEmitter", {Parent = ins, Enabled = true, Name = "CIRCLE", Brightness = 1, LightEmission = 1, LightInfluence = 0, Orientation = Enum.ParticleOrientation.VelocityPerpendicular, Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.375, 3, 1), NumberSequenceKeypoint.new(1, 4, 1)}), Texture = "rbxassetid://8383677680", Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0.75, 0), NumberSequenceKeypoint.new(1, 1, 0), ZOffset = -1, LifeTime = NumberRange.new(0.5, 1), Rate = 5, Speed = NumberRange.new(0.001), SpreadAngle = NumberRange.new(-360, 360)})
		
		return ins
	end
}
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

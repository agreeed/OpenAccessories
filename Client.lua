local args = table.unpack
local char = string.char
local byte = string.byte
local Players = game:GetService('Players')

--[[

=== ABOUT SOME USE OF FUNCTIONS ===

- rawlen(), rawget(), rawset(), rawequal()
Length operator has a potential security risk - It may execute code inside the function with a __len metamethod.
rawlen, rawget etc. functions fix it, by bypassing any metamethods and directly doing what it's supposed to.


=== ACRONYMS ===

RM	- Replication Method, method being used to replicate the data between clients
	  RM being used in this script uses BasePart's RootPriority
TI	- Tiny Int, the data type used in RM
BV	- Byte Values, array of bytes, or data types used in RM
BVN	- Byte Values Number, a unique number representing a BV

]]

local BV_MAX_VALUE = 256 -- Editing this may cause unexpected behavior of RM

local function DoRM(part, val)
	if not val then
		return part.RootPriority
	else
		part.RootPriority = val
	end
end

local function encodeToBV(str)
	assert(type(str) == "string", `Invalid argument #1 (Expected string got {type(str)})`)
	return {string.byte(str, 0, rawlen(str))}
end

local function decodeFromBV(bytes)
	assert(type(bytes) == "table", `Invalid argument #1 (Expected table got {type(bytes)})`)
	return string.char(args(bytes))
end

local function stringToBVN(str, signed)
	local bv = encodeToBV(str)
	local sum = 0
	
	for i, v in bv do
		if signed then
			bv[i] = v % (BV_MAX_VALUE / 2)
		end
		
		sum += v * (BV_MAX_VALUE ^ i)
	end
	
	return sum
end

local function characterToEncArray(character)
	assert(typeof(character) == "Instance", `Invalid argument #1 (expected Instance got {type(character)})`)
	
	local encArr = {}
	local bpp = 0
	
	for i, v in character:GetChildren() do
		if not v:IsA("BasePart") then continue end
		
		if v.Name ~= "HumanoidRootPart" then
			encArr[stringToBVN(v.Name, true)] = DoRM(v)
		end
		
		bpp += 1
	end
	assert(bpp == 0 or bpp > 6, "Character has less than 6 baseparts and is not voided")
	
	local itmed = {}
	for i, v in encArr do
		table.insert(itmed, i)
	end
	table.sort(itmed)
	
	local arr = {}
	for i, v in itmed do
		arr[i] = encArr[v]
	end
	return arr
end

local function isNullArray(arr)
	for i, v in arr do
		if v ~= 0 then return false end
	end
	return true
end

local function characterApplyString(character, str)
	assert(typeof(character) == "Instance", `Invalid argument #1 (expected Instance got {type(character)})`)
	
	-- Count before doing anything!
	local bpp = 0
	for i, v in character:GetChildren() do
		if not v:IsA("BasePart") then continue end
		bpp += 1
	end
	assert(bpp == 0 or bpp > 6, "Character has less than 6 baseparts and is not voided")
	
	-- Now it's safe i think
	local encArr = {}

	for i, v in character:GetChildren() do
		if not v:IsA("BasePart") then continue end

		if v.Name ~= "HumanoidRootPart" then
			encArr[stringToBVN(v.Name, true)] = v
		end

		bpp += 1
	end
	assert(bpp == 0 or bpp > 6, "Character has less than 6 baseparts and is not voided")

	local itmed = {}
	for i, v in encArr do
		table.insert(itmed, i)
	end
	table.sort(itmed)
	
	local arr = {}
	for i, v in itmed do
		arr[i] = encArr[v]
	end
	
	local encoded = encodeToBV(str)
	local i = 0
	for _, v in arr do i += 1
		DoRM(v, encoded[i])
	end
	
	DoRM(character.HumanoidRootPart, 127)
end

local function applyAccessory(character, accessory)
	if not AcsAPI.Validate(accessory) then
		return
	end
	
	local acsins = AcsAPI.Decode(accessory)
	acsins.Parent = character
	acsins:AddTag("OpenAcs_Instance")
	acsins:SetAttribute("OpenAcs_ID", accessory.ID)
	
	return acsins
end


local ptb = {}

task.delay(10, function()
	characterApplyString(Players.LocalPlayer.Character, "asdasd")
end)

while task.wait(1) do
	for i, v in Players:GetPlayers() do
		if not v.Character then continue end
		if isNullArray(characterToEncArray(v.Character)) then continue end
		
		ptb[v] = decodeFromBV(characterToEncArray(v.Character))
	end
	
	local sl = {}
	for i, v in ptb do
		if Players:FindFirstChild(i.Name) then
			sl[i] = v
		end
	end
	ptb = sl
	
	local ins = game:GetService('CollectionService'):GetTagged("OpenAcs_Instance")
	
	for i, v in ins do
		if not Players:GetPlayerFromCharacter(v.Parent) then
			v:RemoveTag("OpenAcs_Instance")
			v:Destroy()
		end
		
		local pBV = ptb[Players:GetPlayerFromCharacter(v.Parent)]
		
		if v:GetAttribute("OpenAcs_ID") ~= pBV then
			v:RemoveTag("OpenAcs_Instance")
			v:Destroy()
			
			applyAccessory(v.Parent, AcsAPI.Accessories[pBV])
		end
	end
	
	for i, v in ptb do
		local present = false
		for _, inp in ins do
			local plr = Players:GetPlayerFromCharacter(inp.Parent)
			if i == plr then present = true break end
		end
		
		if not present and i.Character then
			applyAccessory(i.Character, AcsAPI.Accessories[v])
		end
	end
end

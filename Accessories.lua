return {
	["coolst"] = function(parent)
		local MIDDLE = Instance.new("Attachment")
		MIDDLE.Parent = parent
		MIDDLE.Name = "MIDDLE"
		MIDDLE:AddTag("OpenAcs_Instance")
		MIDDLE:SetAttribute("OpenAcs_ID", "coolst")

		local Aura = Instance.new("ParticleEmitter")
		Aura.Parent = MIDDLE
		Aura.ZOffset = -1
		Aura.Rotation = NumberRange.new(-360, 360)
		Aura.LightInfluence = 0
		Aura.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0.5, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		Aura.Name = "Aura"
		Aura.Lifetime = NumberRange.new(1, 1)
		Aura.Speed = NumberRange.new(0, 0)
		Aura.Rate = 15
		Aura.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.375, 3, 1), NumberSequenceKeypoint.new(1, 4, 1)})
		Aura.Texture = "rbxassetid://7016047535"

		local Layer2Aura = Instance.new("ParticleEmitter")
		Layer2Aura.Parent = MIDDLE
		Layer2Aura.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5778546929359436, Color3.new(0.176, 0.176, 0.176)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))})
		Layer2Aura.ZOffset = -1.5
		Layer2Aura.Rotation = NumberRange.new(-360, 360)
		Layer2Aura.LightInfluence = 0
		Layer2Aura.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0.800000011920929, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		Layer2Aura.Name = "Layer2Aura"
		Layer2Aura.Lifetime = NumberRange.new(0.5, 1)
		Layer2Aura.Speed = NumberRange.new(0, 0)
		Layer2Aura.Rate = 15
		Layer2Aura.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.375, 5, 1), NumberSequenceKeypoint.new(1, 7, 1)})
		Layer2Aura.Texture = "rbxassetid://7016047535"

		local Lines = Instance.new("Attachment")
		Lines.Parent = parent
		Lines.Name = "Lines"
		Lines.CFrame = CFrame.new(0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08, 0, 0, 0, 1)
		Lines:AddTag("OpenAcs_Instance")
		Lines:SetAttribute("OpenAcs_ID", "coolst")

		local Line = Instance.new("ParticleEmitter")
		Line.Parent = Lines
		Line.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
		Line.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.6349481344223022, Color3.new(0.965, 0.965, 0.965)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))})
		Line.Drag = 1
		Line.Rate = 4
		Line.SpreadAngle = Vector2.new(360, 0)
		Line.LightInfluence = 0
		Line.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.4000000059604645, 1, 0), NumberSequenceKeypoint.new(0.75, 0.5, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		Line.Name = "ParticleEmitter"
		Line.Lifetime = NumberRange.new(5, 5)
		Line.Speed = NumberRange.new(4, 4)
		Line.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0, 6, 0), NumberSequenceKeypoint.new(0.699999988079071, 7, 1), NumberSequenceKeypoint.new(1, 30, 0)})
		Line.LockedToPart = true
		Line.Texture = "rbxassetid://5168609593"

		local Crown = Instance.new("Attachment")
		Crown.Parent = nil -- This is the initial element, please change this to an instance
		Crown.Name = "Crown"
		Crown.CFrame = CFrame.new(0, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local ParticleEmitter = Instance.new("ParticleEmitter")
		ParticleEmitter.Parent = Crown
		ParticleEmitter.RotSpeed = NumberRange.new(-360, 360)
		ParticleEmitter.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))})
		ParticleEmitter.LockedToPart = true
		ParticleEmitter.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
		ParticleEmitter.LightInfluence = 0
		ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		ParticleEmitter.Name = "ParticleEmitter"
		ParticleEmitter.Lifetime = NumberRange.new(1, 1)
		ParticleEmitter.Speed = NumberRange.new(0.20000000298023224, 0.20000000298023224)
		ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.5136613845825195, 0), NumberSequenceKeypoint.new(1, 0.7103830575942993, 0)})
		ParticleEmitter.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
		ParticleEmitter.Texture = "rbxassetid://14101024770"

		return Crown
	end,

	["infyld"] = function(parent)
		local MIDDLE = Instance.new("Attachment")
		MIDDLE.Parent = nil -- This is the initial element, please change this to an instance
		MIDDLE.Name = "MIDDLE"

		local CIRCLE = Instance.new("ParticleEmitter")
		CIRCLE.Parent = MIDDLE
		CIRCLE.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
		CIRCLE.SpreadAngle = Vector2.new(-360, 360)
		CIRCLE.ZOffset = -1
		CIRCLE.Rate = 5
		CIRCLE.LightInfluence = 0
		CIRCLE.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0.75, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		CIRCLE.Name = "CIRCLE"
		CIRCLE.Lifetime = NumberRange.new(0.5, 1)
		CIRCLE.Speed = NumberRange.new(0.0010000000474974513, 0.0010000000474974513)
		CIRCLE.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.375, 3, 1), NumberSequenceKeypoint.new(1, 4, 1)})
		CIRCLE.LightEmission = 1
		CIRCLE.Texture = "rbxassetid://838367768"

		local HIT = Instance.new("ParticleEmitter")
		HIT.Parent = MIDDLE
		HIT.Rotation = NumberRange.new(-360, 360)
		HIT.ZOffset = -1
		HIT.Rate = 5
		HIT.LightInfluence = 0
		HIT.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0.5, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		HIT.Name = "HIT"
		HIT.Lifetime = NumberRange.new(0.25, 0.5)
		HIT.Speed = NumberRange.new(0, 0)
		HIT.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.375, 3, 1), NumberSequenceKeypoint.new(1, 4, 1)})
		HIT.LightEmission = 1
		HIT.Texture = "rbxassetid://7016047535"

		return MIDDLE
	end,

	["blckhl"] = function(parent)
		local MIDDLE = Instance.new("Attachment")
		MIDDLE.Parent = parent
		MIDDLE.Name = "MIDDLE"
		MIDDLE.CFrame = CFrame.new(0, 3, 4, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		local CORE = Instance.new("ParticleEmitter")
		CORE.Parent = MIDDLE
		CORE.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5, 0), NumberSequenceKeypoint.new(1, 5, 0)})
		CORE.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.100, 0, 0), NumberSequenceKeypoint.new(0.899, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		CORE.Name = "CORE"
		CORE.Lifetime = NumberRange.new(0.5, 1)
		CORE.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))})
		CORE.LockedToPart = true
		CORE.Speed = NumberRange.new(0, 0)
		CORE.Texture = "rbxassetid://4509687978"

		local OUTER_RING = Instance.new("ParticleEmitter")
		OUTER_RING.Parent = MIDDLE
		OUTER_RING.RotSpeed = NumberRange.new(-180, -180)
		OUTER_RING.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.376, 0.090)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.376, 0.090))})
		OUTER_RING.Rotation = NumberRange.new(-360, 360)
		OUTER_RING.ZOffset = -0.10
		OUTER_RING.Rate = 25
		OUTER_RING.LightInfluence = 0
		OUTER_RING.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0.899, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		OUTER_RING.Name = "OUTER RING"
		OUTER_RING.Lifetime = NumberRange.new(1, 2)
		OUTER_RING.LightEmission = 1
		OUTER_RING.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 10, 1), NumberSequenceKeypoint.new(0.249, 11.95, 1), NumberSequenceKeypoint.new(1, 12, 1)})
		OUTER_RING.Speed = NumberRange.new(0, 0)
		OUTER_RING.Texture = "rbxassetid://5726444189"

		local CORE_RING = Instance.new("ParticleEmitter")
		CORE_RING.Parent = MIDDLE
		CORE_RING.RotSpeed = NumberRange.new(-180, -180)
		CORE_RING.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.376, 0.090)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.376, 0.090))})
		CORE_RING.Rotation = NumberRange.new(-360, 360)
		CORE_RING.ZOffset = -0.10
		CORE_RING.Rate = 25
		CORE_RING.LightInfluence = 0
		CORE_RING.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0.5, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		CORE_RING.Name = "CORE RING"
		CORE_RING.Lifetime = NumberRange.new(1, 2)
		CORE_RING.LightEmission = 1
		CORE_RING.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3, 1), NumberSequenceKeypoint.new(1, 7, 1)})
		CORE_RING.Speed = NumberRange.new(0, 0)
		CORE_RING.Texture = "rbxassetid://5726444189"

		local EVENT_HORIZON_02 = Instance.new("ParticleEmitter")
		EVENT_HORIZON_02.Parent = MIDDLE
		EVENT_HORIZON_02.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.341, 0.078)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.341, 0.078))})
		EVENT_HORIZON_02.ZOffset = -0.10
		EVENT_HORIZON_02.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 10, 0), NumberSequenceKeypoint.new(1, 10, 0)})
		EVENT_HORIZON_02.LightInfluence = 0
		EVENT_HORIZON_02.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.449, 0.899, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		EVENT_HORIZON_02.Name = "EVENT HORIZON 02"
		EVENT_HORIZON_02.Lifetime = NumberRange.new(0.5, 1)
		EVENT_HORIZON_02.LightEmission = 1
		EVENT_HORIZON_02.Speed = NumberRange.new(0, 0)
		EVENT_HORIZON_02.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 1), NumberSequenceKeypoint.new(1, -2, 1)})
		EVENT_HORIZON_02.Texture = "rbxassetid://4509687978"

		local EVENT_HORIZON_01 = Instance.new("ParticleEmitter")
		EVENT_HORIZON_01.Parent = MIDDLE
		EVENT_HORIZON_01.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.341, 0.078)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.341, 0.078))})
		EVENT_HORIZON_01.ZOffset = -0.10
		EVENT_HORIZON_01.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 10, 0), NumberSequenceKeypoint.new(1, 10, 0)})
		EVENT_HORIZON_01.LightInfluence = 0
		EVENT_HORIZON_01.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.449, 0.899, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		EVENT_HORIZON_01.Name = "EVENT HORIZON 01"
		EVENT_HORIZON_01.Lifetime = NumberRange.new(0.5, 1)
		EVENT_HORIZON_01.LightEmission = 1
		EVENT_HORIZON_01.Speed = NumberRange.new(0, 0)
		EVENT_HORIZON_01.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 1), NumberSequenceKeypoint.new(1, -5, 1)})
		EVENT_HORIZON_01.Texture = "rbxassetid://4509687978"

		local EVENT_HORIZON_03 = Instance.new("ParticleEmitter")
		EVENT_HORIZON_03.Parent = MIDDLE
		EVENT_HORIZON_03.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.341, 0.078)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.341, 0.078))})
		EVENT_HORIZON_03.ZOffset = -0.10
		EVENT_HORIZON_03.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
		EVENT_HORIZON_03.LightInfluence = 0
		EVENT_HORIZON_03.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.449, 0.899, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		EVENT_HORIZON_03.Name = "EVENT HORIZON 03"
		EVENT_HORIZON_03.Lifetime = NumberRange.new(0.5, 1)
		EVENT_HORIZON_03.LightEmission = 1
		EVENT_HORIZON_03.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 10, 0), NumberSequenceKeypoint.new(1, 20, 6.702)})
		EVENT_HORIZON_03.Speed = NumberRange.new(0.001, 0.001)
		EVENT_HORIZON_03.Texture = "rbxassetid://4509687978"

		return MIDDLE
	end,

	["portal"] = function(parent)
		local MIDDLE = Instance.new("Attachment")
		MIDDLE.Parent = parent
		MIDDLE.Name = "MIDDLE"

		local AURA = Instance.new("ParticleEmitter")
		AURA.Parent = MIDDLE
		AURA.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
		AURA.Rotation = NumberRange.new(-360, 360)
		AURA.FlipbookStartRandom = true
		AURA.FlipbookFramerate = NumberRange.new(25, 25)
		AURA.Speed = NumberRange.new(0, 0)
		AURA.ZOffset = -0.10
		AURA.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 15, 2), NumberSequenceKeypoint.new(1, 15, 2)})
		AURA.LightInfluence = 0
		AURA.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		AURA.Name = "AURA"
		AURA.Lifetime = NumberRange.new(1, 2)
		AURA.LightEmission = 1
		AURA.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.678, 0.164, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.678, 0.164, 1))})
		AURA.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
		AURA.Texture = "rbxassetid://11446801985"

		local COLOR = Instance.new("ParticleEmitter")
		COLOR.Parent = MIDDLE
		COLOR.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
		COLOR.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.078, 0.352, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.145, 1))})
		COLOR.Speed = NumberRange.new(0, 0)
		COLOR.Rate = 25
		COLOR.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 1), NumberSequenceKeypoint.new(1, 7, 1)})
		COLOR.LightInfluence = 0
		COLOR.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		COLOR.Name = "COLOR"
		COLOR.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.25, 0), NumberSequenceKeypoint.new(1, 0.25, 0)})
		COLOR.LightEmission = 1
		COLOR.Brightness = 5
		COLOR.Lifetime = NumberRange.new(0.5, 1)
		COLOR.Texture = "rbxassetid://4509687978"

		local CORE = Instance.new("ParticleEmitter")
		CORE.Parent = MIDDLE
		CORE.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))})
		CORE.ZOffset = 0.100
		CORE.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
		CORE.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.100, 0, 0), NumberSequenceKeypoint.new(0.899, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		CORE.Name = "CORE"
		CORE.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.25, 0), NumberSequenceKeypoint.new(1, 0.25, 0)})
		CORE.Speed = NumberRange.new(0, 0)
		CORE.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 4, 0), NumberSequenceKeypoint.new(1, 4, 0)})
		CORE.Lifetime = NumberRange.new(0.5, 1)
		CORE.Texture = "rbxassetid://4509687978"

		local NEBULAIC = Instance.new("ParticleEmitter")
		NEBULAIC.Parent = MIDDLE
		NEBULAIC.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
		NEBULAIC.Rotation = NumberRange.new(-360, 360)
		NEBULAIC.FlipbookStartRandom = true
		NEBULAIC.FlipbookFramerate = NumberRange.new(25, 25)
		NEBULAIC.Speed = NumberRange.new(0, 0)
		NEBULAIC.ZOffset = -0.10
		NEBULAIC.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 15, 2), NumberSequenceKeypoint.new(1, 15, 2)})
		NEBULAIC.LightInfluence = 0
		NEBULAIC.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		NEBULAIC.Name = "NEBULAIC"
		NEBULAIC.Lifetime = NumberRange.new(1, 2)
		NEBULAIC.LightEmission = 1
		NEBULAIC.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0.400, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.400, 1))})
		NEBULAIC.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
		NEBULAIC.Texture = "rbxassetid://11446801985"

		local STARS = Instance.new("ParticleEmitter")
		STARS.Parent = MIDDLE
		STARS.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
		STARS.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
		STARS.RotSpeed = NumberRange.new(-360, 360)
		STARS.SpreadAngle = Vector2.new(360, 360)
		STARS.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.580, 0.796, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.580, 0.796, 1))})
		STARS.Drag = 5
		STARS.Rotation = NumberRange.new(-360, 360)
		STARS.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 1), NumberSequenceKeypoint.new(1, 2, 1)})
		STARS.LightInfluence = 0
		STARS.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.25, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)})
		STARS.Name = "STARS"
		STARS.Lifetime = NumberRange.new(1, 2)
		STARS.LightEmission = 1
		STARS.Speed = NumberRange.new(10, 25)
		STARS.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
		STARS.Texture = "rbxassetid://12250428891"

		return MIDDLE
	end
}

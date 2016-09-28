-- create a blank frame as a trigger
local Message_EventFrame = CreateFrame("Frame")

-- register the player login even to the frame
Message_EventFrame:RegisterEvent("PLAYER_LOGIN")

-- when the frame's event triggers, perform the function
Message_EventFrame:SetScript("OnEvent", function(self,event,...)
	-- display a message in the standard chat frame
	-- UnitName("Player") returns the player's character's name (string value)
	-- UnitLevel("Player") returns the player's character's level (numeric value)
	-- UnitRace("Player") returns the player's character's race (Human, Orc, etc.)
	-- UnitClass("Player") returns the player's character's class (Paladin, Mage, etc.)
	-- Lua's concatenation command is two periods ( .. )
	ChatFrame1:AddMessage('Greetings, ' .. UnitName("Player") .. '! You are a level ' .. UnitLevel("Player") .. ' ' .. UnitRace("Player") .. ' ' .. UnitClass("Player") .. '!')
end)
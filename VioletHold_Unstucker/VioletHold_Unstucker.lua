
local VHU_EventFrame = CreateFrame('FRAME', 'VioletHold_Unstucker');

local function event_handler(self, event, ...)
	local _, _, _, _, _, _, _, mapID = GetInstanceInfo();
	if event == 'PLAYER_DEAD' and mapID == 1544 then
		SendChatMessage('.st', 'PARTY');
	end
end

VHU_EventFrame:RegisterEvent('PLAYER_DEAD');
VHU_EventFrame:SetScript('OnEvent', event_handler);



--[[
	print( GetMapInfo() );			-- ScarletMonestaryDK 668 768 false
	print( GetInstanceInfo() );		-- Sturm auf die Violette Festung party 1 Normal 5 0 false 1544 1
	print( GetRealZoneText() );		-- Die Violette Festung
	print( GetCurrentMapAreaID() );	-- 1105 false   ---- http://wow.gamepedia.com/MapID
]]



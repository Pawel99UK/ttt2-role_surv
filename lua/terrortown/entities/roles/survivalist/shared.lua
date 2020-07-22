AddCSLuaFile()

if SERVER then
	resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_surv.vmt")
end

function ROLE:PreInitialize()
	self.color = Color(80, 140, 90, 255)

	self.abbr = "surv" -- abbreviation
	self.surviveBonus = 1 -- bonus multiplier for every survive while another player was killed
	self.scoreKillsMultiplier = 2 -- multiplier for kill of player of another team
	self.scoreTeamKillsMultiplier = -8 -- multiplier for teamkill
	self.unknownTeam = true -- player don't know their teammates

	self.defaultTeam = TEAM_Murderer -- the team name: roles with same team name are working together
	self.defaultEquipment = SPECIAL_EQUIPMENT -- here you can set up your own default equipment

	self.conVarData = {
		pct = 0.35, -- necessary: percentage of getting this role selected (per player)
		maximum = 2, -- maximum amount of roles in a round
		minPlayers = 6, -- minimum amount of players until this role is able to get selected
		credits = 3, -- the starting credits of a specific role
		togglable = true, -- option to toggle a role for a client if possible (F1 menu)
		shopFallback = SHOP_FALLBACK_DETECTIVE
	}
end

function ROLE:Initialize()
	roles.SetBaseRole(self, ROLE_Murderer)
end
ply:GiveEquipmentWeapon('weapon_ttt_c4')
end

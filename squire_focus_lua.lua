squire_focus_lua = class({})
LinkLuaModifier("modifier_squire_focus_lua", LUA_MODIFIER_MOTION_NONE)

function squire_focus_lua:OnSpellStart()
	print("YOU GROW STRONGER! SQUIRE NOM NOM!");
	
	local caster = self:GetCaster();
	caster:AddNewModifier(caster, self, "modifier_squire_focus_lua",{ duration = -1});
	
end
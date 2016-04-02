modifier_squire_focus_lua = class({})

function modifier_squire_focus_lua :DeclareFunctions()
	local funcs_array = {
	MODIFIER_PROPERTY_BASEATTACK_BONUSDAMAGE
	
	}
	
	return funcs_array
end

function modifier_squire_focus_lua:GetModifierBaseAttack_BonusDamage(params)
	return 100;
end
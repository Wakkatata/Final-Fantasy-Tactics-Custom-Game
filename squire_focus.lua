function	ApplyModifier(keys)
	local caster = keys.caster
	local ability = keys.ability
	local stacks = 0;
	
	ability:ApplyDataDrivenModifier(caster, caster, "modifier_squire_focus_datadriven", {})
	caster:SetModifierStackCount("modifier_flak_cannon_datadriven", ability, stacks)
end

function buff_up(keys)
	local caster = keys.caster
	local ability = keys.ability
	local stacks = caster:GetModifierStackCount("modifier_squire_focus_datadriven", ability)
	local bonus_stacks = ability:GetLevelSpecialValueFor("stacks", ability:GetLevel() - 1)
	
	caster:SetModifierStackCount("modifier_flak_cannon_datadriven", ability, stacks + bonus_stacks)
	
end
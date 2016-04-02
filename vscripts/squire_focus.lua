function	BuffUp( keys )
	local caster = keys.caster
	local modifier = keys.modifier
	local ability = keys.ability
	
	local buff_stack =  ability:GetLevelSpecialValueFor( "squire_focus_damage_stack", ability:GetLevel() - 1 )
	
	local current_stack = caster:GetModifierStackCount( modifier, ability )
	if not current_stack then
		ability:ApplyDataDrivenModifier(caster, caster, modifier, {})
		current_stack = 0
	end

	print(current_stack)
	
	caster:SetModifierStackCount(modifier, ability, (current_stack + buff_stack*10))
	
end

function 	DissipateEnergy(keys)
	local caster = keys.caster
	local modifier = keys.modifier
	local ability = keys.ability
	
	local current_stack = caster:GetModifierStackCount(modifier, ability)
		print(current_stack .. "butts")
	if current_stack then
		caster:SetModifierStackCount(modifier, ability, math.ceil(current_stack /2))
	end
end
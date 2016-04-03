function ThrowStone(keys)
	local ability = keys.ability
	local level = ability:GetLevel() -1
	local cooldown = ability:GetCooldown(level)
	local caster = keys.caster
	local modifier = keys.modifier
	
	--put the skill on cooldown
	ability:StartCooldown(cooldown)
	
	--disables the passive
	caster:RemoveModifierByName(modifier)

end

/c 
local surface = game.player.surface 
for c in surface.get_chunks() do     
	canRemove = true
	for key, entity in pairs(
		surface.find_entities({{c.x * 32 - 4, c.y * 32 - 4}, {c.x * 32 + 36, c.y * 32 + 36}})) do
		if(
			entity.type == 'transport-belt' or 
			entity.type == 'inserter' or 
			entity.type == 'solar-panel' or 
			entity.type == 'furnace' or
			entity.type == 'electric-pole' or
			entity.type == 'mining-drill' or
			entity.type == 'straight-rail' or
			entity.type == 'curved-rail' or
			entity.type == 'pipe' or
			entity.type == 'assembling-machine' or
			entity.type == 'player' or
			entity.type == 'wall' or
			entity.type == 'locomotive' or
			entity.type == 'cargo-wagon' or
			entity.type == 'fluid-wagon' or
			entity.type == 'underground-belt' or
			entity.type == 'pipe-to-ground' or
			entity.type == 'container' or
			entity.type == 'storage-tank' or
			entity.type == 'car' or 
			entity.type == 'gate' or
			entity.type == 'ammo-turret' or
			entity.type == 'electric-turret'
		) then
			canRemove = false
			break;
		end	
	end   
	
	if(canRemove) then
		surface.delete_chunk({c.x,c.y});
	end
end  

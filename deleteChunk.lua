/c 
local surface = game.player.surface 
for c in surface.get_chunks() do     
	local canRemove = true
	local count = surface.count_entities_filtered({area={{c.x * 32 - 4, c.y * 32 - 4}, {c.x * 32 + 36, c.y * 32 + 36}},force="player"});
	game.player.print(count);
	if(count > 0) then
		canRemove = false
	end   	
	
	if(canRemove) then
		surface.delete_chunk({c.x,c.y});
	end
end  

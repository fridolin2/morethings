-- Morethings Mod ----------- Copyright fridolin2 <https://github.com/fridolin2> 2016~2017

--Check for mods

if minetest.get_modpath("3d_armor") then
dofile(minetest.get_modpath("morethings").."/morethings_armor.lua")
end

if minetest.get_modpath("moreores") then
dofile(minetest.get_modpath("morethings").."/morethings_moreores.lua")
end

if minetest.get_modpath("shields") then
dofile(minetest.get_modpath("morethings").."/morethings_shields.lua")
end

if minetest.get_modpath("quartz") then
dofile(minetest.get_modpath("morethings").."/morethings_quartz.lua")
end

dofile(minetest.get_modpath("morethings").."/morethings_tools.lua")

dofile(minetest.get_modpath("morethings").."/morethings_furnace.lua")

dofile(minetest.get_modpath("morethings").."/morethings_papyrus.lua")

dofile(minetest.get_modpath("morethings").."/morethings_craft_items.lua")

dofile(minetest.get_modpath("morethings").."/morethings_nodes.lua")

-- Define Ore Block Nodes

minetest.register_node("morethings:red_ore", {
	description = "Red Ore",
	tiles = {"morethings_red_ore_block.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:red_crystal_shards",
	is_ground_content = true,
})

minetest.register_node("morethings:krypton_ore", {
	description = "Krypton Ore",
	tiles = {"morethings_krypton_ore_block.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:krypton_lump",
	is_ground_content = true,
})

minetest.register_node("morethings:ghost_ore", {
	description = "Ghost Ore",
	tiles = {"morethings_ghost_ore_block.png"},
	light_source = default.LIGHT_MAX - 14,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:ghost_lump",
	is_ground_content = true,
})

--Define smelt Recipes

minetest.register_craft({
	type = "cooking",
	output = "morethings:red_crystal",
	recipe = "morethings:red_crystal_shards",
	cooktime = 30,
})

minetest.register_craft({
	type = "cooking",
	output = "morethings:red_ingot",
	recipe = "morethings:red_crystal",
	cooktime = 30,
})

minetest.register_craft({
	type = "cooking",
	output = "morethings:red_ingot_empowered",
	recipe = "morethings:red_crystal_empowered",
	cooktime = 300,
})

minetest.register_craft({
	type = "cooking",
	output = "morethings:krypton_ingot_base",
	recipe = "morethings:krypton_lump",
	cooktime = 40,
})

minetest.register_craft({
	type = "cooking",
	output = "morethings:krypton_ingot",
	recipe = "morethings:krypton_ingot_base",
	cooktime = 100,
})

minetest.register_craft({
	type = "cooking",
	output = "morethings:obsidian_ingot",
	recipe = "morethings:refined_obsidian_dust",
	cooktime = 20,
})

minetest.register_craft({
	type = "cooking",
	output = "morethings:ghost_ingot",
	recipe = "morethings:ghost_lump",
	cooktime = 30,
})





--Define other non Cubes 

local itemframe = {}

minetest.register_entity("morethings:itemframe_item",{
	hp_max = 1,
	visual = "wielditem",
	visual_size = {x = 0.33, y = 0.33},
	collisionbox = {0, 0, 0, 0, 0, 0},
	physical = false,
	textures = {"air"},
	on_activate = function(self, staticdata)
		if itemframe.nodename ~= nil and itemframe.texture ~= nil then
			self.nodename = itemframe.nodename
			itemframe.nodename = nil
			self.texture = itemframe.texture
			itemframe.texture = nil
		else
			if staticdata ~= nil and staticdata ~= "" then
				local data = staticdata:split(";")
				if data and data[1] and data[2] then
					self.nodename = data[1]
					self.texture = data[2]
				end
			end
		end
		if self.texture ~= nil then
			self.object:set_properties({textures = {self.texture}})
		end
	end,
	get_staticdata = function(self)
		if self.nodename ~= nil and self.texture ~= nil then
			return self.nodename .. ";" .. self.texture
		end
		return
	end
})


local facedir = {}
facedir[0] = {x = 0, y = 0, z = 1}
facedir[1] = {x = 1, y = 0, z = 0}
facedir[2] = {x = 0, y = 0, z = -1}
facedir[3] = {x = -1, y = 0, z= 0}

local remove_item = function(pos, node)
	local objs = nil
	if node.name == "morethings:itemframe" then
		objs = minetest.get_objects_inside_radius(pos, .5)
	end
	if objs then
		for _, obj in ipairs(objs) do
			if obj and obj:get_luaentity() and obj:get_luaentity().name == "morethings:itemframe_item" then
				obj:remove()
			end
		end
	end
end

local update_item = function(pos, node)
	remove_item(pos, node)
	local meta = minetest.env:get_meta(pos)
	if meta:get_string("item") ~= "" then
		if node.name == "morethings:itemframe" then
			local posad = facedir[node.param2]
			if not posad then return end
			pos.x = pos.x + posad.x*6.5/16
			pos.y = pos.y + posad.y*6.5/16
			pos.z = pos.z + posad.z*6.5/16
		elseif node.name == "itemframes:pedestal" then
			pos.y = pos.y + 12/16+.33
		end
		itemframe.nodename = node.name
		itemframe.texture = ItemStack(meta:get_string("item")):get_name()
		local e = minetest.env:add_entity(pos,"morethings:itemframe_item")
		if node.name == "morethings:itemframe" then
			local yaw = math.pi*2 - node.param2 * math.pi/2
			e:setyaw(yaw)
		end
	end
end

local drop_item = function(pos, node)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		if node.name == "morethings:itemframe" then
			minetest.add_item(pos, meta:get_string("item"))
		end
		meta:set_string("item", "")
	end
	remove_item(pos, node)
end

minetest.register_node("morethings:itemframe",{
	description = "Item frame",
	drawtype = "nodebox",
	node_box = { type = "fixed", fixed = {-0.5, -0.5, 7/16, 0.5, 0.5, 0.5} },
	selection_box = { type = "fixed", fixed = {-0.5, -0.5, 7/16, 0.5, 0.5, 0.5} },
	tiles = {"morethings_itemframe.png"},
	inventory_image = "morethings_itemframe.png",
	wield_image = "morethings_itemframe.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {choppy=2, dig_immediate=2, flammable = 2, fuel = 4},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	on_rightclick = function(pos, node, clicker, itemstack)
		if not itemstack then return end
		local meta = minetest.get_meta(pos)
			drop_item(pos,node)
			local s = itemstack:take_item()
			meta:set_string("item",s:to_string())
			update_item(pos,node)
		return itemstack
	end,
	on_punch = function(pos, node)
		drop_item(pos, node)
	end
})

--[[
-- automatically restore entities lost from frames
-- due to /clearobjects or similar

minetest.register_abm({
	nodenames = { "morethings:itemframe" },
	interval = 15,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if #minetest.get_objects_inside_radius(pos, 0.5) > 0 then return end
		update_item(pos, node)
	end
})
--]]


--Define non Cubes crafting recipes

minetest.register_craft({
	output = "morethings:itemframe",
	recipe = {
		{"default:stick", "default:stick", "default:stick"},
		{"default:stick", "", "default:stick"},
		{"default:stick", "default:stick", "default:stick"}
	}
})


--Make  Ores spawns
minetest.register_ore({
	ore_type = "scatter",
	ore = "morethings:red_ore",
	wherein = "default:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 3,
	clust_size = 3,
	y_min = -31000,
	y_max = -200,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "morethings:krypton_ore",
	wherein = "default:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 2,
	clust_size = 2,
	y_min = -31000,
	y_max = -350,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "morethings:ghost_ore",
	wherein = "default:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 6,
	clust_size = 4,
	y_min = -31000,
	y_max = -150,
})
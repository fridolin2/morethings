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

-- Define Block Nodes


-------Define Blocks of Resources

minetest.register_node("morethings:red_block", {
	description = "Red Block",
	tiles = {"morethings_red_block.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morethings:red_ingot" 9',
	is_ground_content = true,
})

minetest.register_node("morethings:krypton_block", {
	description = "Krypton Block",
	tiles = {"morethings_krypton_block.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morethings:krypton_ingot" 9', 
	is_ground_content = true,
})

minetest.register_node("morethings:flint_block", {
	description = "Flint Block",
	tiles = {"morethings_flint_block.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "default:flint" 9',
	is_ground_content = true,
})

minetest.register_node("morethings:ghost_block", {
	description = "Ghost Block",
	tiles = {"morethings_ghost_block.png"},
	light_source = default.LIGHT_MAX - 14,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morethings:ghost_ingot" 9',
	is_ground_content = true,
})
-------Define Tiles

minetest.register_node("morethings:tile", {
	description = "Tile",
	tiles = {"morethings_tile.png"},
	groups = {stone=2, cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:tile",
	is_ground_content = true,
})

minetest.register_node("morethings:mossy_tile", {
	description = "Mossy Tile",
	tiles = {"morethings_mossy_tile.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:tile",
	is_ground_content = true,
})

minetest.register_node("morethings:iron_tile", {
	description = "Iron Tile",
	tiles = {"morethings_iron_tile.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:iron_tile",
	is_ground_content = true,
})

minetest.register_node("morethings:copper_tile", {
	description = "Copper Tile",
	tiles = {"morethings_copper_tile.png"},
	groups = {cracky=3},
	drop = "morethings:copper_tile",
	is_ground_content = true,
})

minetest.register_node("morethings:bronze_tile", {
	description = "Bronze Tile",
	tiles = {"morethings_bronze_tile.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:bronze_tile",
	is_ground_content = true,
})

minetest.register_node("morethings:gold_tile", {
	description = "Gold Tile",
	tiles = {"morethings_gold_tile.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:gold_tile",
	is_ground_content = true,
})

minetest.register_node("morethings:mese_tile", {
	description = "MESE Tile",
	tiles = {"morethings_mese_tile.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:mese_tile",
	is_ground_content = true,
})

minetest.register_node("morethings:diamond_tile", {
	description = "Diamond Tile",
	tiles = {"morethings_diamond_tile.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:diamond_tile",
	is_ground_content = true,
})

-------Define Other Blocks

minetest.register_node("morethings:random_block", {
	description = "Random Block",
	tiles = {"morethings_random_block.png"},
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:random_block",
	is_ground_content = true,
})

minetest.register_node("morethings:laminat", {
	description = "Laminat",
	tiles = {"morethings_laminat.png"},
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_wood_defaults(),
	drop = "morethings:laminat",
	is_ground_content = true,
})

minetest.register_node("morethings:parkett", {
	description = "Parkett",
	tiles = {"morethings_parkett.png"},
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_wood_defaults(),
	drop = "morethings:parkett",
	is_ground_content = true,
})

-------Define Light Blocks

minetest.register_node("morethings:lightblock", {
	description = "Light Block",
	tiles = {"morethings_lightblock.png"},
	light_source = default.LIGHT_MAX - 14,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "morethings:lightblock",
	is_ground_content = true,
})

--Define Block Crafting recipes

minetest.register_craft({
	output = "morethings:red_block",
	recipe = {
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"}
	}
})

minetest.register_craft({
	output = "morethings:krypton_block",
	recipe = {
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"}
	}
})

minetest.register_craft({
	output = "morethings:ghost_block",
	recipe = {
		{"morethings:ghost_ingot", "morethings:ghost_ingot", "morethings:ghost_ingot"},
		{"morethings:ghost_ingot", "morethings:ghost_ingot", "morethings:ghost_ingot"},
		{"morethings:ghost_ingot", "morethings:ghost_ingot", "morethings:ghost_ingot"}
	}
})

minetest.register_craft({
	output = "morethings:flint_block",
	recipe = {
		{"default:flint", "default:flint", "default:flint"},
		{"default:flint", "default:flint", "default:flint"},
		{"default:flint", "default:flint", "default:flint"}
	}
})

minetest.register_craft({
	output = "morethings:lightblock",
	recipe = {
		{"default:stone", "default:cobble", "default:stone"},
		{"default:cobble", "default:torch", "default:cobble"},
		{"default:stone", "default:cobble", "default:stone"}
	}
})

minetest.register_craft({
	output = "morethings:random_block",
	recipe = {
		{"morethings:red_ingot_empowered", "morethings:red_ingot_empowered", "morethings:obsidian_ingot"},
		{"morethings:red_ingot_empowered", "morethings:red_ingot_empowered", "morethings:obsidian_ingot"},
		{"morethings:obsidian_ingot", "morethings:obsidian_ingot", "morethings:red_ingot_empowered"}
	}
})

minetest.register_craft({
	output = "morethings:parkett",
	recipe = {
		{"default:junglewood", "default:wood", "default:junglewood"},
		{"default:wood", "default:junglewood", "default:wood"},
		{"default:junglewood", "default:wood", "default:junglewood"}
	}
})

minetest.register_craft({
	output = "morethings:laminat",
	recipe = {
		{"default:wood", "default:junglewood", "default:wood"},
		{"default:junglewood", "default:wood", "default:junglewood"},
		{"default:wood", "default:junglewood", "default:wood"}
	}
})

minetest.register_craft({
	output = "morethings:tile",
	recipe = {
		{"", "default:stone", ""},
		{"default:stone", "default:stone", "default:stone"},
		{"", "default:stone", ""}
	}
})

minetest.register_craft({
	output = "morethings:iron_tile 6",
	recipe = {
		{"", "", ""},
		{"default:steel_ingot", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:copper_tile 6",
	recipe = {
		{"", "", ""},
		{"default:copper_ingot", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:bronze_tile 6",
	recipe = {
		{"", "", ""},
		{"default:bronze_ingot", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:gold_tile 6",
	recipe = {
		{"", "", ""},
		{"default:gold_ingot", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:mossy_tile 6",
	recipe = {
		{"", "", ""},
		{"default:mossycobble", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:mese_tile 16",
	recipe = {
		{"", "", ""},
		{"default:mese_crystal", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:mese_tile",
	recipe = {
		{"", "", ""},
		{"default:mese_shard", "morethings:tile", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:diamond_tile 20",
	recipe = {
		{"", "", ""},
		{"default:diamond", "morethings:tile", ""},
		{"", "", ""}
	}
})

--Define Craftitems

minetest.register_craftitem("morethings:red_ingot", {
	description = "Red Ingot",
	inventory_image = "morethings_red_ingot.png",
})

minetest.register_craftitem("morethings:red_ingot_empowered", {
	description = "Red Ingot Empowered",
	inventory_image = "morethings_red_ingot_empowered.png",
})

minetest.register_craftitem("morethings:red_crystal", {
	description = "Red Crystal",
	inventory_image = "morethings_red_crystal.png",
})

minetest.register_craftitem("morethings:red_crystal_shards", {
	description = "Red Crystal Shards",
	inventory_image = "morethings_red_crystal_shards.png",
})

minetest.register_craftitem("morethings:red_crystal_empowered", {
	description = "Red Crystal Empowered",
	inventory_image = "morethings_red_crystal_empowered.png",
})

minetest.register_craftitem("morethings:krypton_ingot_base", {
	description = "Krypton Ingot Base",
	inventory_image = "morethings_krypton_ingot_base.png",
})

minetest.register_craftitem("morethings:krypton_ingot", {
	description = "Krypton Ingot",
	inventory_image = "morethings_krypton_ingot.png",
})

minetest.register_craftitem("morethings:krypton_lump", {
	description = "Krypton Lump",
	inventory_image = "morethings_krypton_lump.png",
})

minetest.register_craftitem("morethings:mese_ingot", {
	description = "MESE Ingot",
	inventory_image = "morethings_mese_ingot.png",
})

minetest.register_craftitem("morethings:obsidian_ingot", {
	description = "Obsidian Ingot",
	inventory_image = "morethings_obsidian_ingot.png",
})

minetest.register_craftitem("morethings:ghost_ingot", {
	description = "Ghost Ingot",
	inventory_image = "morethings_ghost_ingot.png",
})

minetest.register_craftitem("morethings:ghost_lump", {
	description = "Ghost Lump",
	inventory_image = "morethings_ghost_lump.png",
})

minetest.register_craftitem("morethings:obsidian_hammer", {
	description = "Obsidian Hammer",
	inventory_image = "morethings_obsidian_hammer.png",
})

minetest.register_craftitem("morethings:obsidian_hammer_head", {
	description = "Obsidian Hammerhead",
	inventory_image = "morethings_obsidian_hammer_head.png",
})

minetest.register_craftitem("morethings:refined_obsidian_dust", {
	description = "Refined Obsidian Dust",
	inventory_image = "morethings_refined_obsidian_dust.png",
})

minetest.register_craftitem("morethings:obsidian_dust", {
	description = "Obsidian Dust",
	inventory_image = "morethings_obsidian_dust.png",
	on_use = minetest.item_eat(2)
})

minetest.register_craftitem("morethings:diamond_dust", {
	description = "Diamond Dust",
	inventory_image = "morethings_diamond_dust.png",
	on_use = minetest.item_eat(20)
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

--Define Craftitems Craft Recipes

minetest.register_craft({
	output = "morethings:red_crystal_empowered",
	recipe = {
		{"morethings:obsidian_ingot", "morethings:obsidian_ingot", "morethings:obsidian_ingot"},
		{"morethings:obsidian_ingot", "morethings:red_crystal", "morethings:obsidian_ingot"},
		{"morethings:obsidian_ingot", "default:diamond", "morethings:obsidian_ingot"}
	}
})

minetest.register_craft({
	output = "morethings:obsidian_hammer",
	recipe = {
		{"", "morethings:obsidian_hammer_head", ""},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:obsidian_hammer_head",
	recipe = {
		{"default:obsidian", "", ""},
		{"", "default:obsidian", ""},
		{"", "", "default:obsidian"}
	}
})

minetest.register_craft({
	output = '"morethings:obsidian_dust" 9',  
	recipe = {
		{"", "morethings:obsidian_hammer", ""},
		{"", "default:obsidian", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = '"morethings:diamond_dust" 9', 
	recipe = {
		{"", "morethings:obsidian_hammer", ""},
		{"", "default:diamond", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:refined_obsidian_dust", 
	recipe = {
		{"", "morethings:obsidian_dust", ""},
		{"", "morethings:diamond_dust", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = '"default:obsidian_shard" 18', 
	recipe = {
		{"", "morethings:obsidian_hammer", ""},
		{"", "default:obsidian", "default:obsidian"},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = '"morethings:mese_ingot" 2',  
	recipe = {
		{"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
		{"default:obsidian_shard", "default:mese_crystal", "default:obsidian_shard"},
		{"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"}
	}
})

minetest.register_craft({
	output = "morethings:krypton_ingot 9", 
	recipe = {
		{"", "", ""},
		{"", "morethings:krypton_block", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:red_ingot 9", 
	recipe = {
		{"", "", ""},
		{"", "morethings:red_block", ""},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "morethings:ghost_ingot 9", 
	recipe = {
		{"", "", ""},
		{"", "morethings:ghost_block", ""},
		{"", "", ""}
	}
})

--Register Pickaxes

minetest.register_tool("morethings:red_pickaxe", {
	description = "Red Pickaxe",
	inventory_image = "morethings_red_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("morethings:krypton_pickaxe", {
	description = "Krypton Pickaxe",
	inventory_image = "morethings_krypton_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=1500, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})


--Define Pickaxes crafting recipes

minetest.register_craft({
	output = "morethings:red_pickaxe",
	recipe = {
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:krypton_pickaxe",
	recipe = {
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:red_ingot"},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})


--Register  Axes

minetest.register_tool("morethings:red_axe", {
	description = "Red Axe",
	inventory_image = "morethings_red_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=1.05, [2]=0.45, [3]=0.25}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("morethings:krypton_axe", {
	description = "Krypton Axe",
	inventory_image = "morethings_krypton_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		wield_scale = {x = 3, y = 3, z = 3},
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=1.05, [2]=0.45, [3]=0.25}, uses=1500, maxlevel=3},
		},
		damage_groups = {fleshy=27},
	}
})


--Define Axes crafting recipes

minetest.register_craft({
	output = "morethings:red_axe",
	recipe = {
		{"morethings:red_ingot", "morethings:red_ingot", ""},
		{"morethings:red_ingot", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:red_axe",
	recipe = {
		{"", "morethings:red_ingot", "morethings:red_ingot"},
		{"", "default:stick", "morethings:red_ingot"},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:krypton_axe",
	recipe = {
		{"morethings:krypton_ingot", "morethings:krypton_ingot", ""},
		{"morethings:krypton_ingot", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:krypton_axe",
	recipe = {
		{"", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"", "default:stick", "morethings:krypton_ingot"},
		{"", "default:stick", ""}
	}
})


--Register Shovels

minetest.register_tool("morethings:red_shovel", {
	description = "Red Shovel",
	inventory_image = "morethings_red_shovel.png",
	wield_image = "morethings_red_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.55, [2]=0.25, [3]=0.15}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("morethings:krypton_shovel", {
	description = "Krypton Shovel",
	inventory_image = "morethings_krypton_shovel.png",
	wield_image = "morethings_krypton_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.55, [2]=0.25, [3]=0.15}, uses=1500, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})


--Define Shovels Crafting Recipes

minetest.register_craft({
	output = "morethings:red_shovel",
	recipe = {
		{"", "morethings:red_ingot", ""},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:krypton_shovel",
	recipe = {
		{"", "morethings:krypton_ingot", ""},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})


--Register Swords
minetest.register_tool("morethings:red_sword", {
	description = "Red Sword",
	inventory_image = "morethings_red_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=0.95, [2]=0.45, [3]=0.15}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})

minetest.register_tool("morethings:krypton_sword", {
	description = "Krypton Sword",
	inventory_image = "morethings_krypton_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=0.95, [2]=0.45, [3]=0.15}, uses=20000, maxlevel=3},
		},
		damage_groups = {fleshy=80},
	}
})


--Define Swords crafting recipes
minetest.register_craft({
	output = "morethings:red_sword",
	recipe = {
		{"", "morethings:red_ingot", ""},
		{"", "morethings:red_ingot", ""},
		{"", "default:stick", ""}
	}
})

minetest.register_craft({
	output = "morethings:krypton_sword",
	recipe = {
		{"", "morethings:krypton_ingot", ""},
		{"", "morethings:krypton_ingot", ""},
		{"", "default:stick", ""}
	}
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
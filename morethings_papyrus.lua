
-- register Ore Papyrus


core.register_node("morethings:papyrus_stone", {
	description = "Stone Papyrus",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_stone.png"},
	inventory_image = "morethings_papyrus_stone.png",
	wield_image = "morethings_papyrus_stone.png",
	drop = "morethings:papyrus_stone",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

core.register_node("morethings:papyrus_coal", {
	description = " Coal Papyrus",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_coal.png"},
	inventory_image = "morethings_papyrus_coal.png",
	wield_image = "morethings_papyrus_coal.png",
	drop = "morethings:coal_crumb",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

core.register_node("morethings:papyrus_iron", {
	description = " Iron Papyrus",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_iron.png"},
	inventory_image = "morethings_papyrus_iron.png",
	wield_image = "morethings_papyrus_iron.png",
	drop = "morethings:iron_shavings",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
	
})core.register_node("morethings:papyrus_copper", {
	description = " Copper Papyrus",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_copper.png"},
	inventory_image = "morethings_papyrus_copper.png",
	wield_image = "morethings_papyrus_copper.png",
	drop = "morethings:copper_shavings",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

core.register_node("morethings:papyrus_gold", {
	description = " Gold Papyrus",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_gold.png"},
	inventory_image = "morethings_papyrus_gold.png",
	wield_image = "morethings_papyrus_gold.png",
	drop = "morethings:gold_shavings",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

core.register_node("morethings:papyrus_mese", {
	description = " MESE Papyrus!",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_mese.png"},
	inventory_image = "morethings_papyrus_mese.png",
	wield_image = "morethings_papyrus_mese.png",
	drop = "default:mese_crystal_fragment",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

core.register_node("morethings:papyrus_diamond", {
	description = " Diamond Papyrus!",
	drawtype = "plantlike",
	tiles = {"morethings_papyrus_diamond.png"},
	inventory_image = "morethings_papyrus_diamond.png",
	wield_image = "morethings_papyrus_diamond.png",
	paramtype = "light",
	drop = "morethings:diamond_shard",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

-- grow up Config

function default.grow_papyrus7(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_stone" and height < 2 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 2 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_stone"})
	return true
end

function default.grow_papyrus6(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_coal" and height < 8 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 8 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_coal"})
	return true
end

function default.grow_papyrus5(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_iron" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_iron"})
	return true
end

function default.grow_papyrus4(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_copper" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_copper"})
	return true
end

function default.grow_papyrus3(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_gold" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_gold"})
	return true
end

function default.grow_papyrus2(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_mese" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_mese"})
	return true
end

function default.grow_papyrus(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "morethings:papyrus_diamond" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "morethings:papyrus_diamond"})
	return true
end

-- register abm

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_stone"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 14,
	chance = 1,
	action = default.grow_papyrus7
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_coal"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 14,
	chance = 1,
	action = default.grow_papyrus6
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_iron"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 16,
	chance = 1,
	action = default.grow_papyrus5
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_copper"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 18,
	chance = 1,
	action = default.grow_papyrus4
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_gold"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 20,
	chance = 1,
	action = default.grow_papyrus3
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_mese"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 30,
	chance = 1,
	action = default.grow_papyrus2
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"morethings:papyrus_diamond"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 32,
	chance = 1,
	action = default.grow_papyrus
})

--
-- dig upwards
--

function default.dig_up(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end

-- Craft Ore Papyrus

minetest.register_craft({
	output = "morethings:papyrus_coal",
	recipe = {
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "default:coal_lump"},
		{"morethings:papyrus_stone", "default:coal_lump", "morethings:papyrus_stone"},
		{"default:coal_lump", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})

minetest.register_craft({
	output = "morethings:papyrus_iron",
	recipe = {
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "default:steel_ingot"},
		{"morethings:papyrus_stone", "default:steel_ingot", "morethings:papyrus_stone"},
		{"default:steel_ingot", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})

minetest.register_craft({
	output = "morethings:papyrus_copper",
	recipe = {
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "default:copper_ingot"},
		{"morethings:papyrus_stone", "default:copper_ingot", "morethings:papyrus_stone"},
		{"default:copper_ingot", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})

minetest.register_craft({
	output = "morethings:papyrus_gold",
	recipe = {
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "default:gold_ingot"},
		{"morethings:papyrus_stone", "default:gold_ingot", "morethings:papyrus_stone"},
		{"default:gold_ingot", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})

minetest.register_craft({
	output = "morethings:papyrus_mese",
	recipe = {
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "default:mese_crystal"},
		{"morethings:papyrus_stone", "default:mese_crystal", "morethings:papyrus_stone"},
		{"default:mese_crystal", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})

minetest.register_craft({
	output = "morethings:papyrus_diamond",
	recipe = {
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "default:diamond"},
		{"morethings:papyrus_stone", "default:diamond", "morethings:papyrus_stone"},
		{"default:diamond", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})

minetest.register_craft({
	output = "morethings:papyrus_stone",
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
		{"default:papyrus", "default:stone", "default:papyrus"},
		{"default:papyrus", "default:papyrus", "default:papyrus"}
	}
})






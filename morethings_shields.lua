--Define Shields
minetest.register_tool("morethings:red_shield", {
	description = "Red Shield",
	inventory_image = "morethings_red_shield_inv.png",
	groups = {armor_shield=25, armor_heal=20, armor_use=400, armor_fire=100},
	wear = 0,
})

minetest.register_tool("morethings:krypton_shield", {
	description = "Krypton Shield",
	inventory_image = "morethings_krypton_shield_inv.png",
	groups = {armor_shield=200, armor_heal=60, armor_use=40000, armor_fire=5},
	wear = 0,
})

minetest.register_tool("morethings:mese_shield", {
	description = "MESE Shield",
	inventory_image = "morethings_mese_shield_inv.png",
	groups = {armor_shield=100, armor_heal=5, armor_use=400, armor_fire=5},
	wear = 0,
})

minetest.register_tool("morethings:random_shield", {
	description = "Random Shield",
	inventory_image = "morethings_random_shield_inv.png",
	groups = {armor_shield=20000, armor_heal=6000, armor_use=0, armor_fire=50000, not_in_creative_inventory=1},
	wear = 0,
})


--Define  Shields crafting recipes
minetest.register_craft({
	output = "morethings:red_shield",
	recipe = {
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"", "morethings:red_ingot", ""},
	},
})

minetest.register_craft({
	output = "morethings:krypton_shield",
	recipe = {
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"", "morethings:krypton_ingot", ""},
	},
})

minetest.register_craft({
	output = "morethings:mese_shield",
	recipe = {
		{"morethings:mese_ingot", "morethings:mese_ingot", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "morethings:mese_ingot", "morethings:mese_ingot"},
		{"", "morethings:mese_ingot", ""},
	},
})
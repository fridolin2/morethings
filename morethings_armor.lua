--Define Armors
minetest.register_tool("morethings:red_helmet", {
	description = "Red Helmet",
	inventory_image = "morethings_red_helmet_inv.png",
	groups = {armor_head=20, armor_heal=20, armor_use=400},
	wear = 0,
})
minetest.register_tool("morethings:red_chestplate", {
	description = "Red Chestplate",
	inventory_image = "morethings_red_chestplate_inv.png",
	groups = {armor_torso=40, armor_heal=30, armor_use=400},
	wear = 0,
})
minetest.register_tool("morethings:red_leggings", {
	description = "Red Leggings",
	inventory_image = "morethings_red_leggings_inv.png",
	groups = {armor_legs=25, armor_heal=20, armor_use=400},
	wear = 0,
})
minetest.register_tool("morethings:red_boots", {
	description = "Red Boots",
	inventory_image = "morethings_red_boots_inv.png",
	groups = {armor_feet=25, armor_heal=20, armor_use=400},
	wear = 0,
})

minetest.register_tool("morethings:krypton_helmet", {
	description = "Krypton Helmet",
	inventory_image = "morethings_krypton_helmet_inv.png",
	groups = {armor_head=35, armor_heal=40, armor_use=40000},
	wear = 0,
})
minetest.register_tool("morethings:krypton_chestplate", {
	description = "Krypton Chestplate",
	inventory_image = "morethings_krypton_chestplate_inv.png",
	groups = {armor_torso=80, armor_heal=40, armor_use=40000},
	wear = 0,
})
minetest.register_tool("morethings:krypton_leggings", {
	description = "Krypton Leggings",
	inventory_image = "morethings_krypton_leggings_inv.png",
	groups = {armor_legs=40, armor_heal=40, armor_use=40000},
	wear = 0,
})
minetest.register_tool("morethings:krypton_boots", {
	description = "Krypton Boots",
	inventory_image = "morethings_krypton_boots_inv.png",
	groups = {armor_feet=35, armor_heal=40, armor_use=40000},
	wear = 0,
})
 
 minetest.register_tool("morethings:mese_helmet", {
	description = "MESE Helmet",
	inventory_image = "morethings_mese_helmet_inv.png",
	groups = {armor_head=20, armor_heal=5, armor_use=400},
	wear = 0,
})
minetest.register_tool("morethings:mese_chestplate", {
	description = "MESE Chestplate",
	inventory_image = "morethings_mese_chestplate_inv.png",
	groups = {armor_torso=40, armor_heal=5, armor_use=400},
	wear = 0,
})
minetest.register_tool("morethings:mese_leggings", {
	description = "MESE Leggings",
	inventory_image = "morethings_mese_leggings_inv.png",
	groups = {armor_legs=35, armor_heal=5, armor_use=400},
	wear = 0,
})
minetest.register_tool("morethings:mese_boots", {
	description = "mese Boots",
	inventory_image = "morethings_mese_boots_inv.png",
	groups = {armor_feet=20, armor_heal=5, physics_speed=2, physics_jump=2, armor_use=0},
	wear = 0,
})
 
--Define Armor crafting recipes
minetest.register_craft({
	output = "morethings:red_helmet",
	recipe = {
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"morethings:red_ingot", "", "morethings:red_ingot"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "morethings:red_chestplate",
	recipe = {
		{"morethings:red_ingot", "", "morethings:red_ingot"},
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:red_leggings",
	recipe = {
		{"morethings:red_ingot", "morethings:red_ingot", "morethings:red_ingot"},
		{"morethings:red_ingot", "", "morethings:red_ingot"},
		{"morethings:red_ingot", "", "morethings:red_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:red_boots",
	recipe = {
		{"morethings:red_ingot", "", "morethings:red_ingot"},
		{"morethings:red_ingot", "", "morethings:red_ingot"},
	},
})

minetest.register_craft({
	output = "morethings:krypton_helmet",
	recipe = {
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "", "morethings:krypton_ingot"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "morethings:krypton_chestplate",
	recipe = {
		{"morethings:krypton_ingot", "", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:krypton_leggings",
	recipe = {
		{"morethings:krypton_ingot", "morethings:krypton_ingot", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "", "morethings:krypton_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:krypton_boots",
	recipe = {
		{"morethings:krypton_ingot", "", "morethings:krypton_ingot"},
		{"morethings:krypton_ingot", "", "morethings:krypton_ingot"},
	},
})

minetest.register_craft({
	output = "morethings:mese_helmet",
	recipe = {
		{"morethings:mese_ingot", "morethings:mese_ingot", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "", "morethings:mese_ingot"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "morethings:mese_chestplate",
	recipe = {
		{"morethings:mese_ingot", "", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "morethings:mese_ingot", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "morethings:mese_ingot", "morethings:mese_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:mese_leggings",
	recipe = {
		{"morethings:mese_ingot", "morethings:mese_ingot", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "", "morethings:mese_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:mese_boots",
	recipe = {
		{"morethings:mese_ingot", "", "morethings:mese_ingot"},
		{"morethings:mese_ingot", "", "morethings:mese_ingot"},
	},
})
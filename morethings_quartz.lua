--Define Armors
minetest.register_tool("morethings:quartz_helmet", {
	description = "Quartz Helmet",
	inventory_image = "morethings_quartz_helmet_inv.png",
	groups = {armor_head=10, armor_heal=0, armor_use=40},
	wear = 0,
})
minetest.register_tool("morethings:quartz_chestplate", {
	description = "Quartz Chestplate",
	inventory_image = "morethings_quartz_chestplate_inv.png",
	groups = {armor_torso=20, armor_heal=0, armor_use=40},
	wear = 0,
})
minetest.register_tool("morethings:quartz_leggings", {
	description = "Quartz Leggings",
	inventory_image = "morethings_quartz_leggings_inv.png",
	groups = {armor_legs=15, armor_heal=0, armor_use=40},
	wear = 0,
})
minetest.register_tool("morethings:quartz_boots", {
	description = "Quartz Boots",
	inventory_image = "morethings_quartz_boots_inv.png",
	groups = {armor_feet=10, armor_heal=0, armor_use=40},
	wear = 0,
})


 
--Define Armor crafting recipes
minetest.register_craft({
	output = "morethings:quartz_helmet",
	recipe = {
		{"quartz:block", "quartz:block", "quartz:block"},
		{"quartz:block", "", "quartz:block"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "morethings:quartz_chestplate",
	recipe = {
		{"quartz:block", "", "quartz:block"},
		{"quartz:block", "quartz:block", "quartz:block"},
		{"quartz:block", "quartz:block", "quartz:block"},
	},
})
minetest.register_craft({
	output = "morethings:quartz_leggings",
	recipe = {
		{"quartz:block", "quartz:block", "quartz:block"},
		{"quartz:block", "", "quartz:block"},
		{"quartz:block", "", "quartz:block"},
	},
})
minetest.register_craft({
	output = "morethings:quartz_boots",
	recipe = {
		{"quartz:block", "", "quartz:block"},
		{"quartz:block", "", "quartz:block"},
	},
})

--Define Shields
minetest.register_tool("morethings:quartz_shield", {
	description = "Quartz Shield",
	inventory_image = "morethings_quartz_shield_inv.png",
	groups = {armor_shield=10, armor_heal=0, armor_use=40, armor_fire=2},
	wear = 0,
})


--Define  Shields crafting recipes
minetest.register_craft({
	output = "morethings:quartz_shield",
	recipe = {
		{"quartz:block", "quartz:block", "quartz:block"},
		{"quartz:block", "quartz:block", "quartz:block"},
		{"", "quartz:block", ""},
	},
})

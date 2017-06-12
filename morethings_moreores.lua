--Define Armors
minetest.register_tool("morethings:silver_helmet", {
	description = "Silver Helmet",
	inventory_image = "morethings_silver_helmet_inv.png",
	groups = {armor_head=10, armor_heal=0, armor_use=40},
	wear = 0,
})
minetest.register_tool("morethings:silver_chestplate", {
	description = "Silver Chestplate",
	inventory_image = "morethings_silver_chestplate_inv.png",
	groups = {armor_torso=20, armor_heal=0, armor_use=40},
	wear = 0,
})
minetest.register_tool("morethings:silver_leggings", {
	description = "Silver Leggings",
	inventory_image = "morethings_silver_leggings_inv.png",
	groups = {armor_legs=15, armor_heal=0, armor_use=40},
	wear = 0,
})
minetest.register_tool("morethings:silver_boots", {
	description = "Silver Boots",
	inventory_image = "morethings_silver_boots_inv.png",
	groups = {armor_feet=10, armor_heal=0, armor_use=40},
	wear = 0,
})


 
--Define Armor crafting recipes
minetest.register_craft({
	output = "morethings:silver_helmet",
	recipe = {
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "morethings:silver_chestplate",
	recipe = {
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:silver_leggings",
	recipe = {
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
	},
})
minetest.register_craft({
	output = "morethings:silver_boots",
	recipe = {
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
	},
})

--Define Shields
minetest.register_tool("morethings:silver_shield", {
	description = "Silver Shield",
	inventory_image = "morethings_silver_shield_inv.png",
	groups = {armor_shield=10, armor_heal=0, armor_use=40, armor_fire=2},
	wear = 0,
})


--Define  Shields crafting recipes
minetest.register_craft({
	output = "morethings:silver_shield",
	recipe = {
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
		{"", "moreores:silver_ingot", ""},
	},
})

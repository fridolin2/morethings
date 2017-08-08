minetest.register_craftitem("morethings:red_ingot", {
	description = "Red Ingot",
	inventory_image = "morethings_red_ingot.png",
})

minetest.register_craftitem("morethings:red_ingot_empowered", {
	description = "Red Ingot Empowered",
	inventory_image = "morethings_red_ingot_empowered.png",
})

minetest.register_craftitem("morethings:red_crystal_shards", {
	description = "Red Crystal Shards",
	inventory_image = "morethings_red_crystal_shards.png",
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

minetest.register_craftitem("morethings:diamond_shard", {
	description = "Diamond Shard",
	inventory_image = "morethings_diamond_shard.png",
})

minetest.register_craftitem("morethings:coal_crumb", {
	description = "Coal Crumb",
	inventory_image = "morethings_coal_crumb.png",
})

minetest.register_craftitem("morethings:iron_shavings", {
	description = "Iron Shavings",
	inventory_image = "morethings_iron_shavings.png",
})

minetest.register_craftitem("morethings:copper_shavings", {
	description = "Copper Shavings",
	inventory_image = "morethings_copper_shavings.png",
})

minetest.register_craftitem("morethings:gold_shavings", {
	description = "Gold Shavings",
	inventory_image = "morethings_gold_shavings.png",
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

minetest.register_craft({
	output = "default:coal_lump 4", 
	recipe = {
		{"morethings:coal_crumb", "morethings:coal_crumb", "morethings:coal_crumb"},
		{"morethings:coal_crumb", "morethings:coal_crumb", "morethings:coal_crumb"},
		{"morethings:coal_crumb", "morethings:coal_crumb", "morethings:coal_crumb"}
	}
})

minetest.register_craft({
	output = "default:iron_lump 2", 
	recipe = {
		{"morethings:iron_shavings", "morethings:iron_shavings", "morethings:iron_shavings"},
		{"morethings:iron_shavings", "morethings:iron_shavings", "morethings:iron_shavings"},
		{"morethings:iron_shavings", "morethings:iron_shavings", "morethings:iron_shavings"}
	}
})

minetest.register_craft({
	output = "default:copper_lump 2", 
	recipe = {
		{"morethings:copper_shavings", "morethings:copper_shavings", "morethings:copper_shavings"},
		{"morethings:copper_shavings", "morethings:copper_shavings", "morethings:copper_shavings"},
		{"morethings:copper_shavings", "morethings:copper_shavings", "morethings:copper_shavings"}
	}
})

minetest.register_craft({
	output = "default:gold_lump 2", 
	recipe = {
		{"morethings:gold_shavings", "morethings:gold_shavings", "morethings:gold_shavings"},
		{"morethings:gold_shavings", "morethings:gold_shavings", "morethings:gold_shavings"},
		{"morethings:gold_shavings", "morethings:gold_shavings", "morethings:gold_shavings"}
	}
})

minetest.register_craft({
	output = "default:diamond", 
	recipe = {
		{"morethings:diamond_shard", "morethings:diamond_shard", "morethings:diamond_shard"},
		{"morethings:diamond_shard", "morethings:diamond_shard", "morethings:diamond_shard"},
		{"morethings:diamond_shard", "morethings:diamond_shard", "morethings:diamond_shard"}
	}
})

minetest.register_craft({
	output = "default:stone 12", 
	recipe = {
		{"", "", ""},
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "morethings:papyrus_stone"},
		{"morethings:papyrus_stone", "morethings:papyrus_stone", "morethings:papyrus_stone"}
	}
})




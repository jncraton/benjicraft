-- mods/default/crafting.lua

--
-- Crafting definition
--

local craft_planks = function(output, input)
	minetest.register_craft({
		output = "mcl_core:"..output.."wood 4",
		recipe = {
			{"mcl_core:"..input},
		}
	})
end

craft_planks("", "tree")
craft_planks("", "tree_bark")
craft_planks("", "stripped_oak")
craft_planks("", "stripped_oak_bark")

craft_planks("dark", "darktree")
craft_planks("dark", "darktree_bark")
craft_planks("dark", "stripped_dark_oak")
craft_planks("dark", "stripped_dark_oak_bark")

craft_planks("jungle", "jungletree")
craft_planks("jungle", "jungletree_bark")
craft_planks("jungle", "stripped_jungle")
craft_planks("jungle", "stripped_jungle_bark")

craft_planks("acacia", "acaciatree")
craft_planks("acacia", "acaciatree_bark")
craft_planks("acacia", "stripped_acacia")
craft_planks("acacia", "stripped_acacia_bark")

craft_planks("spruce", "sprucetree")
craft_planks("spruce", "sprucetree_bark")
craft_planks("spruce", "stripped_spruce")
craft_planks("spruce", "stripped_spruce_bark")

craft_planks("birch", "birchtree")
craft_planks("birch", "birchtree_bark")
craft_planks("birch", "stripped_birch")
craft_planks("birch", "stripped_birch_bark")


minetest.register_craft({
	type = 'shapeless',
	output = 'mcl_core:mossycobble',
	recipe = { 'mcl_core:cobble', 'mcl_core:vine' },
})

minetest.register_craft({
	type = 'shapeless',
	output = 'mcl_core:stonebrickmossy',
	recipe = { 'mcl_core:stonebrick', 'mcl_core:vine' },
})

minetest.register_craft({
	output = 'mcl_core:coarse_dirt 4',
	recipe = {
		{'mcl_core:dirt', 'mcl_core:gravel'},
		{'mcl_core:gravel', 'mcl_core:dirt'},
	}
})
minetest.register_craft({
	output = 'mcl_core:coarse_dirt 4',
	recipe = {
		{'mcl_core:gravel', 'mcl_core:dirt'},
		{'mcl_core:dirt', 'mcl_core:gravel'},
	}
})

minetest.register_craft({
	output = 'mcl_core:sandstonesmooth 4',
	recipe = {
		{'mcl_core:sandstone','mcl_core:sandstone'},
		{'mcl_core:sandstone','mcl_core:sandstone'},
	}
})

minetest.register_craft({
	output = 'mcl_core:redsandstonesmooth 4',
	recipe = {
		{'mcl_core:redsandstone','mcl_core:redsandstone'},
		{'mcl_core:redsandstone','mcl_core:redsandstone'},
	}
})

minetest.register_craft({
	output = 'mcl_core:granite_smooth 4',
	recipe = {
		{'mcl_core:granite', 'mcl_core:granite'},
		{'mcl_core:granite', 'mcl_core:granite'}
	},
})

minetest.register_craft({
	output = 'mcl_core:andesite_smooth 4',
	recipe = {
		{'mcl_core:andesite', 'mcl_core:andesite'},
		{'mcl_core:andesite', 'mcl_core:andesite'}
	},
})

minetest.register_craft({
	output = 'mcl_core:diorite_smooth 4',
	recipe = {
		{'mcl_core:diorite', 'mcl_core:diorite'},
		{'mcl_core:diorite', 'mcl_core:diorite'}
	},
})

minetest.register_craft({
	type = "shapeless",
	output = 'mcl_core:granite',
	recipe = {'mcl_core:diorite', 'mcl_nether:quartz'},
})

minetest.register_craft({
	type = "shapeless",
	output = 'mcl_core:andesite 2',
	recipe = {'mcl_core:diorite', 'mcl_core:cobble'},
})

minetest.register_craft({
	output = 'mcl_core:diorite 2',
	recipe = {
		{'mcl_core:cobble', 'mcl_nether:quartz'},
		{'mcl_nether:quartz', 'mcl_core:cobble'},
	}
})
minetest.register_craft({
	output = 'mcl_core:diorite 2',
	recipe = {
		{'mcl_nether:quartz', 'mcl_core:cobble'},
		{'mcl_core:cobble', 'mcl_nether:quartz'},
	}
})

minetest.register_craft({
	output = "mcl_core:bone_block",
	recipe = {
		{ "mcl_dye:white", "mcl_dye:white", "mcl_dye:white" },
		{ "mcl_dye:white", "mcl_dye:white", "mcl_dye:white" },
		{ "mcl_dye:white", "mcl_dye:white", "mcl_dye:white" },
	},
})

minetest.register_craft({
	output = "mcl_dye:white 9",
	recipe = {
		{ "mcl_core:bone_block" },
	},
})

minetest.register_craft({
	output = 'mcl_core:stick 4',
	recipe = {
		{'group:wood'},
		{'group:wood'},
	}
})



minetest.register_craft({
	output = 'mcl_core:coalblock',
	recipe = {
		{'mcl_core:coal_lump', 'mcl_core:coal_lump', 'mcl_core:coal_lump'},
		{'mcl_core:coal_lump', 'mcl_core:coal_lump', 'mcl_core:coal_lump'},
		{'mcl_core:coal_lump', 'mcl_core:coal_lump', 'mcl_core:coal_lump'},
	}
})

minetest.register_craft({
	output = 'mcl_core:coal_lump 9',
	recipe = {
		{'mcl_core:coalblock'},
	}
})

minetest.register_craft({
	output = 'mcl_core:ironblock',
	recipe = {
		{'mcl_core:iron_ingot', 'mcl_core:iron_ingot', 'mcl_core:iron_ingot'},
		{'mcl_core:iron_ingot', 'mcl_core:iron_ingot', 'mcl_core:iron_ingot'},
		{'mcl_core:iron_ingot', 'mcl_core:iron_ingot', 'mcl_core:iron_ingot'},
	}
})

minetest.register_craft({
	output = 'mcl_core:iron_ingot 9',
	recipe = {
		{'mcl_core:ironblock'},
	}
})

minetest.register_craft({
	output = 'mcl_core:goldblock',
	recipe = {
		{'mcl_core:gold_ingot', 'mcl_core:gold_ingot', 'mcl_core:gold_ingot'},
		{'mcl_core:gold_ingot', 'mcl_core:gold_ingot', 'mcl_core:gold_ingot'},
		{'mcl_core:gold_ingot', 'mcl_core:gold_ingot', 'mcl_core:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'mcl_core:gold_ingot 9',
	recipe = {
		{'mcl_core:goldblock'},
	}
})

minetest.register_craft({
	output = "mcl_core:gold_nugget 9",
	recipe = {{"mcl_core:gold_ingot"}},
})

minetest.register_craft({
	output = "mcl_core:iron_nugget 9",
	recipe = {{"mcl_core:iron_ingot"}},
})

minetest.register_craft({
	output = "mcl_core:gold_ingot",
	recipe = {
		{"mcl_core:gold_nugget", "mcl_core:gold_nugget", "mcl_core:gold_nugget"},
		{"mcl_core:gold_nugget", "mcl_core:gold_nugget", "mcl_core:gold_nugget"},
		{"mcl_core:gold_nugget", "mcl_core:gold_nugget", "mcl_core:gold_nugget"},
	}
})

minetest.register_craft({
	output = "mcl_core:iron_ingot",
	recipe = {
		{"mcl_core:iron_nugget", "mcl_core:iron_nugget", "mcl_core:iron_nugget"},
		{"mcl_core:iron_nugget", "mcl_core:iron_nugget", "mcl_core:iron_nugget"},
		{"mcl_core:iron_nugget", "mcl_core:iron_nugget", "mcl_core:iron_nugget"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = 'mcl_core:iron_nugget',
	recipe = 'mobs_mc:iron_horse_armor',
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = 'mcl_core:gold_nugget',
	recipe = 'mobs_mc:gold_horse_armor',
	cooktime = 10,
})

minetest.register_craft({
	output = 'mcl_core:sandstone',
	recipe = {
		{'mcl_core:sand', 'mcl_core:sand'},
		{'mcl_core:sand', 'mcl_core:sand'},
	}
})

minetest.register_craft({
	output = 'mcl_core:redsandstone',
	recipe = {
		{'mcl_core:redsand', 'mcl_core:redsand'},
		{'mcl_core:redsand', 'mcl_core:redsand'},
	}
})

minetest.register_craft({
	output = 'mcl_core:clay',
	recipe = {
		{'mcl_core:clay_lump', 'mcl_core:clay_lump'},
		{'mcl_core:clay_lump', 'mcl_core:clay_lump'},
	}
})

minetest.register_craft({
	output = 'mcl_core:brick_block',
	recipe = {
		{'mcl_core:brick', 'mcl_core:brick'},
		{'mcl_core:brick', 'mcl_core:brick'},
	}
})

minetest.register_craft({
	output = 'mcl_core:paper 3',
	recipe = {
		{'mcl_core:reeds', 'mcl_core:reeds', 'mcl_core:reeds'},
	}
})

minetest.register_craft({
	output = 'mcl_core:ladder 3',
	recipe = {
		{'mcl_core:stick', '', 'mcl_core:stick'},
		{'mcl_core:stick', 'mcl_core:stick', 'mcl_core:stick'},
		{'mcl_core:stick', '', 'mcl_core:stick'},
	}
})

minetest.register_craft({
	output = 'mcl_core:stonebrick 4',
	recipe = {
		{'mcl_core:stone', 'mcl_core:stone'},
		{'mcl_core:stone', 'mcl_core:stone'},
	}
})

minetest.register_craft({
	output = 'mcl_core:lapisblock',
	recipe = {
		{'mcl_dye:blue', 'mcl_dye:blue', 'mcl_dye:blue'},
		{'mcl_dye:blue', 'mcl_dye:blue', 'mcl_dye:blue'},
		{'mcl_dye:blue', 'mcl_dye:blue', 'mcl_dye:blue'},
	}
})

minetest.register_craft({
	output = 'mcl_dye:blue 9',
	recipe = {
		{'mcl_core:lapisblock'},
	}
})

minetest.register_craft({
	output = "mcl_core:emeraldblock",
	recipe = {
		{'mcl_core:emerald', 'mcl_core:emerald', 'mcl_core:emerald'},
		{'mcl_core:emerald', 'mcl_core:emerald', 'mcl_core:emerald'},
		{'mcl_core:emerald', 'mcl_core:emerald', 'mcl_core:emerald'},
	}
})

minetest.register_craft({
	output = 'mcl_core:emerald 9',
	recipe = {
		{'mcl_core:emeraldblock'},
	}
})

minetest.register_craft({
	output = "mcl_core:diamondblock",
	recipe = {
		{'mcl_core:diamond', 'mcl_core:diamond', 'mcl_core:diamond'},
		{'mcl_core:diamond', 'mcl_core:diamond', 'mcl_core:diamond'},
		{'mcl_core:diamond', 'mcl_core:diamond', 'mcl_core:diamond'},
	}
})

minetest.register_craft({
	output = 'mcl_core:diamond 9',
	recipe = {
		{'mcl_core:diamondblock'},
	}
})

minetest.register_craft({
	output = "mcl_core:apple_gold",
	recipe = {
		{"mcl_core:gold_ingot", "mcl_core:gold_ingot", "mcl_core:gold_ingot"},
		{"mcl_core:gold_ingot", 'mcl_core:apple', "mcl_core:gold_ingot"},
		{"mcl_core:gold_ingot", "mcl_core:gold_ingot", "mcl_core:gold_ingot"},
	}
})

minetest.register_craft({
	output = "mcl_core:sugar",
	recipe = {
		{"mcl_core:reeds"},
	}
})

minetest.register_craft({
	output = "mcl_core:bowl 4",
	recipe = {
		{"group:wood", "", "group:wood"},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = 'mcl_core:snowblock',
	recipe = {
		{'mcl_throwing:snowball', 'mcl_throwing:snowball'},
		{'mcl_throwing:snowball', 'mcl_throwing:snowball'},
	}
})

minetest.register_craft({
	output = 'mcl_core:snow 6',
	recipe = {
		{'mcl_core:snowblock', 'mcl_core:snowblock', 'mcl_core:snowblock'},
	}
})

-- TODO: Add crafting recipe: 9 ice → 1 packed ice
-- Add it when silk touch tools work.

--
-- Crafting (tool repair)
--
minetest.register_craft({
	type = "toolrepair",
	additional_wear = -mcl_core.repair,
})

--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:glass",
	recipe = "group:sand",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:stone",
	recipe = "mcl_core:cobble",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:stone_smooth",
	recipe = "mcl_core:stone",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:stonebrickcracked",
	recipe = "mcl_core:stonebrick",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:iron_ingot",
	recipe = "mcl_core:stone_with_iron",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:gold_ingot",
	recipe = "mcl_core:stone_with_gold",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:brick",
	recipe = "mcl_core:clay_lump",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:charcoal_lump",
	recipe = "group:tree",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:coal_lump",
	recipe = "mcl_core:stone_with_coal",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:diamond",
	recipe = "mcl_core:stone_with_diamond",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_core:emerald",
	recipe = "mcl_core:stone_with_emerald",
	cooktime = 10,
})

minetest.register_craft({
	type = "cooking",
	output = "mcl_dye:blue",
	recipe = "mcl_core:stone_with_lapis",
	cooktime = 10,
})

--
-- Fuels
--

minetest.register_craft({
	type = "fuel",
	recipe = "mcl_core:coalblock",
	burntime = 800,
})

minetest.register_craft({
	type = "fuel",
	recipe = "mcl_core:coal_lump",
	burntime = 80,
})

minetest.register_craft({
	type = "fuel",
	recipe = "mcl_core:charcoal_lump",
	burntime = 80,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:tree",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:bark",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "mcl_core:ladder",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:wood",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:sapling",
	burntime = 5,
})



minetest.register_craft({
	type = "fuel",
	recipe = "group:sapling",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "mcl_core:bowl",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "mcl_core:stick",
	burntime = 5,
})

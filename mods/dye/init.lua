-- minetest/dye/init.lua

-- To make recipes that will work with any dye ever made by anybody, define
-- them based on groups.
-- You can select any group of groups, based on your need for amount of colors.
-- basecolor: 9, excolor: 17, unicolor: 89
--
-- Example of one shapeless recipe using a color group:
-- Note: As this uses basecolor_*, you'd need 9 of these.
-- minetest.register_craft({
--     type = "shapeless",
--     output = '<mod>:item_yellow',
--     recipe = {'<mod>:item_no_color', 'group:basecolor_yellow'},
-- })

-- Other mods can use these for looping through available colors
local dye = {}
dye.basecolors = {"white", "grey", "black", "red", "yellow", "green", "cyan", "blue", "magenta"}
dye.excolors = {"white", "lightgrey", "grey", "darkgrey", "black", "red", "orange", "yellow", "lime", "green", "aqua", "cyan", "sky_blue", "blue", "violet", "magenta", "red_violet"}

-- Base color groups:
-- - basecolor_white
-- - basecolor_grey
-- - basecolor_black
-- - basecolor_red
-- - basecolor_yellow
-- - basecolor_green
-- - basecolor_cyan
-- - basecolor_blue
-- - basecolor_magenta

-- Extended color groups (* = equal to a base color):
-- * excolor_white
-- - excolor_lightgrey
-- * excolor_grey
-- - excolor_darkgrey
-- * excolor_black
-- * excolor_red
-- - excolor_orange
-- * excolor_yellow
-- - excolor_lime
-- * excolor_green
-- - excolor_aqua
-- * excolor_cyan
-- - excolor_sky_blue
-- * excolor_blue
-- - excolor_violet
-- * excolor_magenta
-- - excolor_red_violet

-- The whole unifieddyes palette as groups:
-- - unicolor_<excolor>
-- For the following, no white/grey/black is allowed:
-- - unicolor_medium_<excolor>
-- - unicolor_dark_<excolor>
-- - unicolor_light_<excolor>
-- - unicolor_<excolor>_s50
-- - unicolor_medium_<excolor>_s50
-- - unicolor_dark_<excolor>_s50

-- Local stuff
local dyelocal = {}

-- This collection of colors is partly a historic thing, partly something else.
dyelocal.dyes = {
	{"white",      "Bone Meal",     {dye=1, basecolor_white=1,   excolor_white=1,     unicolor_white=1}},
	{"grey",       "Light Grey Dye",      {dye=1, basecolor_grey=1,    excolor_grey=1,      unicolor_grey=1}},
	{"dark_grey",  "Grey Dye", {dye=1, basecolor_grey=1,    excolor_darkgrey=1,  unicolor_darkgrey=1}},
	{"black",      "Ink Sac",     {dye=1, basecolor_black=1,   excolor_black=1,     unicolor_black=1}},
	{"violet",     "Violet Dye",    {dye=1, basecolor_magenta=1, excolor_violet=1,    unicolor_violet=1}},
	{"blue",       "Lapis Lazuli",      {dye=1, basecolor_blue=1,    excolor_blue=1,      unicolor_blue=1}},
	{"lightblue",  "Light Blue Dye",      {dye=1, basecolor_blue=1,    excolor_blue=1,   unicolor_light_blue=1}},
	{"cyan",       "Cyan Dye",      {dye=1, basecolor_cyan=1,    excolor_cyan=1,      unicolor_cyan=1}},
	{"dark_green", "Cactus Green",{dye=1, basecolor_green=1,   excolor_green=1,     unicolor_dark_green=1}},
	{"green",      "Lime Dye",     {dye=1, basecolor_green=1,   excolor_green=1,     unicolor_green=1}},
	{"yellow",     "Dandelion Yellow",    {dye=1, basecolor_yellow=1,  excolor_yellow=1,    unicolor_yellow=1}},
	{"brown",      "Cocoa Beans",     {dye=1, basecolor_yellow=1,  excolor_orange=1,    unicolor_dark_orange=1}},
	{"orange",     "Orange Dye",    {dye=1, basecolor_orange=1,  excolor_orange=1,    unicolor_orange=1}},
	{"red",        "Rose Red",       {dye=1, basecolor_red=1,     excolor_red=1,       unicolor_red=1}},
	{"magenta",    "Magenta Dye",   {dye=1, basecolor_magenta=1, excolor_red_violet=1,unicolor_red_violet=1}},
	{"pink",       "Pink Dye",      {dye=1, basecolor_red=1,     excolor_red=1,       unicolor_light_red=1}},
}

-- Define items
for _, row in ipairs(dyelocal.dyes) do
	local name = row[1]
	local description = row[2]
	local groups = row[3]
	local item_name = "dye:"..name
	local item_image = "dye_"..name..".png"
	minetest.register_craftitem(item_name, {
		inventory_image = item_image,
		description = description,
		groups = groups,
		stack_max = 64,
	})
end

minetest.register_craftitem("dye:white", {
	inventory_image = "dye_white.png",
	description = "Bone Meal",
	stack_max = 64,
	groups = {dye=1, basecolor_white=1,   excolor_white=1,     unicolor_white=1},
	on_place = function(itemstack, user, pointed_thing) 
		if(duengen(pointed_thing)) then
			itemstack:take_item()
		end
		return itemstack
	end,
})

-- Dye mixing
minetest.register_craft({
	type = "shapeless",
	output = "dye:dark_grey 2",
	recipe = {"dye:black", "dye:white"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:lightblue 2",
	recipe = {"dye:blue", "dye:white"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:grey 3",
	recipe = {"dye:black", "dye:white", "dye:white"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:grey 2",
	recipe = {"dye:dark_grey", "dye:white"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:green 2",
	recipe = {"dye:dark_green", "dye:white"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:magenta 4",
	recipe = {"dye:blue", "dye:white", "dye:red", "dye:red"},
})

minetest.register_craft({
	type = "shapeless",
	output = "dye:pink 2",
	recipe = {"dye:red", "dye:white"},
})

minetest.register_craft({
	type = "shapeless",
	output = "dye:cyan 2",
	recipe = {"dye:blue", "dye:dark_green"},
})

minetest.register_craft({
	type = "shapeless",
	output = "dye:violet 2",
	recipe = {"dye:blue", "dye:red"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:orange 2",
	recipe = {"dye:yellow", "dye:red"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:magenta 2",
	recipe = {"dye:violet", "dye:pink"},
})
minetest.register_craft({
	type = "shapeless",
	output = "dye:magenta 3",
	recipe = {"dye:pink", "dye:red", "dye:blue"},
})

-- Dye creation
minetest.register_craft({
	output = "dye:yellow",
	recipe = {{"flowers:dandelion_yellow"}},
})
minetest.register_craft({
	output = "dye:yellow 2",
	recipe = {{"flowers:sunflower"}},
})
minetest.register_craft({
	output = "dye:lightblue",
	recipe = {{"flowers:blue_orchid"}},
})
minetest.register_craft({
	output = "dye:grey",
	recipe = {{"flowers:azure_bluet"}},
})
minetest.register_craft({
	output = "dye:grey",
	recipe = {{"flowers:oxeye_daisy"}},
})
minetest.register_craft({
	output = "dye:grey",
	recipe = {{"flowers:tulip_white"}},
})
minetest.register_craft({
	output = "dye:magenta",
	recipe = {{"flowers:allium"}},
})
minetest.register_craft({
	output = "dye:magenta 2",
	recipe = {{"flowers:lilac"}},
})
minetest.register_craft({
	output = "dye:orange",
	recipe = {{"flowers:tulip_orange"}},
})
minetest.register_craft({
	output = "dye:pink",
	recipe = {{"flowers:tulip_pink"}},
})
minetest.register_craft({
	output = "dye:pink 2",
	recipe = {{"flowers:peony"}},
})
minetest.register_craft({
	output = "dye:red",
	recipe = {{"flowers:poppy"}},
})
minetest.register_craft({
	output = "dye:red",
	recipe = {{"flowers:tulip_red"}},
})
minetest.register_craft({
	output = "dye:red 2",
	recipe = {{"flowers:rose_bush"}},
})
minetest.register_craft({
	type = "cooking",
	output = "dye:dark_green",
	recipe = "default:cactus",
	cooktime = 10,
})
minetest.register_craft({
	output = "dye:white 3",
	recipe = {{"default:bone"}},
})
minetest.register_craft({
	output = "dye:white 9",
	recipe = {{"default:boneblock"}},
})

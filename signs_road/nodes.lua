--[[
    signs_road mod for Minetest - Various road signs with text displayed
    on.
    (c) Pierre-Yves Rollo

    This file is part of signs_road.

    signs_road is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    signs_road is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with signs_road.  If not, see <http://www.gnu.org/licenses/>.
--]]

local models = {
	blue_street={
		depth = 1/16,
		width = 14/16,
		height = 12/16,
		entity_fields = {
			resolution = { x = 144, y = 64 },
			maxlines = 3,
			color="#fff",
		},
		node_fields = {
			description="Blue street sign",
			tiles={"signs_blue_street.png"},
			inventory_image="signs_blue_street_inventory.png",
		},
	},
	green_street={
		depth=1/32,
		width = 1,
		height = 6/16,
		entity_fields = {
			resolution = { x = 96, y = 64 },
			maxlines = 1,
			color="#fff",
		},
		node_fields = {
			description="Green street sign",
			tiles={"signs_green_street.png"},
			inventory_image="signs_green_street_inventory.png",
		},
	},
	black_right={
		depth=1/32,
		width = 1,
		height = 0.5,
		entity_fields = {
			resolution = { x = 96, y = 64 },
			maxlines = 1,
			color="#000",
		},
		node_fields = {
			description="Black direction sign",
			tiles={"signs_black_right.png"},
			inventory_image="signs_black_inventory.png",
			on_place=signs.on_place_direction,
			on_rightclick=signs.on_right_click_direction,
		},
	},
	black_left={
		depth=1/32,
		width = 1,
		height = 0.5,
		entity_fields = {
			resolution = { x = 96, y = 64 },
			maxlines = 1,
			color="#000",
		},
		node_fields = {
			description="Black direction sign",
			tiles={"signs_black_left.png"},
			inventory_image="signs_black_inventory.png",
			groups={not_in_creative_inventory=1},
			drop="signs_road:black_right",
			on_place=signs.on_place_direction,
			on_rightclick=signs.on_right_click_direction,
		},
	},
}


for name, model in pairs(models)
do
	signs.register_sign("signs_road", name, model)
end

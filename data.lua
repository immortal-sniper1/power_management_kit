-- transformer 



trafos_hide_overlay = nil
if settings.startup["trafos-hide-alt-overlay"].value then
	trafos_hide_overlay = "hide-alt-info"
end
trafopipecoverspictures = function()
  return {
    north =
    {
      layers =
      {
        {
          filename = "__Transformers__/graphics/transparent32.png",
          priority = "extra-high",
          width = 32,
          height = 32,
        },
      }
    },
    east =
    {
      layers =
      {
        {
          filename = "__Transformers__/graphics/transparent32.png",
          priority = "extra-high",
          width = 32,
          height = 32,
        },
      }
    },
    south =
    {
      layers =
      {
        {
          filename = "__Transformers__/graphics/transparent32.png",
          priority = "extra-high",
          width = 32,
          height = 32,
        }
      }
    },
    west =
    {
      layers =
      {
        {
          filename = "__Transformers__/graphics/transparent32.png",
          priority = "extra-high",
          width = 32,
          height = 32,
        }
      }
    }
  }
end


transparent_pic =
{
    filename = "__Transformers__/graphics/transparent.png",
    priority = "extra-high",
    width = 1,
    height = 1,
    frame_count = 1
}
con_pictures =
{
  filename = "__Transformers__/graphics/transparent.png",
  priority = "high",
  width = 1,
  height = 1,
  axially_symmetrical = false,
  direction_count = 1,
}
con_copper_wire_picture =
{
  filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
  priority = "extra-high-no-scale",
  width = 224,
  height = 46
}
con_green_wire_picture =
{
  filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
  priority = "extra-high-no-scale",
  width = 224,
  height = 46
}
con_radius_visualisation_picture =
{
  filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
  width = 12,
  height = 12
}
con_red_wire_picture =
{
  filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
  priority = "extra-high-no-scale",
  width = 224,
  height = 46
}
con_wire_shadow_picture =
{
  filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
  priority = "extra-high-no-scale",
  width = 224,
  height = 46
}

resistances_immune=		
		{
		{
			type = "physical",
			percent = 100
		},
		{
			type = "impact",
			percent = 100
		},
		{
			type = "fire",
			percent = 100
		},
		{
			type = "acid",
			percent = 100
		},
		{
			type = "poison",
			percent = 100
		},
		{
			type = "explosion",
			percent = 100
		},
		{
			type = "laser",
			percent = 100
		},
		}





		data:extend(
		{
			{
				type = "recipe",
				name = "traformator-1",
				enabled = "false",
				ingredients = {
					{"iron-plate", 15},
					{"steel-plate", 2},
					{"copper-cable", 100},
				},
				result = "traformator-1",
			},
			{
				type = "recipe",
				name = "traformator-2",
				enabled = "false",
				ingredients = {
					{"iron-plate", 15},
					{"steel-plate", 2},
					{"copper-cable", 100},
				},
				result = "traformator-2",
			},
			{
				type = "recipe",
				name = "traformator-3",
				enabled = "false",
				ingredients = {
					{"iron-plate", 15},
					{"steel-plate", 2},
					{"copper-cable", 100},
				},
				result = "traformator-3",
			},
			{
				type = "recipe",
				name = "traformator-4",
				enabled = "false",
				ingredients = {
					{"iron-plate", 15},
					{"steel-plate", 2},
					{"copper-cable", 100},
				},
				result = "traformator-1",
			},
			{
				type = "recipe",
				name = "traformator-4",
				enabled = "false",
				ingredients = {
					{"iron-plate", 15},
					{"steel-plate", 2},
					{"copper-cable", 100},
				},
				result = "traformator-1",
			},
			{
				type = "recipe",
				name = "traformator-5",
				enabled = "false",
				ingredients = {
					{"iron-plate", 15},
					{"steel-plate", 2},
					{"copper-cable", 100},
				},
				result = "traformator-5",
			},
		})


for i=1, 5 do
	data:extend
	({	------item---------------------------------------------------------------------------
		{
		type = "item",
		name = "traformator-"..i,
		icon = "__Transformers__/graphics/icons/trafoicon.png",
		--flags = {"goes-to-quickbar"},
		subgroup = "extraction-machine",
		order = "c1",
		place_result = "traformator-"..i.."-placer",
		icon_size = 32,
		stack_size = 4
		},
	})



	data:extend
	({	------item---------------------------------------------------------------------------
		{
		type = "item",
		name = "traformator-"..i,
		icon = "__Transformers__/graphics/icons/trafoicon.png",
		--flags = {"goes-to-quickbar"},
		subgroup = "extraction-machine",
		order = "c1",
		place_result = "traformator-"..i.."-placer",
		icon_size = 32,
		stack_size = 4
		},
		------displayed entity---------------------------------------------------------------------------
		{
			type = "boiler",
			name = "traformator-"..i.."-placer",
			icon = "__Transformers__/graphics/icons/trafoicon.png",
			flags = {"placeable-neutral","player-creation"},
			minable = {mining_time = 1, result = "traformator-"..i},
			max_health = 300,
			corpse = "big-remnants",
			icon_size = 32,
			dying_explosion = "medium-explosion",
			resistances =
			{
			{
				type = "fire",
				percent = 70
			}
			},
			rotable = 0,
			collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
			collision_box = {{-0.7, -1.7}, {0.7, 1.7}},
			selection_box = {{-0.9, -1.9}, {0.9, 1.9}},
			drawing_box = {{-1.0, -3.0}, {1.0, 2.0}},
			animation_speed_coefficient = 32,
			structure_animation_speed_coefficient = 1.2,
			structure_animation_movement_cooldown = 10,
			belt_horizontal = transparent_pic, -- specified in transport-belt-pictures.lua
			belt_vertical = transparent_pic,
			ending_top = transparent_pic,
			ending_bottom = transparent_pic,
			ending_side = transparent_pic,
			starting_top = transparent_pic,
			starting_bottom = transparent_pic,
			starting_side = transparent_pic,
			speed = 0,
			alert_icon_scale =0,
			fluid_box={ pipe_connections = {},},
			output_fluid_box =
			{
				pipe_connections ={},
			},
			energy_consumption=1000.."MW",
			burning_cooldown = 1,
			target_temperature= 100,
			energy_source =   {
				type = "electric",
				input_priority = "secondary",
				usage_priority = "secondary-input",
				emissions = 0,
				render_no_power_icon =  false ,
				render_no_network_icon = false,
			},
			fire_flicker_enabled = false,
			fire ={},
			fire_glow_flicker_enabled = false,
			fire_glow ={},
			structure = {
				north = {
					filename = "__Transformers__/graphics/transformer/trafosprites-placer.png",
					x = 233,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				east = {
					filename = "__Transformers__/graphics/transformer/trafosprites-placer.png",
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {1.5, -1.15}
				},
				south = {
					filename = "__Transformers__/graphics/transformer/trafosprites-placer.png",
					x = 699,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				west = {
					filename = "__Transformers__/graphics/transformer/trafosprites-placer.png",
					x = 466,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {1.5, -1.15}
				},
			},
			ending_patch = ending_patch_prototype
			},
		{
			type = "boiler",
			name = "traformator-"..i,
			icon = "__Transformers__/graphics/icons/trafoicon.png",
			flags = {"placeable-neutral","player-creation"},
			minable = {mining_time = 1, result = "traformator-"..i},
			max_health = 300,
			corpse = "big-remnants",
			icon_size = 32,
			dying_explosion = "medium-explosion",
			placeable_by = { item="traformator-"..i, count = 1},
			resistances =
			{
			{
				type = "fire",
				percent = 70
			}
			},
			rotable = 0,
			collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
			collision_box = {{-0.7, -1.7}, {0.7, 1.7}},
			selection_box = {{-0.9, -1.9}, {0.9, 1.9}},
			drawing_box = {{-1.0, -3.0}, {1.0, 2.0}},
			animation_speed_coefficient = 32,
			structure_animation_speed_coefficient = 1.2,
			structure_animation_movement_cooldown = 10,
			belt_horizontal = transparent_pic, -- specified in transport-belt-pictures.lua
			belt_vertical = transparent_pic,
			ending_top = transparent_pic,
			ending_bottom = transparent_pic,
			ending_side = transparent_pic,
			starting_top = transparent_pic,
			starting_bottom = transparent_pic,
			starting_side = transparent_pic,
			speed = 0,
			alert_icon_scale =0,
			fluid_box={ pipe_connections = {},},
			output_fluid_box =
			{
				pipe_connections ={},
			},
			energy_consumption=1000.."MW",
			burning_cooldown = 1,
			target_temperature= 100,
			energy_source =   {
				type = "void",
				input_priority = "secondary",
				usage_priority = "secondary-input",
				emissions = 0,
				render_no_power_icon =  false ,
				render_no_network_icon = false,
			},
			fire_flicker_enabled = false,
			fire ={},
			fire_glow_flicker_enabled = false,
			fire_glow ={},
			structure = {
				north = {
					filename = "__Transformers__/graphics/transformer/trafosprites.png",
					x = 233,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				east = {
					filename = "__Transformers__/graphics/transformer/trafosprites.png",
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {1.5, -1.15}
				},
				south = {
					filename = "__Transformers__/graphics/transformer/trafosprites.png",
					x = 699,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				west = {
					filename = "__Transformers__/graphics/transformer/trafosprites.png",
					x = 466,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {1.5, -1.15}
				},
			},
			ending_patch = ending_patch_prototype
		}
	})
	
end







	{
		type = "technology",
		name = "traformator",
		icon = "__power_management_kit__/graphics/trafoicon.png",
		effects =
		{{
			type = "unlock-recipe",
			recipe = "traformator-1"
		},
				effects =
		{
			type = "unlock-recipe",
			recipe = "traformator-2"
		},
				effects =
		{
			type = "unlock-recipe",
			recipe = "traformator-3"
		},
				effects =
		{
			type = "unlock-recipe",
			recipe = "traformator-4"
		},
				effects =
		{
			type = "unlock-recipe",
			recipe = "traformator-5"
		}},
		prerequisites = { "electric-energy-accumulators", "electric-energy-distribution-1"},
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}, },
			time = 30
		},
		order = "c-e-c",
		icon_size = 32,
	},



















{
    type = "electric-pole",
    name = "trafo-connection_src_0",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	icon_size = 32,
	order = "z",
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.5, -0.4},
          green = {2.5, -0.4},
          red = {2.5, -0.4}
        },
        wire =
        {
          copper = {0.0, -3},
          green = {0.0,-3},
          red = {0.0,-3}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_src_2",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {1.3, 0.2},
          green = {1.3, 0.2},
          red = {1.3, 0.2}
        },
        wire =
        {
          copper = {0.6, -1.8},
          green = {0.6, -1.8},
          red = {0.6, -1.8}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_src_4",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.5, 1.75},
          green = {2.5, 1.75},
          red = {2.5, 1.75}
        },
        wire =
        {
          copper = {0.0, -0.2},
          green = {0.0, -0.2},
          red = {0.0, -0.2}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_src_6",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.0, 0.6},
          green = {2.0, 0.6},
          red = {2.0, 0.6}
        },
        wire =
        {
          copper = {-0.75, -1.75},
          green = {-0.75, -1.75},
          red = {-0.75, -1.75}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_tar_0",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {3.0, 1.5},
          green = {3.0, 1.5},
          red = {3.0, 1.5}
        },
        wire =
        {
          copper = {0.0, -0.75},
          green = {0.0, -0.75},
          red = {0.0, -0.75}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_tar_2",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.8, 0.5},
          green = {2.8, 0.5},
          red = {2.8, 0.5}
        },
        wire =
        {
          copper = {-0.8, -2.1},
          green = {-0.8, -2.1},
          red = {-0.8, -2.1}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_tar_4",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {3.0, -0.2},
          green = {3.0, -0.2},
          red = {3.0, -0.2}
        },
        wire =
        {
          copper = {0.0, -3.0},
          green = {0.0, -3.0},
          red = {0.0, -3.0}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  },
  {
    type = "electric-pole",
    name = "trafo-connection_tar_6",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation","not-deconstructable","not-blueprintable"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = resistances_immune,
	collision_mask = {"ghost-layer"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    maximum_wire_distance = 5,
    supply_area_distance = 1,
	order = "z",
	icon_size = 32,
    pictures = con_pictures,
    connection_points =
    {
      {
        shadow =
        {
          copper = {1.8, 0.2},
          green = {1.8, 0.2},
          red = {1.8, 0.2}
        },
        wire =
        {
          copper = {0.6, -2.0},
          green = {0.6, -2.0},
          red = {0.6, -2.0}
        }
      },
    },
    copper_wire_picture = con_copper_wire_picture,
    green_wire_picture = con_green_wire_picture,
    radius_visualisation_picture = con_radius_visualisation_picture,
    red_wire_picture = con_red_wire_picture,
    wire_shadow_picture = con_wire_shadow_picture
  }
}
)










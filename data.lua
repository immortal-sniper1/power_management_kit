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
          filename = "__power_management_kit__/graphics/transparent32.png",
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
          filename = "__power_management_kit__/graphics/transparent32.png",
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
          filename = "__power_management_kit__/graphics/transparent32.png",
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
          filename = "__power_management_kit__/graphics/transparent32.png",
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
    filename = "__power_management_kit__/graphics/transparent.png",
    priority = "extra-high",
    width = 1,
    height = 1,
    frame_count = 1
}
con_pictures =
{
  filename = "__power_management_kit__/graphics/transparent.png",
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
		icon = "__power_management_kit__/graphics/icons/trafoicon.png",
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
		icon = "__power_management_kit__/graphics/icons/trafoicon.png",
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
			icon = "__power_management_kit__/graphics/icons/trafoicon.png",
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
			energy_consumption=1000,
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
					filename = "__power_management_kit__/graphics/transformer/trafosprites-placer.png",
					x = 233,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				east = {
					filename = "__power_management_kit__/graphics/transformer/trafosprites-placer.png",
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {1.5, -1.15}
				},
				south = {
					filename = "__power_management_kit__/graphics/transformer/trafosprites-placer.png",
					x = 699,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				west = {
					filename = "__power_management_kit__/graphics/transformer/trafosprites-placer.png",
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
			icon = "__power_management_kit__/graphics/icons/trafoicon.png",
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
			energy_consumption=1000,
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
					filename = "__power_management_kit__/graphics/transformer/trafosprites.png",
					x = 233,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				east = {
					filename = "__power_management_kit__/graphics/transformer/trafosprites.png",
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {1.5, -1.15}
				},
				south = {
					filename = "__power_management_kit__/graphics/transformer/trafosprites.png",
					x = 699,
					width = 233,
					height = 155,
					frame_count = 1,
					shift = {2.6, -0.45}
				},
				west = {
					filename = "__power_management_kit__/graphics/transformer/trafosprites.png",
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





data:extend(
{

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
})

















data:extend(
{
	{
		type = "fluid",
		name = "traformator-water",
		default_temperature = 15,
		max_temperature = 100,
		heat_capacity = 200,
		base_color = {r=0, g=0.34, b=0.6},
		flow_color = {r=0.7, g=0.7, b=0.7},
		icon = "__power_management_kit__/graphics/flash.png",
		icon_size = 32,
		order = "a[fluid]-a[water]",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		auto_barrel = false,
		hidden=true
	},
	{
		type = "fluid",
		name = "traformator-steam",
		default_temperature = 15,
		max_temperature = 500,
		heat_capacity = 200,
		icon = "__power_management_kit__/graphics/flash.png",
		icon_size = 32,
		base_color = {r=0.5, g=0.5, b=0.5},
		flow_color = {r=1.0, g=1.0, b=1.0},
		order = "a[fluid]-b[steam]",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		gas_temperature = 15,
		auto_barrel = false,
		hidden=true
	},
	{
		type = "boiler",
		name = "traformator-source",
		icon = "__power_management_kit__/graphics/icons/trafoicon.png",
		icon_size = 32,
		order = "z",
		flags = {"placeable-neutral", "player-creation","not-on-map","not-deconstructable","not-blueprintable", trafos_hide_overlay},
		selectable_in_game=false,
		max_health = 200,
		corpse = "medium-remnants",
		collision_mask = {"ghost-layer"},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		mode = "output-to-separate-pipe",
		resistances =resistances_immune,
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
		target_temperature = 100,
		fluid_box =
		{
			production_type = "output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = trafopipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0.5, 1.5} }},
			secondary_draw_orders = { north = -1 },
			off_when_no_fluid_recipe = true
		},
		output_fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = 1,
			pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{type = "output", position = {-0.5, 1.5}}
			},
			production_type = "output",
			filter = "traformator-steam"
		},
		energy_consumption = 100,
		energy_source =
		{
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 0
		},
		structure = {
		north =	{ layers = {transparent_pic} },
		east = { layers = {transparent_pic} },
		south = { layers = {transparent_pic} },
		west = { layers = {transparent_pic} }, },
	
		fire_flicker_enabled = false,
		fire ={},
		fire_glow_flicker_enabled = false,
		fire_glow ={},
		burning_cooldown = 0.1
	},

})









for i=1, 5 do
	data:extend(
{

	{
		type = "generator",
		name = "traformator-target-"..i.."-sw", --powered from south or west
		icon = "__power_management_kit__/graphics/icons/trafoicon.png",
		icon_size = 32,
		order = "z",
		flags = {"placeable-neutral","player-creation","not-on-map","not-deconstructable","not-blueprintable", trafos_hide_overlay},
		selectable_in_game=false,
		max_health = 300,
		corpse = "big-remnants",
		collision_mask = {"ghost-layer"},
		dying_explosion = "medium-explosion",
		alert_icon_shift = util.by_pixel(0, -12),
		effectivity = 0.96,
		fluid_usage_per_tick = 10,
		maximum_temperature = 100,
		burns_fluid = false,
		resistances = resistances_immune,
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_covers = trafopipecoverspictures(),
			pipe_connections =
			{
				--{ type = "input", position = {-0.5, 1.5} },
				{ type = "input", position = {0.5, 1.5} },
			},
			production_type = "input-output",
			filter = "trafo-steam-"..i,
			minimum_temperature = 100.0
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation = { layers = {transparent_pic} },
		vertical_animation = { layers = {transparent_pic} },
		working_sound =
		{
			sound =
			{
				filename = "__power_management_kit__/sound/MainsBrum50Hz.ogg",
				volume = 0.5
			},
			match_speed_to_activity = true
		},
		min_perceived_performance = 0.25,
		performance_to_sound_speedup = 0.5
	},
	{
		type = "generator",
		name = "traformator-target-"..i.."-ne", --powered from north or east
		icon = "__power_management_kit__/graphics/icons/trafoicon.png",
		icon_size = 32,
		order = "z",
		flags = {"placeable-neutral","player-creation","not-on-map","not-deconstructable","not-blueprintable", trafos_hide_overlay},
		selectable_in_game=false,
		max_health = 300,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		alert_icon_shift = util.by_pixel(0, -12),
		effectivity = 0.96,
		fluid_usage_per_tick = 10,
		maximum_temperature = 100,
		burns_fluid = false,
		resistances = resistances_immune,
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
		fluid_box =
		{
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_covers = trafopipecoverspictures(),
			pipe_connections =
			{
				{ type = "input", position = {-0.5, -1.5} },
				--{ type = "input", position = {0.5, -1.5} },
			},
			production_type = "input-output",
			filter = "traformator-steam",
			minimum_temperature = 100.0
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation = { layers = {transparent_pic} },
		vertical_animation = { layers = {transparent_pic} },
		working_sound =
		{
			sound =
			{
				filename = "__power_management_kit__/sound/MainsBrum50Hz.ogg",
				volume = 0.5
			},
			match_speed_to_activity = true
		},
		min_perceived_performance = 0.25,
		performance_to_sound_speedup = 0.5
	}
}
)

end
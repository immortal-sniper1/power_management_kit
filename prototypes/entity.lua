--require('prototypes.recipe')
require('recipe')


     cha= { nil , 5, 10, 25, 50, 75, 100, 250, 500, 750, 1000, 2500, 5000, 7500, 10000, 25000, 50000, 75000, 100000, 250000, 500000};
         for xx=1,20,1 do
      




data:extend({


    {
    type = "item",
    name = "accumulator-"..xx+1,
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator]-a[accumulator]",
    place_result = "accumulator-"..xx+1,
    stack_size = 50
  },

    {
    type = "recipe",
    name = "accumulator-"..xx+1,
    energy_required = 10,
    ingredients =
    {
      {"iron-plate", 2},
      {"accumulator-"..xx, 2},
      {"battery", 5}
    },
    result = "accumulator-"..xx+1
  },

  
    {
    type = "accumulator",
    name = "accumulator-"..xx+1,
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-"..xx+1},
    max_health = 180+75*xx,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
  --  damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = (1+cha[xx+1]/60).."MJ",
      usage_priority = "tertiary",
      input_flow_limit = (cha[xx+1]).."MW",
      output_flow_limit = (cha[xx+1]).."MW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
 --   vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.5
      },
      --persistent = true,
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },




})

    end
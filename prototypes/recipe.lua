data:extend({

    {
    type = "recipe",
    name = "accumulator-1",
    energy_required = 10,
    ingredients =
    {
      {"iron-plate", 2},
      {"accumulator", 2},
      {"battery", 5}
    },
    result = "accumulator-1"
  },
      {
    type = "item",
    name = "accumulator-1",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator]-a[accumulator]",
    place_result = "accumulator-1",
    stack_size = 50
  },


      {
    type = "accumulator",
    name = "accumulator-1",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-1"},
    max_health = 200,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
   -- damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "0.85MJ",
      usage_priority = "tertiary",
      input_flow_limit = "50MW",
      output_flow_limit = "50MW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
  --  vehicle_impact_sound = sounds.generic_impact,
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

  {
    type = "recipe",
    name = "accumulator-msf",
    energy_required = 30,
    ingredients =
    {
      {"iron-plate", 12},
      {"copper-plate", 20},
      {"copper-cable", 15}
    },
    result = "accumulator-msf"
  },


      {
    type = "item",
    name = "accumulator-msf",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator]-a[accumulator]",
    place_result = "accumulator-msf",
    stack_size = 50
  },




      {
    type = "accumulator",
    name = "accumulator-msf",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-msf"},
    max_health = 200,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
   -- damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "0.85MJ",
      usage_priority = "tertiary",
      input_flow_limit = "50MW",
      output_flow_limit = "50MW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
  --  vehicle_impact_sound = sounds.generic_impact,
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


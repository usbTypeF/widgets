local widget = table.deepcopy(data.raw["item"]["iron-gear-wheel"])

widget.name = "widget"
widget.icons = {
  {
    icon = widget.icon,
    icon_size = widget.icon_size,
    tint = {r=0.6,g=0.8,b=1,a=1}
  },
}

widget.stack_size = 1024

local widgetrecipe = {
  type = "recipe",
  name = "widget",
  order = "widget A",
  enabled = false,
  energy_required = 1,
  ingredients = {
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "iron-stick", amount = 1},
    {type = "item", name = "copper-plate", amount = 1},
    {type = "item", name = "copper-cable", amount = 1}
  },
  results = {{type = "item", name = "widget", amount = 1}}
}

data:extend{widget, widgetrecipe}

--

local kilowidget = table.deepcopy(data.raw["item"]["iron-gear-wheel"])

kilowidget.name = "kilowidget"
kilowidget.icons = {
  {
    icon = kilowidget.icon,
    icon_size = kilowidget.icon_size,
    tint = {r=1,g=0.8,b=0.6,a=1}
  },
}

kilowidget.stack_size = 1024

local kilowidgetrecipe = {
  type = "recipe",
  name = "kilowidget",
  order = "widget B",
  enabled = false,
  energy_required = 1,
  ingredients = {
    {type = "item", name = "widget", amount = 1024},
    {type = "item", name = "steel-plate", amount = 16},
    {type = "item", name = "heat-pipe", amount = 16},
    {type = "item", name = "plastic-bar", amount = 16}
  },
  results = {{type = "item", name = "kilowidget", amount = 1}}
}

data:extend{kilowidget, kilowidgetrecipe}

--

local megawidget = table.deepcopy(data.raw["item"]["iron-gear-wheel"])

megawidget.name = "megawidget"
megawidget.icons = {
  {
    icon = megawidget.icon,
    icon_size = megawidget.icon_size,
    tint = {r=0.8,g=1,b=0.6,a=1}
  },
}

megawidget.stack_size = 1024

local megawidgetrecipe = {
  type = "recipe",
  name = "megawidget",
  order = "widget C",
  enabled = false,
  energy_required = 1,
  ingredients = {
    {type = "item", name = "kilowidget", amount = 1024},
    {type = "item", name = "processing-unit", amount = 16},
    {type = "item", name = "selector-combinatgor", amount = 16},
    {type = "item", name = "low-density-structure", amount = 16}
  },
  results = {{type = "item", name = "megawidget", amount = 1}}
}

data:extend{megawidget, megawidgetrecipe}

--

local gigawidget = table.deepcopy(data.raw["item"]["iron-gear-wheel"])

gigawidget.name = "gigawidget"
gigawidget.icons = {
  {
    icon = gigawidget.icon,
    icon_size = gigawidget.icon_size,
    tint = {r=0.6,g=1,b=0.8,a=1}
  },
}

gigawidget.stack_size = 1024

local gigawidgetrecipe = {
  type = "recipe",
  name = "gigawidget",
  order = "widget D",
  enabled = false,
  energy_required = 1,
  ingredients = {
    {type = "item", name = "megawidget", amount = 1024},
    {type = "item", name = "spidertron", amount = 1},
    {type = "item", name = "rocket-silo", amount = 1},
    {type = "item", name = "roboport", amount = 1}
  },
  results = {{type = "item", name = "gigawidget", amount = 1}}
}

data:extend{gigawidget, gigawidgetrecipe}

--

local widgettech = {
  type = "technology",
  name = "widget",
  icons = {
    {
      icon = "__base__/graphics/icons/iron-gear-wheel.png",
      icon_size = 64,
      tint = {r=0.6,g=0.8,b=1,a=1}
    }
  },
  effects = {
    {
      type = "unlock-recipe",
      recipe = "widget"
    }
  },
  prerequisites = {"automation-science-pack"},
  unit = {
    count = 50,
    ingredients = {
      {"automation-science-pack", 1}
    },
    time = 15
  },
  order = "a-a"
}

data:extend{widgettech}

--

local kilowidgettech = {
  type = "technology",
  name = "kilowidget",
  icons = {
    {
      icon = "__base__/graphics/icons/iron-gear-wheel.png",
      icon_size = 64,
      tint = {r=1,g=0.8,b=0.6,a=1}
    }
  },
  effects = {
    {
      type = "unlock-recipe",
      recipe = "kilowidget"
    }
  },
  prerequisites = {"widget"},
  unit = {
    count = 250,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 30
  },
  order = "a-b"
}

data:extend{kilowidgettech}

--

local megawidgettech = {
  type = "technology",
  name = "megawidget",
  icons = {
    {
      icon = "__base__/graphics/icons/iron-gear-wheel.png",
      icon_size = 64,
      tint = {r=0.8,g=1,b=0.6,a=1}
    }
  },
  effects = {
    {
      type = "unlock-recipe",
      recipe = "megawidget"
    }
  },
  prerequisites = {"kilowidget"},
  unit = {
    count = 500,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 45
  },
  order = "a-c"
}

data:extend{megawidgettech}

--

local gigawidgettech = {
  type = "technology",
  name = "gigawidget",
  icons = {
    {
      icon = "__base__/graphics/icons/iron-gear-wheel.png",
      icon_size = 64,
      tint = {r=0.6,g=1,b=0.8,a=1}
    }
  },
  effects = {
    {
      type = "unlock-recipe",
      recipe = "gigawidget"
    }
  },
  prerequisites = {"megawidget"},
  unit = {
    count = 2500,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 60
  },
  order = "a-d"
}

data:extend{gigawidgettech}
return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 7,
  nextobjectid = 25,
  properties = {
    ["border"] = "",
    ["music"] = "grand_bells"
  },
  tilesets = {
    {
      name = "bg_dw_church_library_2_tileset",
      firstgid = 1,
      filename = "../../tilesets/bg_dw_church_library_2_tileset.tsx"
    },
    {
      name = "church_objects",
      firstgid = 261,
      filename = "../../tilesets/church_objects.tsx",
      exportfilename = "../../tilesets/church_objects.lua"
    },
    {
      name = "light_areas",
      firstgid = 281,
      filename = "../../tilesets/light_areas.tsx"
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "objects_parallax",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 171, 173, 173, 174, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 171, 173, 173, 174, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 171, 173, 173, 174, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 171, 173, 173, 174, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 171, 173, 173, 174, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "objects_party",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 134,
          y = 440,
          width = 360,
          height = 310,
          rotation = 0,
          gid = 280,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 640,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "fast_travel",
            ["marker"] = "entry_grand"
          }
        },
        {
          id = 20,
          name = "cameratarget",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 440,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["lockx"] = true,
            ["locky"] = true,
            ["marker"] = "targ",
            ["time"] = 1
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "objects_lightareas",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "darkness",
          type = "",
          shape = "point",
          x = 0,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["alpha"] = 0.5,
            ["highlight"] = true
          }
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 580,
          y = 670,
          width = 120,
          height = 510,
          rotation = 0,
          gid = 2147483931,
          visible = true,
          properties = {
            ["light"] = true,
            ["light_alpha"] = 0.1,
            ["light_color"] = "#ffffffff",
            ["light_type"] = 1
          }
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 680,
          width = 160,
          height = 680,
          rotation = 0,
          gid = 2147483931,
          visible = true,
          properties = {
            ["light"] = true,
            ["light_alpha"] = 0.1,
            ["light_color"] = "#ffffffff",
            ["light_type"] = 1
          }
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 680,
          width = 160,
          height = 680,
          rotation = 0,
          gid = 2147483931,
          visible = true,
          properties = {
            ["light"] = true,
            ["light_alpha"] = 0.1,
            ["light_color"] = "#ffffffff",
            ["light_type"] = 1
          }
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = -60,
          y = 670,
          width = 120,
          height = 510,
          rotation = 0,
          gid = 2147483931,
          visible = true,
          properties = {
            ["light"] = true,
            ["light_alpha"] = 0.1,
            ["light_color"] = "#ffffffff",
            ["light_type"] = 1
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 440,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 400,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 440,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 13,
          name = "spawn",
          type = "",
          shape = "point",
          x = 320,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "entry_ft",
          type = "",
          shape = "point",
          x = 320,
          y = 600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "targ",
          type = "",
          shape = "point",
          x = 320,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}

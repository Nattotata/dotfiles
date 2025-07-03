-- lua/plugins/nvim-surround.lua
return {
  "kylechui/nvim-surround",
  version = "*", -- use latest stable release
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      aliases = {
        ["b"] = "**",
      },
    })
  end,
}

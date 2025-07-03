return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  enabled = false,
  opts = {
    keymap = { preset = "super-tab" },
    completion = { documentation = { auto_show = false } },

    accept = { auto_brackets = { enabled = false } },
    menu = { auto_show = false },
  },
}

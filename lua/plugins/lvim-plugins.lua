-- this file includes extra-plugins and user-plugins, core-plugins settings is in config.lua
lvim.plugins = {
  { "doums/floaterm.nvim",
    config = function()
      require("floaterm").setup({
        keymaps = { exit = '<C-t>', normal = '<C-t>' },
      })
    end,
  },
  { "folke/tokyonight.nvim" },
  { "projekt0n/github-nvim-theme",
    config = function()
      require('github-theme').setup({})
    end,
  },
  { 'navarasu/onedark.nvim' },
  -- {
  --   "Pocco81/AutoSave.nvim",
  --   config = function()
  --     require("autosave").setup({
  --       enable = false,
  --       execution_message = "",
  --       events = { "InsertLeave", "TextChanged" },
  --       conditions = {
  --         exists = true,
  --         filename_is_not = { "config.lua" },
  --         filetype_is_not = {},
  --         modifiable = true,
  --       },
  --       write_all_buffers = false,
  --       on_off_commands = true,
  --       clean_command_line_interval = 0,
  --       debounce_delay = 135,
  --     })
  --   end,
  -- },
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "TroubleToggle",
  -- },
}

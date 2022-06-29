lvim.leader = "space"
lvim.keys.normal_mode = {
  ["<C-s>"] = ":w<cr>",
  ["<C-q>"] = false,
  ["<C-z>"] = "u",
}
lvim.keys.insert_mode = {
  ["<C-s>"] = "<esc>:w<cr>",
  ["<C-z>"] = "<esc>u",
}
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping


-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = {
  name = "+Telescope",
  p = { "<cmd>Telescope projects<CR>", "Projects" },
  f = { "<cmd>Telescope find_files<CR>", "Files" },
}
-- lvim.builtin.which_key.mappings["T"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  t = { ":terminal<cr>", "open in new window" },
  j = { ":5sp | terminal<cr>", "open below" },
  l = { ":vsp | terminal<cr>", "open on right" },
  c = { ":close<cr>", "close terminal" },
  vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { noremap = true, silent = true }),
}
lvim.builtin.which_key.mappings["w"] = {
  name = "+Windows",
  w = { "<C-w>w", "next window" },
  h = { "<C-w>h", "select left window" },
  j = { "<C-w>j", "select bottom window" },
  k = { "<C-w>k", "select top window" },
  l = { "<C-w>l", "select right window" },
  c = { ":q<cr>", "close window" },
}
lvim.builtin.which_key.mappings["b"] = {
  name = "+Buffers",
  j = { "<cmd>BufferLinePick<cr>", "Jump" },
  f = { "<cmd>Telescope buffers<cr>", "Find" },
  b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
  -- w = { "<cmd>BufferWipeout<cr>", "Wipeout" }, -- TODO: implement this for bufferline
  e = {
    "<cmd>BufferLinePickClose<cr>",
    "Pick which buffer to close",
  },
  h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
  l = {
    "<cmd>BufferLineCloseRight<cr>",
    "Close all to the right",
  },
  D = {
    "<cmd>BufferLineSortByDirectory<cr>",
    "Sort by directory",
  },
  L = {
    "<cmd>BufferLineSortByExtension<cr>",
    "Sort by language",
  },
  n = { ":bn<cr>", "next" },
  c = { ":bd<cr>", "close this buffer" },
}

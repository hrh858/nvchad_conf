---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>e"] = {':NvimTreeToggle<CR>'},

    ["<leader>j"] = {
      function()
        require("hop").hint_words()
      end,
      "Hop Word"
    },

    ["<leader>fj"] = {':Telescope jumplist<CR>'},

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  
}


-- local directions = require('hop.hint').HintDirection
-- vim.keymap.set('', 'f', function()
  -- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
-- end, {remap=true})
-- vim.keymap.set('', 'F', function()
  -- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
-- end, {remap=true})
-- vim.keymap.set('', 't', function()
  -- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
-- vim.keymap.set('', 'T', function()
  -- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})

-- more keybinds!

return M

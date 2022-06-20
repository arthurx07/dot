-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

-- M.plugins = {
--   user = require "custom.plugins"
-- }

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

M.ui = {
   theme = "radium",
   -- theme = "wpg",
}

return M

-- custom/plugins/init.lua

return {
  -- ["deviantfero/wpgtk.vim"] = { ft = "wpg" },
  ["jose-elias-alvarez/null-ls.nvim"] = {
  -- load it after nvim-lspconfig cuz we lazy loaded lspconfig
    after = "nvim-lspconfig",
    -- config = function()
    --   require("custom.plugins.null-ls").setup()
    -- end,
  },
}

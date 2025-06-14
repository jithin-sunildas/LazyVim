-- lua/plugins/treesitter.lua

return {
  { -- This table defines the nvim-treesitter plugin
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Good practice to include build command for treesitter
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "php",
        "rust",
        "blade", -- Good, you have blade here!
      },
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      -- You might have more treesitter config here already
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- --- Add this block to detect .blade.php files as 'blade' filetype ---
      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })
      ---------------------------------------------------------------------
    end,
  }, -- CLOSING CURLY BRACE FOR NVIM-TREESITTER PLUGIN DEFINITION

  { -- This is a separate table defining the jwalton512/vim-blade plugin
    "jwalton512/vim-blade",
    ft = "blade", -- Load this plugin specifically for 'blade' filetypes
  },

  -- You can add other treesitter-related or language-specific plugins here if needed
}

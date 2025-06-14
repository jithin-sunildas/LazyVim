-- lua/plugins/php.lua (corrected section)

return {
  -- ... (your mason.nvim configuration) ...

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
    opts = { -- Define your servers here directly
      servers = {
        -- PHPactor configuration
        phpactor = {
          -- You might need to adjust settings based on your PHPactor setup
          -- For example, if you want to use a specific PHP executable
          -- cmd = { "php", "vendor/bin/phpactor", "language-server" },
        },
        -- Intelephense configuration (uncomment and configure if you decide to use it)
        -- intelephense = {},
      },
    },
    config = function(_, opts) -- The `opts` here now contains the 'servers' table directly
      require("mason-lspconfig").setup()
      local lspconfig = require("lspconfig")

      -- Iterate over the servers defined in THIS plugin's `opts` table
      for server_name, server_opts in pairs(opts.servers) do
        if server_opts ~= false then -- Ensure server_opts exists and isn't explicitly disabled
          lspconfig[server_name].setup(server_opts)
        end
      end
    end,
  },

  -- ... (rest of your php.lua file: laravel.nvim, nvim-cmp-laravel, conform.nvim) ...
}

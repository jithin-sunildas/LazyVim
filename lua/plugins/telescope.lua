-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  opts = {
    extensions_list = { "fzf" },
  },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })
    require("telescope").load_extension("fzf")
  end,
}

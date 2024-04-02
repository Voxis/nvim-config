return {
  { 
    "catppuccin/nvim", name = "catppuccin", priority = 1000 
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed, not both.
      "nvim-telescope/telescope.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
  },
  "nvim-telescope/telescope-ui-select.nvim",
  "debugloop/telescope-undo.nvim",
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    "junegunn/fzf",
    build = ":call fzf#install()",
  },
  {
    "aaronhallaert/advanced-git-search.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-fugitive",
      "tpope/vim-rhubarb",
    },
  },
  { "nvim-telescope/telescope-live-grep-args.nvim" },
   {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
}

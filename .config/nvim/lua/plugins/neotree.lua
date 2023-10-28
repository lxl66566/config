return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            "node_modules",
          },
          hide_by_pattern = { -- uses glob style patterns
            "*.meta",
            "*/src/*/tsconfig.json",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            ".gitignored",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
      git_status = {
        symbols = {
          -- Change type
          added = "A", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "M", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "D", -- this can only be used in the git_status source
          renamed = "R", -- this can only be used in the git_status source
          -- Status type
          untracked = "U",
          ignored = "I",
          unstaged = "U",
          staged = "S",
          conflict = "C",
        },
      },
      window = {
        width = 25,
      },
    })
    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
  end
}

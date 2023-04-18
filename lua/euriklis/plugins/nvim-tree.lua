local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim tree documentation:
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change the color of the arrows
-- of the folders:

vim.cmd([[ highlight NvimTreeIndentMarker guifg=rgb(10,228,100)]])

-- call the nvim-tree package:
nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "🠚",
          arrow_open = "⬇"
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    },
  },
})

local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print('Colorscheme prabably does not exists!')
  return
end

local M = {}

M.bufferline = {
  n = {
    ["<tab>"] = {"<cmd> BufferLineCycleNext <CR>", " Next buffer"},
    ["<s-tab>"] = {"<cmd> BufferLineCyclePrev <CR>", " Prev buffer"}
  }
}

return M

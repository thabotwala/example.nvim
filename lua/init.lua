-- dgy_comment.lua
local api = vim.api

local function add_comment()
  local bufnr = api.nvim_get_current_buf()
  local file_ext = vim.fn.expand("%:e")

  if file_ext == "dgy" then
    local comment = "-- This is a .dgy file"
    api.nvim_buf_set_lines(bufnr, 0, 1, false, { comment })
  end
end

api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.dgy",
  callback = add_comment,
})

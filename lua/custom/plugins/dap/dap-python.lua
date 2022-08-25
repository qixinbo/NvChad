local M = {}

function M.setup()
  -- require("dap-python").setup("~/debugpy/bin/python", {})
  require("dap-python").setup("python", {})
end

return M

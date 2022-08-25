local M = {}

-- add this table only when you want to disable default keys
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-s>"] = ""
--   }
-- }

M.dap = {
  n = {
     ["<leader>db"] = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint"},
     ["<leader>dB"] = {"<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", "Conditional Breakpoint"},
     ["<leader>dr"] = {"<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl"},
     ["<F9>"] = {"<cmd>lua require'dap'.run_last()<cr>", "Run Last"},
     ["<F4>"] = {"<cmd>lua require'dap'.terminate()<cr>", "Terminate"},
     ["<F5>"] = {"<cmd>lua require'dap'.continue()<cr>", "Continue"},
     ["<F6>"] = {"<cmd>lua require'dap'.step_over()<cr>", "Step Over"},
     ["<F7>"] = {"<cmd>lua require'dap'.step_into()<cr>", "Step Into"},
     ["<F8>"] = {"<cmd>lua require'dap'.step_out()<cr>", "Step Out"},
     ["<K>"] = {"<cmd>lua require'dap'.eval()<cr>", "Eval"},
  }
}

return M

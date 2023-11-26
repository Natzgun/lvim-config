require("swenv").setup({
  -- get_venvs = function(venvs_path)
  --   return require('swenv.api').get_venvs(venvs_path)
  -- end,
	post_set_env = function()
		vim.cmd("LspRestart")
	end,
})

-- lvim.keys.normal_mode["ce"] = "<cmd>lua require('swenv.api').pick_venv()<cr>"
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

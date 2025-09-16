return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
			"nvim-neotest/nvim-nio",
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		config = function()
			require("dapui").setup()
			local dap, dapui = require("dap"), require("dapui")
			-- vim.keymap.set('n', '<F5>', function() dap.continue() end)
			-- vim.keymap.set('n', '<F10>', function() dap.step_over() end)
			-- vim.keymap.set('n', '<F11>', function() dap.step_into() end)
			-- vim.keymap.set('n', '<F12>', function() dap.step_out() end)
			vim.keymap.set("n", "<Leader>dt", function()
				dap.toggle_breakpoint()
			end, { desc = "Toggle Breakpoint", silent = true })

			vim.keymap.set("n", "<Leader>db", function()
				dap.set_breakpoint()
			end, { desc = "Set Breakpoint", silent = true })

			vim.keymap.set("n", "<Leader>dp", function()
				dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end, { desc = "Set Breakpoint (Input)", silent = true })

			vim.keymap.set("n", "<Leader>dr", function()
				dap.repl.open()
			end, { desc = "Repl open", silent = true })

			vim.keymap.set("n", "<Leader>dl", function()
				dap.run_last()
			end, { desc = "Run Last", silent = true })

			vim.keymap.set("n", "<Leader>dc", function()
				dap.continue()
			end, { desc = "Continue", silent = true })

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
	{
		"leoluz/nvim-dap-go",
		config = function()
			require("dap-go").setup({
				-- -- Additional dap configurations can be added.
				-- -- dap_configurations accepts a list of tables where each entry
				-- -- represents a dap configuration. For more details do:
				-- -- :help dap-configuration
				-- dap_configurations = {
				-- 	{
				-- 		-- Must be "go" or it will be ignored by the plugin
				-- 		type = "go",
				-- 		name = "Attach remote",
				-- 		mode = "remote",
				-- 		request = "attach",
				-- 	},
				-- },
				-- -- delve configurations
				-- delve = {
				-- 	-- the path to the executable dlv which will be used for debugging.
				-- 	-- by default, this is the "dlv" executable on your PATH.
				-- 	path = "dlv",
				-- 	-- time to wait for delve to initialize the debug session.
				-- 	-- default to 20 seconds
				-- 	initialize_timeout_sec = 20,
				-- 	-- a string that defines the port to start delve debugger.
				-- 	-- default to string "${port}" which instructs nvim-dap
				-- 	-- to start the process in a random available port.
				-- 	-- if you set a port in your debug configuration, its value will be
				-- 	-- assigned dynamically.
				-- 	port = "${port}",
				-- 	-- additional args to pass to dlv
				-- 	args = {},
				-- 	-- the build flags that are passed to delve.
				-- 	-- defaults to empty string, but can be used to provide flags
				-- 	-- such as "-tags=unit" to make sure the test suite is
				-- 	-- compiled during debugging, for example.
				-- 	-- passing build flags using args is ineffective, as those are
				-- 	-- ignored by delve in dap mode.
				-- 	-- avaliable ui interactive function to prompt for arguments get_arguments
				-- 	build_flags = {},
				-- 	-- whether the dlv process to be created detached or not. there is
				-- 	-- an issue on delve versions < 1.24.0 for Windows where this needs to be
				-- 	-- set to false, otherwise the dlv server creation will fail.
				-- 	-- avaliable ui interactive function to prompt for build flags: get_build_flags
				-- 	detached = vim.fn.has("win32") == 0,
				-- 	-- the current working directory to run dlv from, if other than
				-- 	-- the current working directory.
				-- 	cwd = nil,
				-- },
				-- -- options related to running closest test
				-- tests = {
				-- 	-- enables verbosity when running the test.
				-- 	verbose = false,
			-- 	},
			})
		end,
	},
}

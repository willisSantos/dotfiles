local home = os.getenv("HOME")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local config = {
	cmd = {
		"java",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		-- "-javaagent:" .. home .. "/Downloads/lombok.jar",
		-- "-jar",
		vim.fn.expand(
			"~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"
		),
		"-configuration",
		vim.fn.expand("~/.local/share/nvim/mason/packages/jdtls/config_linux"),
		"-data",
		vim.fn.expand("~/.cache/jdtls/workspace") .. project_name,
	},
	root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
	settings = {
		java = {
			configuration = {
				runtimes = {
					-- {
					-- 	name = "JavaSE-11",
					-- 	path = home .. "/.sdkman/candidates/java/11.0.18-amzn",
					-- },
					-- {
					-- 	name = "JavaSE-17",
					-- 	path = home .. "/.sdkman/candidates/java/17.0.9-amzn",
					-- },
					-- {
					-- 	name = "JavaSE-8",
					-- 	path = home .. "/.sdkman/candidates/java/8.0.412-amzn",
					-- }
				}
			},
		},
	},
	init_options = {
		bundles = {},
	},
	capabilities = capabilities,
}
require("jdtls").start_or_attach(config)

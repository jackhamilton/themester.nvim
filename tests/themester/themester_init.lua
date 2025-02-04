local plugin = require("themester")

describe("basic initialization", function()
    it("setup", function()
        plugin.setup()
    end)

    it("setup_gruvbox", function()
        local opts = {
            themester_theme_env_var = "none",
            themester_theme_theme_var = "gruvbox",
            notify = false,
        }
        plugin.setup(opts)
        assert.equal("gruvbox", vim.g.colorscheme)
    end)
end)

---@class themester
local M = {}

---@class themester.Opts
---@field themester_plugin_env_var? string The environment variable your config.toml for themester stores the nvim plugin name in (ex: tokyonight).
---@field themester_theme_env_var? string The environment variable your config.toml for themester stores the nvim theme name in (ex: tokyonight-storm).
---@field notify? boolean Whether to announce theme names via notify when they're switched to.

---@param opts? themester.Opts
function M.setup(opts)
    ---@cast opts themester.Opts
    opts = opts or {}
    M.load_theme(opts)
end

---@param opts? themester.Opts
function M.load_theme(opts)
    ---@cast opts themester.Opts
    if (opts.themester_plugin_env_var ~= nil) then
        local plug = os.getenv(opts.themester_plugin_env_var)
        if plug and plug ~= "none" then
            require(plug).setup({})
        end
    end
    if (opts.themester_theme_env_var ~= nil) then
        local theme = os.getenv(opts.themester_theme_env_var)
        vim.cmd("colorscheme " .. theme)
        if opts.notify == true then
            local notify = require("snacks.notify")
            notify.info(theme or "Themester: Theme not found.")
        end
    end
end
return M

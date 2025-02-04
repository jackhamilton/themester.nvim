# themester.nvim

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ellisonleao/nvim-plugin-template/lint-test.yml?branch=main&style=for-the-badge)
![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

Integrate your nvim and terminal theme, and randomize them between a preselected list of options. NVIM integration for themester.zsh.

## Setup

### lazy.nvim:
```lua
return {
    'jackhamilton/themester.nvim',
    lazy = false,
    opts = {
        themester_plugin_env_var = "NVIM_THEME_PLUGIN", -- As configured in your themester.zsh config.toml
        themester_theme_env_var = "NVIM_THEME", -- As configured in your themester.zsh config.toml
        notify = true, -- optional, defaults to false. If true, prints the theme name when loaded.
    },
    dependencies = {
        'rcarriga/nvim-notify' -- if notify is true
    },
}
```

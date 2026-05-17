# AuraNeo Themes  

A collection of custom, minimal, and high-contrast color schemes for modern Neovim setups, featuring:
* **Crackedbones**: A theme for neovim , inspired by the @tsoding's emacs theme . 
* **myti**: A neovim theme , with a mixture of zenbones's warmness , and rose pines's colors .  
---


##  Installation

Choose **one** of the installation methods below based on how you manage your Neovim configuration.

### Method 1: Using `lazy.nvim` (Recommended)
Add the repository to your plugin specification list (usually inside your `plugins.lua` or `lua/plugins/` directory):


```lua
return {
  {
    "YOUR_GITHUB_USERNAME/my-themes.nvim",
    lazy = false,    -- Load immediately during startup
    priority = 1000, -- Ensure it loads before all other plugins
    config = function()
      -- Activate your preferred theme
      vim.cmd([[colorscheme crackedbones]]) 
      -- Or use: vim.cmd([[colorscheme myti]])
    end,
  }
}
```

### Method 2: Manual Installation (Git Clone)
If you don't use a plugin manager and prefer managing things manually, clone this repository straight into your Neovim configuration directory.

Run this command in your terminal:


```bash
# For Unix / Linux / macOS
git clone https://github.com ~/.config/nvim/pack/themes/start/my-themes.nvim

# For Windows (PowerShell)
git clone https://github.com $HOME\AppData\Local\nvim\pack\themes\start\my-themes.nvim
```


After cloning, open Neovim and switch to the theme manually by running:
```text
:colorscheme crackedbones
```

To make it permanent, add this line to the bottom of your main `init.lua`:
```lua
vim.cmd("colorscheme crackedbones")
```


## Features & Recommendations
* **Top-Plugins Support**: All the above themes supports the top neovim plugins . 
* **Tree-sitter Support**: Fully optimized for Tree-sitter semantic highlights (functions, keywords, and preprocessor directives match cleanly).
* **Terminal Background**: Designed for pure black (`#000000`) terminals. Ensure your terminal background is set to true black for the best visual contrast!



























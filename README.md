# AuraNeo Themes  

A collection of custom, minimal, and high-contrast color schemes for modern Neovim setups, featuring:
* **Crackedbones**: A theme for neovim , inspired by the @tsoding's emacs theme . 
* **myti**: A neovim theme , with a mixture of zenbones's warmness and muted shades , and rose pines's colors .  
---

## Preview 
---


* **Crackedbones**:  Raw and real  

<img width="100%" height="768" alt="20260517_153923" src="https://github.com/user-attachments/assets/717e8f66-ed3a-4563-b95a-653281c2240c" />

<img width="100%" height="768" alt="20260517_154320" src="https://github.com/user-attachments/assets/2dcce54a-4af3-409a-8605-3d3b2febe83d" />

<img width="1366" height="768" alt="20260517_155042" src="https://github.com/user-attachments/assets/0b5b43ae-74aa-4c62-9c04-864d57dc4471" />

<img width="1366" height="768" alt="20260517_154925" src="https://github.com/user-attachments/assets/f9fba608-0144-4934-aefb-ecc3468b9ad7" />

---

* **myti**: Raw and real

<img width="1366" height="100%" alt="20260517_154455" src="https://github.com/user-attachments/assets/b0e9c787-c8d7-4cd4-9486-3ad1c3673370" />

<img width="1366" height="100%" alt="20260517_154641" src="https://github.com/user-attachments/assets/2646f2f0-b7bd-40c9-a07f-9f9b4bf58268" />

<img width="1366" height="100%" alt="20260517_154721" src="https://github.com/user-attachments/assets/120c280f-8640-4f28-97a7-db85f8a3ff25" />


##  Installation

Choose **one** of the installation methods below based on how you manage your Neovim configuration.

### Method 1: Using `lazy.nvim` (Recommended)
Add the repository to your plugin specification list (usually inside your `plugins.lua` or `lua/plugins/` directory):


```lua
return {
  {
    "meetsoni555/Auranal.nvim",
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

```lua 
vim.cmd.colorscheme("crackedbones")
vim.cmd.colorscheme("myti")

```


## Features & Recommendations
* **Top-Plugins Support**: All the above themes supports the top neovim plugins . 
* **Tree-sitter Support**: Fully optimized for Tree-sitter semantic highlights (functions, keywords, and preprocessor directives match cleanly).
* **Terminal Background**: Designed for pure black (`#000000`) terminals. Ensure your terminal background is set to true black for the best visual contrast!




## Contributions 
- Any kind of contributions , are most welcome ... 
- If anyone wants to list their own custom neovim themes holding "Aura" , they can without a second thought ... 


























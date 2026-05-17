-- ~/.config/nvim/colors/crackedbones.lua
package.path = package.path .. ";" .. vim.fn.expand("~/.config/nvim/lua/?.lua")
package.path = package.path .. ";" .. vim.fn.expand("~/.config/nvim/lua/?/init.lua")

require("crackedbones").colorscheme()

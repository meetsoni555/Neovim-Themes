-- ~/.config/nvim/colors/myti.lua
package.path = package.path .. ";" .. vim.fn.expand("~/.config/nvim/lua/?.lua")
package.path = package.path .. ";" .. vim.fn.expand("~/.config/nvim/lua/?/init.lua")

require("myti").colorscheme()

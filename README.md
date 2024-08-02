# Gruvbox
The only theme for neovim you'll ever need

# Installing
Use your favorite plugin manager...  
Lazy:

```lua
{
    "brunnre8/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme gruvbox]])
    end,
},
```

require('colorizer').setup {
    '*',                    -- Highlight all files, but customize some others.
    css = { rgb_fn = true, }, -- Enable parsing rgb(...) functions in css.
    html = { names = false, } -- Disable parsing "names" like Blue or Gray
}

require('tokyonight').setup({
    style = "night",
    light_style = "night",
    disable_background = true,
    sidebars = { "qf", "vista_kind", "terminal", "packer" },
    on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl["@comment"] = {
            fg = "#aaaaaa",
        }
        hl["@keyword"] = {
            fg = "#f093ff",
            style = {
                italic = false
            }
        }
        hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
            bg = prompt,
        }
        hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
    end,
})

function ColorMyPencils(color)
    color = color or "tokyonight-night"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

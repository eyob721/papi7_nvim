-- Make sure to use these commands to enable/toggle/disable transparency
-- :TransparentEnable
-- :TransparentDisable
-- :TransparentToggle

return { -- Optional, you don't have to run setup.
    "xiyaowong/transparent.nvim",
    enabled = false,
    lazy = false,
    groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLineNr",
        "EndOfBuffer",
    },
    extra_groups = {
        "NormalFloat",
        "NeoTreeNormal",
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
        "IndentBlanklineChar",

        -- make floating windows transparent
        "LspFloatWinNormal",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptBorder",
        "SagaBorder",
        "SagaNormal",
        "NvimFloat",
    },
    exclude_groups = {}, -- table: groups you don't want to clear
}

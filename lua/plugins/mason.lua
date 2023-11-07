return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "bash-language-server", -- Bash Lsp
            "shellcheck", -- Bash Linter
            "shfmt", -- Bash Formatter
            "clangd", -- C and C++ Lsp
            "clang-format", -- C and C++ Formatter
            "pyright", -- Python Lsp
            "pydocstyle", -- Python Formatter for doctrings
            "isort", -- Python Formatter for import statements
            "black", -- Python Formatter
            "marksman", -- Markdown Lsp
            "markdownlint", -- Markdown Linter
            "prettier", -- Code Formatter for (HTML, CSS, JavaScript, Markdown, ...etc)
            "stylua", -- Lua Formatter
        },
    },
}

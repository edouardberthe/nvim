return {
  ensure_installed = {
    -- C++
    "clangd",

    -- LaTeX
    "texlab",

    -- lua
    "lua-language-server",

    -- python
    "black",
    "debugpy",
    "isort", -- imports sorting
    "mypy", -- type checker
    -- "pyright", -- require npm
    "ruff",
    "ty", -- static type checker

    -- rust
    "rust_analyzer",
  },
}

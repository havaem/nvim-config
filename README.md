# Havaem's Neovim Template

**A modern, fast, and feature-rich Neovim configuration powered by [AstroNvim](https://astronvim.com/) v5+**

---

## 🚀 Features

- **AstroNvim v5+**: Modular, extensible, and up-to-date Neovim framework.
- **Pre-configured LSP**: Out-of-the-box support for Lua, TypeScript, TailwindCSS, HTML, CSS, Markdown, and JSON.
- **AI Integration**: GitHub Copilot support for AI-powered code completion.
- **Enhanced Editing**: Multi-cursor, fast surround, code movement, undotree, and more.
- **UI Improvements**: Catppuccin theme, statusline, winbar, and diagnostic enhancements.
- **Git Integration**: Git blame, diffview, and branch-based session management.
- **Snippets**: Rich VSCode-style snippets for JavaScript, TypeScript, CSS, and Tailwind.
- **Session Management**: Auto-restore and branch-aware sessions.
- **Terminal Integration**: ToggleTerm and VSCode-like terminal navigation.
- **Performance Tweaks**: Large file optimizations and disabled unused plugins.

---

## 🛠️ Installation

**Backup your current Neovim config:**

```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

**Clone this repository:**

```sh
git clone https://github.com/havaem/nvim-config ~/.config/nvim
# or with SSH
git clone git@github.com:havaem/nvim-config.git ~/.config/nvim
```

**Start Neovim:**

```sh
nvim
```

---

## 🗝️ Keymaps

| Keymap            | Description                          | Mode            |
| ----------------- | ------------------------------------ | --------------- |
| `<Leader>r`       | Reload AstroCore                     | Normal          |
| `<A-1>`...`<A-9>` | Switch to buffer 1-9                 | Normal/Insert   |
| `<A-0>`           | Switch to last buffer                | Normal          |
| `<F2>`            | Rename variable (LSP)                | Normal          |
| `<Tab>`           | Indent current line                  | Normal          |
| `<S-Tab>`         | Un-indent current line               | Normal          |
| `<S-k>`           | Move 10 lines down                   | Normal          |
| `<S-j>`           | Move 10 lines up                     | Normal          |
| `<C-b>`           | Move to beginning of line            | Insert          |
| `<C-e>`           | Move to end of line                  | Insert          |
| `<C-h/j/k/l>`     | Move left/down/up/right              | Insert          |
| `<Leader>k`       | Show information                     | Normal          |
| `<A-q>`           | Escape terminal mode                 | Terminal        |
| `<F7>`            | Open new terminal                    | Terminal        |
| `<F8>`            | Open another terminal                | Normal/Terminal |
| `p` (visual)      | Paste without yanking selection      | Visual          |
| `d`, `x`, `c`     | Delete/change without yanking        | Normal/Visual   |
| `<C-a>`           | Select all text                      | Normal          |
| ...               | More in [AstroNvim docs][astro-maps] |

---

## 📦 Plugins & Customizations

- **LSP & Completion**: AstroNvim, astrolsp, mason, none-ls, copilot, luasnip, treesitter, tailwind-tools
- **UI**: catppuccin, heirline, nvim-highlight-colors, snacks.nvim dashboard
- **Editing**: vim-move, undotree, vim-visual-multi, treesj, wildfire, bigfile
- **Git**: lazygit, git-blame, diffview, branch-based sessions
- **Terminal**: toggleterm-manager
- **Snippets**: VSCode-style snippets for JS, TS, CSS, Tailwind ([see snippets](lua/snippets/))
- **Custom Keymaps**: See [`lua/keymaps.lua`](lua/keymaps.lua)
- **Session Management**: Auto-restore and git branch sessions

---

## 📝 Snippets

- **Languages**: JavaScript, TypeScript, CSS, TailwindCSS
- **Format**: VSCode-style, loaded via LuaSnip
- **Location**: [`lua/snippets/`](lua/snippets/)

---

## ⚙️ Configuration Structure

- `init.lua` – Entry point, bootstraps Lazy.nvim and loads config
- `lua/lazy_setup.lua` – AstroNvim and plugin setup
- `lua/community.lua` – AstroCommunity plugin imports
- `lua/plugins/` – Custom plugin specs and overrides
- `lua/keymaps.lua` – Custom keymaps
- `lua/utils.lua` – Utility functions
- `lua/snippets/` – User snippets (VSCode format)

---

## 📚 Resources

- [AstroNvim Documentation](https://docs.astronvim.com/)
- [AstroCommunity Plugins](https://github.com/AstroNvim/astrocommunity)
- [Catppuccin Theme](https://github.com/catppuccin/nvim)
- [LuaSnip Snippets](https://github.com/L3MON4D3/LuaSnip)

---

## 🧑‍💻 Contributing

Feel free to fork and submit PRs for improvements or new features!

---

[astro-maps]: https://docs.astronvim.com/mappings

# 🌀 U_Vim

**U_Vim** is a **minimal, fast, and intentional Neovim configuration** written in Lua.  
It is designed for developers who value **clarity, speed, and focus** over visual noise.

This repository contains **my personal Neovim setup**, structured modularly and tuned for a Vim-like editing experience with modern tooling where it matters.

> "Sometimes minimal is better than fancy.  
> Less noise. More thinking."

U_Vim works on **Linux**, **macOS**, and **Windows**.

---

## ✨ Philosophy

- ⚡ **Speed first** — fast startup, lazy-loaded plugins
- 🧠 **Mental clarity** — calm UI, no visual clutter
- ⌨️ **Keyboard-driven** — minimal mouse usage
- 🧩 **Modular** — easy to understand, easy to modify
- 🧱 **Vim-like discipline** with Neovim capabilities

This is **not** a flashy distro.  
It is a **tool you grow into**, not one that overwhelms you.

---

## ✨ Features

- 🔁 **AutoSave** – Automatically saves files when leaving insert mode
- 🪄 **AutoPairs** – Smart pairing for brackets, quotes, etc.
- 📂 **Neo-tree** – Clean file explorer (toggle when needed)
- 📑 **BufferLine** – Simple buffer navigation
- 📏 **Indent Guides** – Visual indentation support
- 📊 **Lualine** – Lightweight statusline
- 🌿 **Git Integration** – Git signs via `gitsigns.nvim`
- 🚦 **Linting & Formatting** – Lightweight, on-demand
- 🧠 **LSP Support** – For modern languages (JS, TS, C/C++, Go, Rust, Python, etc.)
- 🎨 **Calm UI** – Builtin `habamax` colorscheme for long coding sessions

---

## 📋 Requirements

| Tool | Description |
|------|-------------|
| **Neovim** | 0.9+ (0.10+ recommended) |
| **Git** | Required to clone the repo |
| **Nerd Font** | Optional (icons) |
| **ripgrep** | Recommended for search |
| **Node / Language toolchains** | Only if required by LSPs |

---

## 🖥️ Installation

> ⚠️ **Backup your existing Neovim config** before installing.

### 🐧 Linux / 🍎 macOS

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim_backup

# Clone U_Vim
git clone https://github.com/Abhishek-Krishna-A-M/U_Vim.git ~/.config/nvim

# Launch Neovim
nvim
```

### 🪟 Windows (PowerShell)

```powershell
# Backup existing config (if any)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim_backup

# Clone U_Vim
git clone https://github.com/Abhishek-Krishna-A-M/U_Vim.git $env:LOCALAPPDATA\nvim

# Launch Neovim
nvim
```

---

## ⌨️ Keybinds

### 📁 File & Window Management

| Key | Action |
|-----|--------|
| `Ctrl + s` | Save file |
| `<leader>sn` | Save without formatting |
| `Ctrl + q` | Quit current file |
| `<leader>e` | Toggle file explorer |
| `<leader>lw` | Toggle line wrap |
| `<leader>v` | Vertical split |
| `<leader>h` | Horizontal split |
| `<leader>se` | Equalize splits |
| `<leader>xs` | Close split |

### 📑 Buffers & Tabs

| Key | Action |
|-----|--------|
| `Tab` | Next buffer |
| `Shift + Tab` | Previous buffer |
| `<leader>x` | Close buffer |
| `<leader>b` | New buffer |
| `<leader>to` | New tab |
| `<leader>tx` | Close tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |

### 🧭 Navigation

| Key | Action |
|-----|--------|
| `Ctrl + h/j/k/l` | Move between splits |
| `Ctrl + d / u` | Scroll & center |
| `n / N` | Search next/prev (centered) |
| `Ctrl + ↑ ↓` | Resize height |
| `Ctrl + ← →` | Resize width |

---

## 🎨 Theme

U_Vim intentionally uses a builtin colorscheme:

```lua
vim.cmd.colorscheme('habamax')
```

**Why?**

- Zero plugin overhead
- Calm contrast for late-night coding
- No visual fatigue
- Vim-native and stable

---

## 👤 Author

**Abhishek Krishna A M**

Built with intention, refined through use.

Feel free to fork, simplify further, or adapt it to your workflow.

**Minimal tools. Maximum focus.**

---

## 📄 License

MIT License - Feel free to use and modify as needed.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!  
Feel free to check the [issues page](https://github.com/Abhishek-Krishna-A-M/U_Vim/issues).

---

## ⭐ Show Your Support

Give a ⭐️ if this project helped you!

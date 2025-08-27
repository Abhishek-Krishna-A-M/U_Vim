# 🌀 U Vim

**U Vim** is a modular, fast, and minimal Neovim configuration built with Lua for modern development.  
It focuses on simplicity, clean UI, and essential features like file tree navigation, buffer management, linting, git integration, and more.

U Vim works across **Linux**, **macOS**, and **Windows**.

---

## ✨ Features

- 🔁 **AutoSave** – Automatically saves files as you type or leave insert mode
- 🪄 **AutoPairs** – Smart auto-pairing for brackets, quotes, etc.
- 📂 **Neo-tree** – A clean, icon-friendly file explorer
- 📑 **BufferLine** – Visual buffer/tab line with navigation and close buttons
- 🧪 **Debugger Support** – Integrated `nvim-dap` setup
- 📏 **Indent Guides** – Visual indent lines
- 📊 **Lualine** – Fast and elegant statusline
- 🌿 **Git Integration** – Real-time diff indicators with `gitsigns`
- 🚦 **Linting** – Lightweight linting on save
- 🚀 **Dashboard** – Start screen with shortcuts
- ⚙️ **Misc Utilities** – Keymaps, performance tweaks, and more

---

## 📋 Requirements

Before using U Vim, make sure the following are installed:

| Tool        | Description                        |
|-------------|------------------------------------|
| [Neovim](https://neovim.io) | Version 0.9+ (0.10+ recommended) |
| [Git](https://git-scm.com) | For cloning the repo             |
| [Nerd Font](https://www.nerdfonts.com/) | Recommended for icons |
| `curl` or `wget` | For plugin manager installation (first run only) |

---

## 🖥️ Installation

> U Vim is a drop-in replacement for your existing Neovim config.  
> ⚠️ **Backup your current config** if needed.

---

### 🐧 Linux & 🍎 macOS

- Backup old config if it exists
mv ~/.config/nvim 

- Clone U Vim config
git clone https://github.com/yourusername/uvim ~/.config/nvim

- Open Neovim (plugins will install on first launch)
nvim

---

### Windows
- Backup old config
Rename-Item "$env:LOCALAPPDATA\nvim" -NewName "nvim_backup"

- Clone U Vim config
git clone https://github.com/yourusername/uvim $env:LOCALAPPDATA\nvim

- Launch Neovim
nvim

### Keybinds
📁 File & Window Management

- ctrl+s	Save file
- space+sn	Save file without formatting
- ctrl+q	Quit current file
- space+e	Toggle Neo-tree file explorer
- space+lw	Toggle line wrapping
- space+v	Vertical split
- space+h	Horizontal split
- space+se	Equalize split sizes
- space+xs	Close split

📑 Buffer & Tab Management

- Tab	Next buffer
- S-Tab	Previous buffer
- space+x	Close current buffer
- space+b	New empty buffer
- space+to	Open new tab
- space+tx	Close current tab
- space+tn	Next tab
- space+tp	Previous tab

🧭 Navigation

- ctrl+j/k/h/l	Move between split windows
- ctrl+d	Scroll down and center
- ctrl+u	Scroll up and center
- n / N	Next/Previous search (centered)
- ctrl+Up/Down	Resize window height
- ctrl+Left/Right	Resize window width

## Author

Made with ❤️ by Abhishek Krishna
Feel free to fork, tweak, and share your own version.


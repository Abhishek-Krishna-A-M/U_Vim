# U_Vim

**U_Vim** is a minimal and fast Neovim configuration written in Lua. It is built with a Vim-first mindset and focuses on clarity, speed, and keyboard-driven editing.

This repository contains my personal Neovim setup. It is intentionally simple and avoids unnecessary plugins or visual noise.

> *Sometimes minimal is better than fancy. Less distraction. More thinking.*

---

## Philosophy

- **Speed over appearance**
- **Minimal UI for mental clarity**
- **Keyboard-centric workflow**
- **Vim-like discipline with Neovim where useful**
- **Easy to understand and modify**

This is **not** a Neovim "distro". It is a small, evolving setup meant to stay out of the way.

---

## What U_Vim currently provides

- Fast Neovim startup
- Minimal Lua-based configuration
- Keyboard-driven workflow
- Built-in `habamax` colorscheme for low eye strain
- Basic LSP support (work in progress)
- Optional file explorer support
- Clean, distraction-free editing environment

---

## What U_Vim does NOT try to be

- A flashy or heavily themed setup
- A plugin showcase
- A one-size-fits-all configuration

**Features are added only when they earn their place.**

---

## Theme

U_Vim intentionally uses a built-in colorscheme:

```lua
vim.cmd.colorscheme('habamax')
```

**Why?**

- No plugin overhead
- Calm contrast for late-night coding
- Stable and Vim-native
- Easy on the eyes

---

## Installation

> ⚠️ **Backup your existing Neovim config first.**

### Linux / macOS

```bash
mv ~/.config/nvim ~/.config/nvim_backup
git clone https://github.com/Abhishek-Krishna-A-M/U_Vim.git ~/.config/nvim
nvim
```

### Windows (PowerShell)

```powershell
Rename-Item "$env:LOCALAPPDATA\nvim" "nvim_backup"
git clone https://github.com/Abhishek-Krishna-A-M/U_Vim.git $env:LOCALAPPDATA\nvim
nvim
```

---

## Author

**Abhishek Krishna A M**

Built with intention, refined through use.  
Feel free to fork, simplify further, or adapt it to your workflow.

**Minimal tools. Maximum focus.**

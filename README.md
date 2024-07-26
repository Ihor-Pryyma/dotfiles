# Dotfiles

Welcome to my `dotfiles` repository! This repository contains my personal configuration files for various tools and editors I use on a daily basis. Feel free to explore, use, and adapt them for your own setup.

## Contents

- [Neovim](#neovim)
- [Zsh](#zsh)
- [Vim](#vim)
- [IDEA Vim](#ideavim)
- [TMUX](#tmux)

## Neovim

My Neovim configuration is tailored for an enhanced and efficient development experience. It includes plugins, key mappings, and settings to improve productivity.

- **Configuration File:** `nvim/init.vim`
- **Plugins:**
  - `lazy.nvim` for plugin management
  - `telescope.nvim` for fuzzy finding
  - `nvim-treesitter` for better syntax highlighting
  - `lualine.nvim` for status line customization
  - `gitsigns.nvim` for Git integration

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/dotfiles.git
2. Symlink the Neovim configuration:

```sh
ln -s ~/dotfiles/nvim ~/.config/nvim
```
3. Open Neovim and install plugins:
```sh
nvim +Lazy
```

## Zsh

My .zshrc configuration includes custom aliases, functions, and prompt settings for a more efficient terminal experience.

Configuration File: `.zshrc`
Plugins:
- oh-my-zsh for managing Zsh configuration
- zsh-syntax-highlighting for syntax highlighting
- zsh-autosuggestions for command autosuggestions

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/dotfiles.git
2. Symlink the Zsh configuration:

```sh
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```
3. Install oh-my-zsh:
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
3. Source configuration file:
```sh
source ~/.zshrc
```

## Vim

My Vim configuration is a minimal setup with key mappings and settings for a more productive editing experience.

Configuration File: `.vimrc`

## IDEA Vim

My IDEA Vim configuration includes key mappings and settings to make the IntelliJ IDEA editor more Vim-like.

Configuration File: `ideavimrc`

## TMUX

My TMUX configuration includes key mappings and settings to make the TMUX terminal multiplexer more efficient.

Configuration File: `.tmux.conf`

## License

This repository is licensed under the MIT License. See `LICENSE` for more information.
```

# Dotfiles Overview

This repository contains configuration files and settings to streamline my development environment setup, including configurations for Neovim (LazyVim), Zsh, Tmux, terminal emulators, and more.

## Folder Structure
```plaintext
.
├── config/                     # Application-specific configurations
│   ├── alacritty/             # Alacritty terminal emulator configuration
│   │   └── alacritty.toml     # Alacritty settings with Coolnight theme
│   ├── nvim/                  # Neovim configurations for LazyVim setup
│   │   ├── init.lua           # Main configuration file for Neovim
│   │   ├── lua/               # Lua configuration files for LazyVim
│   │   │   ├── config/        # LazyVim configuration files
│   │   │   └── plugins/       # Plugin initialization files
│   │   ├── lazy-lock.json     # LazyVim plugin lock file
│   │   └── README.md          # LazyVim documentation
│   └── tmux/                  # Tmux configuration files
│       └── tmux.reset.conf    # Tmux key bindings reset configuration
├── .gitignore                 # Git ignore rules
├── .ideavimrc                 # Configurations for IdeaVim (Vim emulation in JetBrains IDEs)
├── .tmux.conf                 # Main Tmux configuration file
├── .vimrc                     # Legacy Vim configuration
├── .zshrc                     # Zsh configuration file with Oh My Zsh and Powerlevel10k
├── wezterm.lua                # WezTerm terminal emulator configuration
└── README.md                  # This file, containing an overview of the repository structure
```

## Key Configurations

### **Neovim** (`config/nvim/`)
Contains all configuration files for setting up Neovim with **LazyVim** as the base configuration.
- `init.lua`: The main entry point for Neovim configuration, bootstraps LazyVim
- `lua/`: Folder for organizing Lua-based configurations:
  - `config/`: LazyVim configuration files
  - `plugins/`: Additional plugin configurations
- `lazy-lock.json`: Plugin lock file for reproducible builds

### **Terminal Emulators**
- **WezTerm** (`wezterm.lua`): Modern GPU-accelerated terminal emulator with custom Coolnight color scheme, MesloLGS Nerd Font, and macOS-specific optimizations
- **Alacritty** (`config/alacritty/alacritty.toml`): Fast, GPU-accelerated terminal emulator with Coolnight theme integration

### **Zsh** (`.zshrc`)
Enhanced Zsh shell experience with:
- **Oh My Zsh** framework
- **Powerlevel10k** theme for beautiful and informative prompts
- **zsh-autosuggestions** and **zsh-syntax-highlighting** plugins
- **NVM** (Node Version Manager) integration
- **pyenv** (Python version manager) integration
- **zoxide** for smart directory navigation
- **eza** as a modern replacement for `ls`
- Custom history configuration and key bindings

### **Tmux** (`.tmux.conf` + `config/tmux/`)
Advanced Tmux configuration with:
- **TPM** (Tmux Plugin Manager) for plugin management
- **tmux-resurrect** and **tmux-continuum** for session persistence
- **tmux-sessionx** for session management with zoxide integration
- **catppuccin-tmux** theme with custom status bar
- **tmux-fzf** and **tmux-fzf-url** for fuzzy finding
- **tmux-thumbs** for quick text selection
- **tmux-floax** for floating windows
- Custom key bindings and pane management

### **Vim/Neovim Configurations**
- **Legacy Vim** (`.vimrc`): Traditional Vim configuration with modern features
- **IdeaVim** (`.ideavimrc`): Vim emulation for JetBrains IDEs with extensive key mappings and IDE integration

## Features

### **Development Environment**
- **Node.js** management via NVM
- **Python** management via pyenv
- **Smart directory navigation** with zoxide
- **Enhanced file listing** with eza
- **Git integration** with Oh My Zsh plugins

### **Terminal Experience**
- **Multiple terminal emulators** (WezTerm, Alacritty) with consistent theming
- **Coolnight color scheme** across all terminals
- **Nerd Fonts** support for icons and symbols
- **Session persistence** with Tmux plugins

### **Editor Experience**
- **LazyVim** for modern Neovim development
- **Vim emulation** in JetBrains IDEs
- **Consistent key mappings** across all editors
- **Plugin management** and LSP support

## Installation

1. **Clone this repository** to your home directory:
   ```bash
   git clone <repository-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. **Create symlinks** for the configuration files:
   ```bash
   # Neovim
   ln -sf ~/dotfiles/config/nvim ~/.config/nvim
   
   # Alacritty
   ln -sf ~/dotfiles/config/alacritty ~/.config/alacritty
   
   # Tmux
   ln -sf ~/dotfiles/config/tmux ~/.config/tmux
   
   # Zsh
   ln -sf ~/dotfiles/zshrc ~/.zshrc
   
   # Tmux
   ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
   
   # Vim
   ln -sf ~/dotfiles/vimrc ~/.vimrc
   
   # IdeaVim
   ln -sf ~/dotfiles/ideavimrc ~/.ideavimrc
   
   # WezTerm
   ln -sf ~/dotfiles/wezterm.lua ~/.wezterm.lua
   ```

3. **Install required tools**:
   ```bash
   # Install Oh My Zsh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   
   # Install Powerlevel10k
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
   
   # Install zsh plugins
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   
   # Install TPM for Tmux
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

4. **Install fonts**:
   - Install **MesloLGS Nerd Font** for terminal icons
   - Install **Hack Nerd Font** for Vim/Neovim

5. **Configure Tmux plugins**:
   - Start Tmux and press `Ctrl-a` + `I` to install plugins

## Notes

- **Theme Consistency**: All terminal emulators use the Coolnight color scheme for a consistent look
- **Font Requirements**: Nerd Fonts are required for proper icon display
- **macOS Optimized**: Some configurations are specifically optimized for macOS
- **Session Persistence**: Tmux sessions are automatically saved and restored
- **Plugin Management**: LazyVim handles Neovim plugins automatically, TPM manages Tmux plugins

By keeping these files under version control, any changes to configurations can be easily tracked and replicated across environments.

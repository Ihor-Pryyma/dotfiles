# Dotfiles Overview

This repository contains configuration files and settings to streamline my development environment setup, including configurations for Neovim, Zsh, Git, and more.

## Folder Structure
```plaintext
.
├── .config                     # Application-specific configurations
│   └── nvim                    # Neovim configurations for NvChad setup
│       ├── init.lua            # Main configuration file for Neovim
│       ├── lua/                # Lua configuration files for NvChad
│           ├── chadrc.lua      # Custom NvChad configuration
│           ├── configs         # Plugin and LSP configuration files
│           ├── mappings.lua    # Custom key mappings for Neovim
│           ├── options.lua     # Neovim options and settings
│           └── plugins         # Plugin initialization files
├── .ideavimrc                  # Configurations for IdeaVim (Vim emulation in JetBrains IDEs)
├── .tmux.conf                  # Tmux configuration file
├── .vimrc                      # Legacy Vim configuration
├── .zshrc                      # Zsh configuration file, sources environment variables and aliases
└── README.md                   # This file, containing an overview of the repository structure
```
### Key Configurations

- **Neovim** (`.config/nvim`): Contains all configuration files for setting up Neovim with NvChad as the base configuration.
  - `init.lua`: The main entry point for Neovim configuration.
  - `lua/`: Folder for organizing Lua-based configurations:
    - `chadrc.lua`: Custom configurations to tailor NvChad settings.
    - `configs/`: Plugin and Language Server Protocol (LSP) setup configurations.
    - `mappings.lua`: Key mappings specific to Neovim functions and plugins.
    - `options.lua`: Core Neovim options for appearance and functionality.
    - `plugins/`: Additional plugin configurations.

- **Zsh** (`.zshrc`): Customizes the Zsh shell experience, defining aliases, environment variables, and paths. Sources environment-specific secrets from `.zsh_secrets`.

- **Tmux** (`.tmux.conf`): Configuration for Tmux, enabling session management and window customization for the terminal multiplexer.

### How to Use

1. **Clone this repository** to your home directory to ensure the dotfiles are correctly placed.
2. **Symlink the dotfiles** if needed, to ensure they are loaded by the respective applications.
3. **Edit `.zshrc`** to source sensitive environment variables from a `.zsh_secrets` file (not included in this repository).
4. **Configure applications** like Neovim by ensuring `init.lua` and `chadrc.lua` point to any custom plugin directories or settings you wish to load.

### Notes

- **Sensitive Information**: Place sensitive information in a separate `.zsh_secrets` file sourced within `.zshrc` to avoid accidentally committing private data.
- **Compatibility**: These configurations are tailored for Unix-like systems and assume the presence of Zsh, Tmux, and Neovim.

By keeping these files under version control, any changes to configurations can be easily tracked and replicated across environments.

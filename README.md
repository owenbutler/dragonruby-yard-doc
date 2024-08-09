# Dragonruby YARD Doc

This repository contains YARD documentation for the main Dragonruby APIs.

This will be helpful for you if you:

- are using the Dragonruby Game Toolkit
- are using solargraph as your LSP
- would like autocompletion/type hints for the Dragonruby APIs

## Usage

- clone this repository to a convenient location
- configure solargraph to include the checked out repository

```yml
include:
- "mygame/app/*.rb"
- "../dragonruby-yard-doc/*.rb"
```

## Examples

### vim/neovim

https://github.com/user-attachments/assets/2e936f40-33f0-4c6e-b5a5-b58786454c35

### VSCode

https://github.com/user-attachments/assets/d5f33c46-fafd-4336-8f61-996292cbd9d1


## Solargraph

Solargraph is a Ruby language server and suite of static analysis tools. The language server provides intellisense, autocompletion, diagnostics, and other language features for editors and IDEs with language client capabilities. The static analysis tools check code for type safety.

A Solargraph integration with Visual Studio Code is officially supported with the Ruby Solargraph extension.

- How to install the extension: https://solargraph.org/guides/getting-started
- Extension documentation: https://marketplace.visualstudio.com/items?itemName=castwide.solargraph
- About configurations: https://solargraph.org/guides/configuration

VS Code configuration:

1. Add `.solargraph.yml` file in the workspace’s root directory. 
2. Add configuration to the file


# Dragonruby YARD Doc

This repository contains YARD documentation for the main Dragonruby APIs.

Used in conjunction with Solargraph as your LSP, you'll be able to get rich API autocomplete and type support for the Dragonruby APIs.

## Examples

### vim/neovim

https://github.com/user-attachments/assets/2e936f40-33f0-4c6e-b5a5-b58786454c35

### VSCode

https://github.com/user-attachments/assets/d5f33c46-fafd-4336-8f61-996292cbd9d1

## Prerequisites

- A CRuby runtime
- The solargraph gem
- An editor that can be configured to use the Solargraph LSP:
  - Vim/neovim
  - VS-Code 
  - Emacs
  - Zed
  - Sublime Text
  - etc.

## Step by Step install

If you confidently work with Ruby, gems and solargraph then the TLDR is:

- clone this repository to a convenient location
- configure solargraph to include the checked out repository

```yml
include:
- "mygame/app/*.rb"
- "../dragonruby-yard-doc/*.rb"
```

If you'd like more detailed instructions, read on.

### Clone this repository

Clone this repository to a directory that is a peer of your normal dragronruby projects.

For example, if your game project is located at `~/devel/games/myawesomegame`, clone this repo to `~/devel/games/dragonruby-yard-doc`

```sh
$ cd ~/devel/games/
$ git clone git@github.com:owenbutler/dragonruby-yard-doc.git
```

### A CRuby runtime

Dragonruby itself does not require a ruby runtime to work. So, you might be wondering why we need another Ruby installed here? The answer is that the solargraph gem, which we will use as an LSP, does need a ruby runtime.

#### Windows

Download and run the latest ruby installer from [rubyinstaller.org](https://rubyinstaller.org/)

#### Linux/Unix

Use the package management system of your distribution or third-party tools (asdf, rbenv or RVM).

#### MacOS

Use third-party tools (asdf, rbenv or RVM).

### The solargraph gem

Once you have a ruby installed, install the solargraph gem:

```sh
$ gem install solargraph
```

Solargraph needs to be configured to include this repo. Create a solargraph config file inside your game directory:

```sh
$ cd ~/devel/games/myawesomegame
$ solargraph config
```

This creates a default `.solargraph.yml` file in the root of your project dir.

Edit the include section of the config file to include our checked out repo:

```yml
include:
- "mygame/app/*.rb"
- "../dragonruby-yard-doc/*.rb"
```
If you'd like to further configure solargraph, [explore the config reference](https://solargraph.org/guides/configuration).

### Configure your editor to use solargraph LSP

#### VSCode

VSCode supports running solargraph through an [extension](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph).

- Open the extensions view
- Search for Solargraph
- Install the extension

#### Vim/Neovim

- Install solargraph LSP via [Mason](https://github.com/williamboman/mason.nvim)

#### Emacs

...

#### Zed

...

#### Sublime Text

[LSP for Sublime Text](https://lsp.sublimetext.io/) can be configured to run Solargraph.

- Install the LSP package using the command palette (`Tools > Command Palette`):
  - Enter the command `Package Control: Install Package`
  - Choose the LSP package
- Add Solargraph to the list of LSP clients in the package's settings (`Settings > Package Settings > LSP > Settings`):

```json
{
  "clients": {
    "solargraph": {
      "enabled": true,
      "command": [
        "solargraph", "stdio"
      ],
      "selector": "source.ruby",
      "initializationOptions": {
        "diagnostics": true
      }
    }
  }
}
```

The LSP package supports automatic formatting but doesn't enable it by default. If you'd like to use it:

- Open a `.rb` file
- Open the syntax-specific settings (`Settings > Settings - Syntax Specific`)
- Enable format on save:

```json
{
  "lsp_format_on_save": true
}
```

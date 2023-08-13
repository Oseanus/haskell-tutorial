# Purpose

The purpose of this repository is to explore concepts of funtional programming and what is better than the widely known functional programming language than Haskell. So I will fil this respository with life in an undefined time frame.

# Compiler Setup

The setup I use is on an Arch Linux machine. So I followed following [guide](https://wiki.archlinux.org/title/haskell) for the installation.

It consists of two elements plus configuration:
- The Glasgow Haskell Compiler(GHC)
- Cabal - A build tool that relies on GHC

Another way to install is to use GHCup. This a commad line tool similar to rustup to manage different parallel Haskell installations.

# Editor Setup

As an editor I use  Visual Studio Code. I have installed folowing packages:

- Haskell - For language support and language server
- Haskell Syntax Highlighting
- haskell-linter
- Haskel GHCi Debug Adapter Phoityne
- haskell-build

# GHCi

Documentation about GHCi can be found [here](https://downloads.haskell.org/ghc/latest/docs/users_guide/ghci.html). It is the interactive environment for GHC and includes an interactive debugger. Imaginge it like a command prompt you would find with Python. To enter a GHCi session you need to type ``ghci`` in the command promtp. At this point you could enter valid Haskell expressions.

Enter ```:?``` for help and ```:l script_file``` to load a sources file. Note that you leave out the file extension. If a file is loaded its functions can be used.

A more detailed documentation you will find in the link above.

# Content

[01 Starting Point](01_Starting_Point.md)
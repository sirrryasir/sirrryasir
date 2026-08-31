# Yasir Hassan - Resume

This repository contains the source code for my professional resume, built with [Typst](https://typst.app/), a modern markup-based typesetting system.

## Setup & Compilation

To compile the resume locally, you need to have Typst installed.

### Installation

If you don't have Typst installed, you can install it via your package manager or cargo:

```bash
# macOS (Homebrew)
brew install typst

# Linux (Arch)
sudo pacman -S typst

# Rust/Cargo
cargo install typst-cli
```

### Building

To compile the `Yasir_Hassan_Resume.typ` file into a PDF, run the following command in the terminal:

```bash
typst compile Yasir_Hassan_Resume.typ Yasir_Hassan_Resume.pdf
```

To automatically recompile when changes are made (watch mode):

```bash
typst watch Yasir_Hassan_Resume.typ Yasir_Hassan_Resume.pdf
```

## Structure

- `Yasir_Hassan_Resume.typ`: The main Typst source file containing the layout and content.
- `Yasir_Hassan_Resume.pdf`: The compiled, production-ready PDF output.

## Why Typst?

This resume was migrated from LaTeX to Typst for faster compilation, cleaner syntax, and better modern typesetting capabilities while maintaining complete ATS (Applicant Tracking System) compatibility.

# Documentation

Welcome to the Frevo Color Theme documentation.

## Quick Navigation

| Document                              | What You'll Learn                                                       |
| ------------------------------------- | ----------------------------------------------------------------------- |
| [The Frevo Palette](PALETTE.md)       | How we chose the colors — the theory, the process, and the final values |
| [Installation Guide](INSTALL.md)      | Step-by-step setup for all 35+ supported applications                   |
| [Available Ports](PORTS.md)           | Complete list of ports and their status                                 |
| [Contributing Guide](CONTRIBUTING.md) | How to create ports and contribute                                      |

## Start Here

**New to Frevo?** Start with the [main README](../README.md) for an overview.

**Want to understand the colors?** Read [The Frevo Palette](PALETTE.md) — it explains why we chose each color and how they work together.

**Ready to install?** Jump to the [Installation Guide](INSTALL.md) for your application.

**Want to contribute?** Check the [Contributing Guide](CONTRIBUTING.md) for guidelines on creating new ports.

## Structure

```
docs/
  README.md          # This file
  PALETTE.md         # Color theory and specifications
  INSTALL.md         # Installation instructions
  PORTS.md           # Port status and links
  CONTRIBUTING.md    # Contribution guidelines
```

## Source Files

The canonical color definitions live in:

- **YAML**: [`theme/frevo-theme.yaml`](../theme/frevo-theme.yaml) — the source of truth
- **Neovim**: [`frevo.nvim/lua/frevo/palette.lua`](../../frevo.nvim/lua/frevo/palette.lua)

All ports should derive their colors from these files to ensure consistency.

---

[Back to Main README](../README.md)

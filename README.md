# Havaem's Neovim Template

**NOTE:** This is for AstroNvim v4+

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Clone the repository

```shell
git clone https://github.com/havaem/nvim-config ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

#### Keymap

| Keymap           | Description                   | Mode            |
| ---------------- | ----------------------------- | --------------- |
| `<Leader>r`      | Reload AstroCore              | Normal          |
| `<A-$number>`    | Switch to buffer $number      | Normal + Insert |
| `<F2>`           | Rename a variable             | Normal          |
| `<Tab>`          | Move 10 lines down            | Normal          |
| `<S-Tab>`        | Mode 10 lines up              | Normal          |
| `<C-b>`          | Move to beginning of the line | Insert          |
| `<C-e>`          | Move to end of the line       | Insert          |
| `<C-${h-j-k-l}>` | Move by direction             | Insert          |
| `<A-q>`          | Escape terminal mode          | Terminal        |
| `<F7>`           | Open new terminal             | Terminal        |
| `<F8>`           | Open another terminal         | Terminal        |
| ...              | update soon...                | ...             |

If you need to find more, you should go to [AstroNvim](https://docs.astronvim.com/mappings).

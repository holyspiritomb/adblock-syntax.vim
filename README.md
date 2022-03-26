# Adblock/AdGuard/uBlock filter syntax

Vim syntax definition for the Adblock+, AdGuard, and uBlock origin filter.

Based on the syntax by @ThomasGreiner [^1], but with some modifications.

There isn't a `ftdetect` included for this filter. If you want one, you can write it yourself.

## Installation

For vim-plug users, you can use

```vim
Plug 'YaBoiBurner/adblock-syntax.vim'
```

Or, for packer users, you can use

```lua
use("YaBoiBurner/adblock-syntax.vim")
-- Or for lazy-loading, though it has no real benefit
use({"YaBoiBurner/adblock-syntax.vim", ft = "adp"})
```

[^1]: https://github.com/ThomasGreiner/abp-syntax

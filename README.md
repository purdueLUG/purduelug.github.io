# Purdue Linux Users Group Site

Built with Hugo.

## Themes
Due to needing to modify a number of parts of the themes, they have been flattened into the site itself. See the respective [licenses](./licenses).

- [risotto](https://github.com/joeroe/risotto), [license](./licenses/LICENSE-risotto.txt)
- [hugo-notice](https://github.com/martignoni/hugo-notice), [license](./licenses/LICENSE-hugo-notice.txt)

## Building

### With Nix

The end-site can be built with `nix build`. The output will be in `./result`
Alternatively, while in the devshell (using `direnv` or `nix develop`), run `hugo`. The output will be in `/public`.

### Without Nix

Install Hugo, then run `hugo`.

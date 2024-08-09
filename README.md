# Purdue Linux Users Group Site

Built with Hugo, with themes derived from [risotto](https://github.com/joeroe/risotto) and [hugo-notice](https://github.com/martignoni/hugo-notice).
See their respective theme folders for more information.
All vendored themes have unnecessary files (such as git metadata) removed.

## Building

### With Nix

The end-site can be built with `nix build`. The output will be in `./result`
Alternatively, while in the devshell (using `direnv` or `nix develop`), run `hugo`. The output will be in `/public`.

### Without Nix

Install Hugo, then run `hugo`.

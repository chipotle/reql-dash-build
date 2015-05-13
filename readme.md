This is a zsh script for generating [Dash][] docsets for RethinkDB. It creates
three docsets -- JavaScript, Python and Ruby. The docsets will be created in
a `build` directory directly under the `_dash` directory.

The script requires [pandoc][] for processing, which can be installed from
most package managers including Homebrew. Its other dependencies, `sed` and [sqlite][], are included with OS X. Building on non-OS X systems has not been tested.

[Dash]: http://kapeli.com/dash
[pandoc]: http://johnmacfarlane.net/pandoc/
[sqlite]: https://www.sqlite.org

## Building steps

1. Check out the `rethinkdb/docs` repository.
2. Check out this repository.
3. Edit the `docroot=` line in `makedash.sh` to point to the top level of the `docs` directory.
4. Run `makedash.sh`.

The docsets will be created in a `build/` directory.

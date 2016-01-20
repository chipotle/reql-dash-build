This is a zsh script for generating [Dash][] docsets for RethinkDB. It
creates four docsets -- JavaScript, Python, Ruby, and Java. The docsets
will be created in a `build` directory directly under the `_dash`
directory.

The script requires [pandoc][] for processing, which can be installed
from most package managers including Homebrew. Its other dependencies,
`sed` and [sqlite][], are included with OS X. Building on non-OS X
systems has not been tested.

[Dash]: http://kapeli.com/dash
[pandoc]: http://johnmacfarlane.net/pandoc/
[sqlite]: https://www.sqlite.org

## Building steps

1. Check out the `rethinkdb/docs` repository.
2. Check out this repository.
3. Edit the `docroot=` line in `makedash.sh` to point to the top level of
   the `docs` directory. (If you check them out as siblings in a parent
   directory, it should run as-is.)
4. Run `makedash.sh`.

## Notes

The docsets will be created in a `build/` directory. This directory is
blown away and rebuilt by the build script.

Currently, all ReQL terms are categorized as "commands" in Dash's
taxonomy. This may be made more granular in a later revision.

TERMUX_PKG_HOMEPAGE=https://tools.suckless.org/lchat/
TERMUX_PKG_DESCRIPTION="lchat (line chat) is a line oriented front end for ii-like chat programs."
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@craigcomstock"
TERMUX_PKG_VERSION=1.0
TERMUX_PKG_SRCURL=git+https://git.suckless.org/lchat
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_DEPENDS="grep, libgrapheme"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX MANDIR=$TERMUX_PREFIX/share/man"

# lchat/Makefile doesn't take care to create directories. instead of a patch, just make the dir
# also, no LICENSE file, so grab contents of https://git.suckless.org/lchat/file/lchat.c.html
termux_step_post_get_source()
{
  mkdir -p $TERMUX_PREFIX/share/man/man1
  echo "
Copyright (c) 2015-2023 Jan Klemkow <j.klemkow@wemelug.de>
Copyright (c) 2022-2023 Tom Schwindl <schwindl@posteo.de>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
" > $TERMUX_PKG_SRCDIR/LICENSE
}

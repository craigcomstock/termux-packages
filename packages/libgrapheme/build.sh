TERMUX_PKG_HOMEPAGE=https://tools.suckless.org/lchat/
TERMUX_PKG_DESCRIPTION="libgrapheme is an extremely simple freestanding C99 library providing utilities for properly handling strings according to the latest Unicode standard 15.0.0."
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@craigcomstock"
TERMUX_PKG_VERSION=2.0.2
TERMUX_PKG_SRCURL=git+https://git.suckless.org/libgrapheme
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX PCPREFIX= LDCONFIG= CC=$TERMUX_HOST_PLATFORM-clang BUILD_CC=cc"

# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# ! PACKAGE BROKEN [NOT COMPATIBLE WITH OPENRC]

EAPI=8
inherit git-r3

DESCRIPTION="Ly - a TUI display manager"
HOMEPAGE="https://github.com/fairyglade/ly"
EGIT_REPO_URI="https://github.com/fairyglade/ly.git"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="-*"

DEPEND="
	sys-devel/gcc
	sys-devel/make
	sys-libs/pam
	x11-libs/libxcb
	x11-base/xorg-server
	x11-apps/xauth
	!x11-misc/ly-gentoo
"
RDEPEND="${DEPEND}"
BDEPEND=""

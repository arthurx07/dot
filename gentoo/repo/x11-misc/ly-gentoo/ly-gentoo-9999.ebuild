# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Ly - a TUI display manager"
HOMEPAGE="https://github.com/pspiagicw/ly-gentoo"
EGIT_REPO_URI="https://github.com/pspiagicw/ly-gentoo.git"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	sys-devel/gcc
	sys-devel/make
	sys-libs/pam
	x11-libs/libxcb
	x11-base/xorg-server
	x11-apps/xauth
	!x11-misc/ly
"
RDEPEND="${DEPEND}"
BDEPEND=""

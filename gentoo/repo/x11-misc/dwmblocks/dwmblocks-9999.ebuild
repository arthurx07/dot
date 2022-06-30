# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Modular status bar for dwm written in c."
HOMEPAGE="https://github.com/torrinfail/dwmblocks"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
PATCHES=(
	"${FILESDIR}/${PN}-statuscmd-b6b0be4.patch"
)

DEPEND="x11-wm/dwm"
RDEPEND="${DEPEND}"
BDEPEND=""

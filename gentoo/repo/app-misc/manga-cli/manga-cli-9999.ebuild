# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A cli tool to browse and read manga"
HOMEPAGE="https://github.com/7USTIN/manga-cli"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="sys-apps/coreutils sys-apps/diffutils sys-devel/patch sys-apps/gawk sys-apps/grep sys-apps/sed net-misc/curl dev-vcs/git media-gfx/img2pdf app-text/zathura app-text/zathura-pdf-poppler"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin manga-cli
	dodoc DISCLAIMER.md LICENSE.md README.md
}

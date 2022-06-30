# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="This program provides a scroll back buffer for a terminal like st."
HOMEPAGE="https://tools.suckless.org/scroll/"
SRC_URI="https://dl.suckless.org/tools/scroll-0.1.tar.gz"
EGIT_REPO_URI="https://git.suckless.org/scroll"

LICENSE="ISC"
KEYWORDS="amd64"
SLOT="0"
IUSE="savedconfig"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
  default
  restore_config config.h
}

src_install() {
	dobin scroll

	dodoc README LICENSE

	save_config config.h
}

pkg_postinst() {
  elog "Check ${HOMEPAGE} for more Details"
}

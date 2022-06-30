# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="slstatus is a status monitor for window managers that use WM_NAME or stdin to fill the status bar."
HOMEPAGE="https://tools.suckless.org/slstatus/"
EGIT_REPO_URI="git://git.suckless.org/slstatus"

LICENSE="ISC"
KEYWORDS="amd64"
SLOT="0"
IUSE="savedconfig"

DEPEND="x11-libs/libX11 x11-libs/libXft"
RDEPEND="${DEPEND}"
BDEPEND="x11-base/xorg-proto virtual/pkgconfig"

src_prepare() {
  default
  restore_config config.h
}

src_install() {
  emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install

  dodoc README LICENSE

  save_config config.h
}

pkg_postinst() {
  elog "Check ${HOMEPAGE} for more Details"
}

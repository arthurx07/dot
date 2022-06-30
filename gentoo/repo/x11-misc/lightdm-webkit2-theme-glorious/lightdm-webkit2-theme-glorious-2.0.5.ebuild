# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A sleek, modern and glorified LightDM webkit2 theme"
HOMEPAGE="https://github.com/manilarome/$PN"
SRC_URI="$HOMEPAGE/releases/download/v$PV/$PN-$PV.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="x11-misc/lightdm-webkit2-greeter"
RDEPEND="${DEPEND}"
BDEPEND=""

S=$WORKDIR

src_install() {
	insinto /usr/share/lightdm-webkit/themes/glorious
	doins -r $S/*

	docinto /usr/share/doc/$PN
	dodoc $S/LICENSE
}

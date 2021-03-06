# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A cli tool to browse and play anime"
HOMEPAGE="https://github.com/pystardust/ani-cli"
SRC_URI="https://github.com/pystardust/$PN/archive/refs/tags/v$PV.tar.gz -> $P.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-apps/grep net-misc/curl sys-apps/sed media-video/mpv media-video/ffmpeg dev-libs/openssl"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin ani-cli
}

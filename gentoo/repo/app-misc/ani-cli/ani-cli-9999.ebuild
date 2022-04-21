# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A cli tool to browse and play anime"
HOMEPAGE="https://github.com/pystardust/ani-cli"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="sys-apps/grep net-misc/curl sys-apps/sed media-video/mpv media-video/ffmpeg dev-libs/openssl"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin ani-cli
}

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

DEPEND="sys-apps/grep sys-apps/sed sys-apps/gawk net-misc/curl dev-libs/openssl media-video/mpv net-misc/aria2 media-video/ffmpeg"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	insinto /usr/share/$PN/
	doins -r hist_transition.sh

	insinto /usr/lib/
	doins -r lib/$PN/

	exeinto /usr/share/$PN
	doexe $S/bin/ani-cli
	dosym /usr/share/$PN/ani-cli /usr/bin/ani-cli

	dodoc LICENSE README.md disclaimer.md
}

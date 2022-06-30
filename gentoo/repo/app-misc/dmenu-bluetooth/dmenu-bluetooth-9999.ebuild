# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A script that generates a dmenu menu that uses bluetoothctl to connect to bluetooth devices and display status info."
HOMEPAGE="https://github.com/Layerex/dmenu-bluetooth"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="x11-misc/dmenu net-wireless/bluez"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin dmenu-bluetooth
	dodoc LICENSE README.md
}

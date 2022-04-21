# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A script that generates a rofi menu to connect to bluetooth devices and display stats info."
HOMEPAGE="https://github.com/nickclyde/$PN"
EGIT_REPO_URI="https://github.com/nickclyde/$PN.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+dmenu rofi"

DEPEND="
	net-wireless/bluez
	dmenu? ( x11-misc/dmenu )
	rofi? ( x11-misc/rofi )
"
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}/${PN}-rofi-bluetooth.patch"
)

src_install() {
	dobin rofi-bluetooth
	dodoc LICENSE
	elog "Now you need to configure the package."
	elog "Configuration guide: https://github.com/nickclyde/rofi-bluetooth/blob/master/README.md"
}

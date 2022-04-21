# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="rofi frontend for pass"
HOMEPAGE="https://github.com/carnager/rofi-pass"
SRC_URI="https://github.com/carnager/rofi-pass/archive/refs/tags/$PV.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE="-otp"

DEPEND="
	app-admin/pass
	sys-apps/sed
	x11-misc/rofi
	x11-misc/xdotool
	sys-apps/gawk
	>=app-shells/bash-4.0
	app-admin/pwgen
	otp? ( app-admin/pass-otp )
"
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}/${PN}-Makefile.patch"
	"${FILESDIR}/${PN}-rofi-pass.patch"
)

src_install() {
	dobin rofi-pass addpass
	dodoc LICENSE README.md config.example
	insinto /etc/
	newins config.example rofi-pass.conf
}

# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Pulseaudio command line mixer"
HOMEPAGE="https://github.com/cdemoulins/$PN"
EGIT_REPO_URI="https://github.com/cdemoulins/$PN.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	media-sound/pulseaudio
"
RDEPEND="${DEPEND}"
BDEPEND="dev-libs/cxxopts"

src_compile() {
	meson setup build
	meson compile -C build
}

src_install() {
    dobin build/pamixer
}

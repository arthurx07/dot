# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A wallpaper manager that makes it possible to put videos as wallpaper."
HOMEPAGE="https://github.com/terroo/wallset"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="
	>=media-video/ffmpeg-4.2.3
	>=media-gfx/feh-3.4.1
	>=media-gfx/imagemagick-7.0.10.16
	>=x11-apps/xrandr-1.5.1
	>=x11-misc/xdg-utils-1.1.3
	>=app-shells/bash-4.0
	>=sys-apps/sed-4.5
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin wallset
	dodoc LICENSE README.md
}

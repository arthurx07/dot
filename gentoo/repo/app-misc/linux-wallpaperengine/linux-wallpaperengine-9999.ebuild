# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="An attempt to make wallpaper engine wallpapers compatible with Linux"
HOMEPAGE="https://github.com/Almamu/linux-wallpaperengine"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="
	virtual/opengl
	dev-util/cmake
	app-arch/lz4
	sys-libs/zlib
	media-libs/sdl-mixer
	media-video/ffmpeg
	x11-base/xorg-server
	x11-apps/xrandr
	>=media-libs/glfw-3.3.5
	media-libs/glm
	media-libs/glew
	media-libs/freeglut
	media-libs/freeimage
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	mkdir build
	cd build
	cmake ..
	make
}

src_install() {
	insinto /usr/share/$PN/
	exeinto usr/share/$PN/
	doexe build/wallengine
	dosym /usr/share/$PN/wallengine /usr/bin/wallengine
	keepdir /usr/share/$PN/assets
	elog "Move assets directory to /usr/share/$PN/assets"
}

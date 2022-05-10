# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# ! POSSIBLY BROKEN EBUILD

EAPI=8

DESCRIPTION="Video wallpaper for Linux. Minimal and written in Python."
HOMEPAGE="https://github.com/jeffshee/hidamari"
SRC_URI="https://github.com/jeffshee/hidamari/archive/refs/tags/v$PV-2.tar.gz"

LICENSE="Apache-2.0"
KEYWORDS="-*"
SLOT="0"
IUSE=""

DEPEND="
	dev-lang/python
	dev-python/pip
	dev-vcs/git
	media-video/ffmpeg
	media-video/vlc
	x11-libs/libX11
	dev-python/pygobject
	dev-python/pillow
	dev-python/pydbus
	net-misc/youtube-dl
"
RDEPEND="${DEPEND}"
BDEPEND=""

S=$WORKDIR/hidamari-2.0-2

src_install() {
	insinto /usr/share/$PN/
	doins -r src
	dosym /usr/share/$PN/src/hidamari /usr/bin/hidamari
	insinto /usr/share/applications/
	doins res/hidamari.desktop
	insinto /usr/share/icons/hicolor/scalable/apps/
	doins res/hidamari.svg
	chmod +x $D/usr/share/$PN/src/*
}

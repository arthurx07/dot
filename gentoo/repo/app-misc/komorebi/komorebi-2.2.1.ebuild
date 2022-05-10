# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# ! POSSIBLY BROKEN EBUILD

EAPI=8

DESCRIPTION="A beautiful and customizable wallpapers manager for Linux"
HOMEPAGE="https://github.com/Komorebi-Fork/komorebi"
SRC_URI="https://github.com/Komorebi-Fork/komorebi/archive/refs/tags/v$PV.tar.gz"

LICENSE="GPL-3"
KEYWORDS="-*"
SLOT="0"
IUSE="vdpau vaapi"

DEPEND="
	dev-libs/libgee
	media-libs/clutter-gtk
	media-libs/clutter-gst
	net-libs/webkit-gtk
	media-plugins/gst-plugins-libav
	vaapi? ( media-plugins/gst-plugins-vaapi )
	vdpau? ( media-libs/gst-plugins-bad )
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-util/meson
	dev-lang/vala
"

src_compile() {
	meson build && cd build && meson compile
}

src_install() {
	meson install
}

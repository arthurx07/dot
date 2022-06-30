# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

SRC_URI="https://github.com/atlas-engineer/nyxt/releases/download/${PV}/nyxt-${PV}-source-with-submodules.tar.xz -> ${P}.tar.xz"
DESCRIPTION="Nyxt - the hacker's power-browser."
HOMEPAGE="https://nyxt.atlas.engineer/"

LICENSE="BSD CC-BY-SA-3.0"
KEYWORDS="~amd64"
SLOT="0"
IUSE="X spell +gst +ext"

RDEPEND=""
DEPEND="${RDEPEND}
		net-libs/webkit-gtk
		dev-libs/gobject-introspection
		net-libs/glib-networking
		gnome-base/gsettings-desktop-schemas
		sys-libs/libfixposix
		X? ( x11-misc/xclip )
		spell? ( app-text/enchant )
		ext? ( virtual/pkgconfig )
		gst? ( media-libs/gstreamer media-libs/gst-plugins-base media-libs/gst-plugins-good media-libs/gst-plugins-bad media-libs/gst-plugins-ugly media-plugins/gst-plugins-libav )"
BDEPEND=">=dev-lisp/sbcl-2.0.0"
RESTRICT="primaryuri"
S="${WORKDIR}"

src_prepare(){
	default
	ls _build/quicklisp-client
}

src_compile(){
	env PREFIX=/usr emake all || die emake failed
}

src_install() {
	env PREFIX=/usr DESTDIR="${D}" emake install
	einstalldocs
}

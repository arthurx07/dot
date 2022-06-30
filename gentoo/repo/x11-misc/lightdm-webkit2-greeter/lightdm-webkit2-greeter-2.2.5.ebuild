# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="LightDM greeter that uses WebKit2 for theming via HTML/JavaScript"
HOMEPAGE="https://github.com/antergos/web-greeter"
SRC_URI="https://github.com/Antergos/web-greeter/archive/refs/tags/2.2.5.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE="+gnome-backgrounds"

DEPEND="
	x11-misc/lightdm
	net-libs/webkit-gtk
	sys-apps/accountsservice
	gnome-backgrounds? ( x11-themes/gnome-backgrounds )
"
RDEPEND="${DEPEND}"
BDEPEND="dev-libs/gobject-introspection dev-util/meson sys-devel/gettext dev-libs/dbus-glib"

S="$WORKDIR/web-greeter-$PV"

src_compile() {
	cd $S/build
	meson ..
	ninja
}

src_install() {
	cd $S/build
	DESTDIR="$D" ninja install
}

# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A colorscheme, wallpaper and template manager for *nix"
HOMEPAGE="https://github.com/deviantfero/wpgtk"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-2"
KEYWORDS="-*"
SLOT="0"
IUSE="+livereload +betterlooking"

DEPEND="
	dev-lang/python
	dev-python/pip
	media-gfx/feh
	dev-python/pillow
	livereload? ( x11-misc/xsettingsd )
	betterlooking? ( x11-themes/gtk-engines-murrine )
	"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	pip install .
}

# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A colorscheme, wallpaper and template manager for *nix"
HOMEPAGE="https://github.com/deviantfero/wpgtk"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-2"
KEYWORDS="~amd64"
SLOT="0"
IUSE="livereload betterlooking +feh nitrogen"

DEPEND="
	dev-vcs/git
	dev-lang/python
	dev-python/setuptools
	dev-python/pillow
	dev-python/pygobject
	dev-libs/libxslt
	app-misc/pywal
	feh? ( media-gfx/feh )
	nitrogen? ( x11-misc/nitrogen )
	livereload? ( x11-misc/xsettingsd )
	betterlooking? ( x11-themes/gtk-engines-murrine )
	"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
  	python setup.py build
}

src_install() {
  	python setup.py install --prefix=/usr --root="$D/" --optimize=1 --skip-build
	dodoc LICENSE
  	install -Dm644 "$S/$PN/misc/wpg.conf" \
                 "$D/etc/$PN/wpg.conf"
  	install -Dm644 "$S/$PN/misc/wpgtk.desktop" \
                 "$D/usr/share/applications/wpgtk.desktop"
  	install -Dm644 "$S/completions/bash/wpg" \
                 "$D/usr/share/bash-completion/wpg"
  	install -Dm644 "$S/completions/zsh/_wpg" \
                 "$D/usr/share/zsh/site-functions/_wpg"
  	install -Dm644 "$S/$PN/misc/wpg-install.sh" \
                 "$D/usr/bin/wpg-install.sh"
}

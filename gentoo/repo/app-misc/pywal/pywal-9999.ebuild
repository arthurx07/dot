# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Generate and change color-schemes on the fly."
HOMEPAGE="https://github.com/dylanaraps/pywal"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="MIT"
KEYWORDS="~amd64"
SLOT="0"
IUSE="+feh nitrogen wpgtk"

DEPEND="
	dev-vcs/git
	dev-lang/python
	dev-python/setuptools
	media-gfx/imagemagick
	feh? ( media-gfx/feh )
	nitrogen? ( x11-misc/nitrogen )
	wpgtk? ( app-misc/wpgtk )
	"
RDEPEND="${DEPEND}"
BDEPEND=""



src_compile() {
  	python setup.py build
}

src_test() {
  	python setup.py test
}

src_install() {
  	python setup.py install --prefix=/usr --root="$D/" --optimize=1 --skip-build
	dodoc LICENSE.md
}

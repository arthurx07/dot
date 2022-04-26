# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Easy GPU switching for Nvidia Optimus laptops under Linux"
HOMEPAGE="https://github.com/geminis3/envycontrol"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="MIT"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="
	dev-lang/python
	x11-apps/xrandr
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	python setup.py install --root="$D/" --optimize=1
	dodoc LICENSE README.md
}

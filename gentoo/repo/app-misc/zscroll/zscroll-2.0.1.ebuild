# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="A text scroller for panels or terminals"
HOMEPAGE="https://github.com/noctuid/$PN"
SRC_URI="$HOMEPAGE/archive/refs/tags/$PV.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	sed -i '\|share/licenses/zscroll|d' setup.py
	default
}

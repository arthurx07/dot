# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A simple bash script to set wallpapers according to current time, using cron job scheduler."
HOMEPAGE="https://github.com/adi1090x/dynamic-wallpaper"
EGIT_REPO_URI="$HOMEPAGE.git"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

DEPEND="
	media-gfx/feh
	x11-apps/xrandr
	sys-process/cronie
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	exeinto usr/bin/
	newexe dwall.sh dwall
	insinto usr/share/$PN/
	doins -r images
	elog "Remember to setup a cron job. Please refer to https://github.com/adi1090x/dynamic-wallpaper#setup-cron-job"
}

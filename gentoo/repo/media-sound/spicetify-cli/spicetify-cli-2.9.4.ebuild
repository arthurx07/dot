# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Command-line tool to customize Spotify client"
HOMEPAGE="https://github.com/spicetify/spicetify-cli"
EGIT_REPO_URI="https://github.com/spicetify/spicetify-cli.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-vcs/git dev-lang/go"

S=

src_compile() {
	go build -o spicetify
}

src_install() {
	#dobin spicetify
	#install -Dm755 ./spicetify "${S}"/usr/share/${PN}/spicetify

	mkdir -p usr/share/$PN/{CustomApps,Extensions,Themes,jsHelper}/
	cp -r $WORKDIR/$P/{global.d.ts,css-map.json} usr/share/$PN/
	cp -r $WORKDIR/$P/CustomApps/* usr/share/$PN/CustomApps
	cp -r $WORKDIR/$P/Extensions/* usr/share/$PN/Extensions
	cp -r $WORKDIR/$P/Themes/* usr/share/$PN/Themes
	cp -r $WORKDIR/$P/jsHelper/* usr/share/$PN/jsHelper

	#cp -r "$S/{Themes,Extensions,CustomApps,jsHelper,globals.d.ts,css-map.json}" "$D/"
	#insinto "${INSTALLDIR}"
	#doins -r {CustomApps,Extensions,Themes,jsHelper,spicetify-cli,globals.d.ts,css-map.json}
	#dobin "${FILESDIR}/spicetify"
	#fperms +x "${INSTALLDIR}/spicetify-cli"

	# Clean up deps
	go clean -modcache
}

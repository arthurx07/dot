# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Command-line tool to customize Spotify client"
HOMEPAGE="https://github.com/spicetify/spicetify-cli"
#EGIT_REPO_URI="https://github.com/spicetify/spicetify-cli.git"
SRC_URI="https://github.com/spicetify/spicetify-cli/releases/download/v$PV/spicetify-$PV-linux-amd64.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="media-sound/spotify"
RDEPEND="${DEPEND}"
#BDEPEND="dev-vcs/git #dev-lang/go"

#src_compile() {
#	go build -o spicetify
# 	only for dev purposes
#}

S=$WORKDIR

src_install() {
	insinto /usr/share/$PN/
	doins -r css-map.json globals.d.ts
	cp -r CustomApps Extensions jsHelper Themes "$D/usr/share/$PN/"

	exeinto /usr/share/$PN/
	doexe spicetify
	dosym /usr/share/$PN/spicetify /usr/bin/spicetify

	# Clean up deps
	#go clean -modcache
}

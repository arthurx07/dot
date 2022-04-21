# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A free and open source manga reader that runs extensions built for Tachiyomi."
HOMEPAGE="https://github.com/Suwayomi/Tachidesk-Server"
FNAME="Tachidesk-Server-v$PV-r1087-linux-x64"
SRC_URI="https://github.com/Suwayomi/Tachidesk-Server/releases/download/v$PV/$FNAME.tar.gz -> $PN.tar.gz"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+electron"

DEPEND="
	virtual/jre
	"
RDEPEND="${DEPEND}"
BDEPEND=""

S="$WORKDIR/$FNAME/"

PATCHES=(
	"${FILESDIR}/${PN}-electron.sh.patch"
)

#src_compile() {
#	$S/gradlew server:downloadWebUI server:shadowJar
#}

src_install() {
	insinto /usr/share/java/$PN/
	newins Tachidesk-Server.jar $PN.jar
	exeinto /usr/bin/
	if use electron; then
		newexe tachidesk-server-electron-launcher.sh tachidesk-server
		insinto /usr/share/
		doins -r electron
		chmod +x $D/usr/share/electron/{electron,chrome-sandbox}
	else
		newexe tachidesk-server-browser-launcher.sh tachidesk-server
	fi
}

# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A free and open source manga reader that runs extensions built for Tachiyomi."
HOMEPAGE="https://github.com/Suwayomi/Tachidesk-Server"
SRC_URI="https://github.com/Suwayomi/Tachidesk-Server/archive/refs/tags/v$PV.tar.gz -> $P.tar.gz"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="virtual/jre"
#dev-util/electron
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	gradlew server:downloadWebUI server:shadowJar
}

src_install() {
	cp /server/build/Tachidesk-Server-v$PV.jar /usr/share/java/$PN/$P.jar
	#dodir /usr/bin/TachideskServer
# When I delete dodir /usr/bin/TachideskServer and change "${D}/usr/binTachideskServer to "${D}/usr/local/bin/ it doesn't work idk /y.
	#cp -R "${S}/" "${D}/usr/bin/TachideskServer" || die "Install failed!"
}

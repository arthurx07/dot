# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# ------------------------------------------------------------------------------
# Credits to:
# Maintainer: Daniel Dietrich <shaddow2k@@gmail..com>
# Based on the DCP-J552DW PKGBUILD -> Marius Rejdak <mariuswol at gmail dot com>
# ------------------------------------------------------------------------------

EAPI=8
inherit rpm

DESCRIPTION="Driver for the Brother DCP-J562DW wifi multifunctional printer"
HOMEPAGE="https://www.brother.es/"
SRC_URI="https://download.brother.com/welcome/dlf102102/dcpj562dwcupswrapper-1.0.0-0.i386.rpm
		 https://download.brother.com/welcome/dlf102101/dcpj562dwlpr-1.0.0-0.i386.rpm"

# original script: https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.3-1.gz

LICENSE="brother-eula"
SLOT="0"
KEYWORDS="amd64"
IUSE="+brscan +cups-ui"

DEPEND="
	net-print/cups
	app-arch/rpm
	brscan? ( media-gfx/brscan4 )
	cups-ui? ( app-admin/system-config-printer )
"
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install() {
	keepdir /var/spool/lpd
	cp -r $S/* $D/
	dodir usr/share/cups/model/Brother/
	cp $D/opt/brother/Printers/dcpj562dw/cupswrapper/brother_dcpj562dw_printer_en.ppd $D/usr/share/cups/model/Brother/
	elog "Run as root to install printer: lpadmin -p DCPJ562DW -E -v usb:/dev/usb/lp0 -P /usr/share/cups/model/Brother/brother_dcpj562dw_printer_en.ppd && lpadmin -p DCPJ562DW -v socket://192.168.1.144 -E"

#keepdir $D/usr/lib64/cups/filter
#cp $S/usr/lib64/cups/filter/brother_lpdwrapper_dcpj562dw $D/usr/libexec/cups/filter/
}

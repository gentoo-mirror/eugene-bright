# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# rpm eclass doesn't support EAPI=7
EAPI=6

inherit rpm

RPM_PKG_PREFIX="epson-inkjet-printer-201401w"
RPM_PKG_NAME="${RPM_PKG_PREFIX}-${PV}"

DESCRIPTION="Epson Inkjet Printer Driver for L130 Series, L132 Series, L220 Series, L222 Series, L310 Series, L312 Series, L360 Series, L362 Series, L365 Series, L366 Series, L455 Series, L456 Series"
HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="https://download3.ebz.epson.net/dsc/f/03/00/03/45/41/d95c03482376873661d7a8d4c165b385cd082cf3/${RPM_PKG_NAME}-1lsb3.2.x86_64.rpm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="net-print/cups"
DEPEND="$RDEPEND"

S="${WORKDIR}/opt/${RPM_PKG_PREFIX}"

src_unpack () {
	rpm_src_unpack ${A}
}

src_install () {
	dodoc -r doc
	dolib.so lib64/*
}

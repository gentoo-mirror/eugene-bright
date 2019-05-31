# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm

DESCRIPTION="Epson Inkjet Printer Driver for L130 Series, L132 Series, L220 Series, L222 Series, L310 Series, L312 Series, L360 Series, L362 Series, L365 Series, L366 Series, L455 Series, L456 Series"
HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="https://download3.ebz.epson.net/dsc/f/03/00/03/45/41/92e9c9254f0ee4230a069545ba27ec2858a2c457/epson-inkjet-printer-201401w-${PV}-1lsb3.2.src.rpm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="net-print/cups"
DEPEND="
$RDEPEND
app-arch/rpm"

src_unpack () {
    rpm_src_unpack ${A}
}

# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils

DESCRIPTION="ACTIVYLIRCD lirc daemon for activy remote control"
HOMEPAGE="http://www.htpc-forum.de/"
SRC_URI="http://www.gen2vdr.org/files/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

src_compile() {
	emake || die "emake failed"
}

src_install() {
	dobin activylircd inputevxd eventmapper key2lircd readevent
}

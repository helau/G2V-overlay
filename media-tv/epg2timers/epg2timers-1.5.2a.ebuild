# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils

DESCRIPTION="EPG2TIMERS reads timers from tvtv and promotes these to VDR"
HOMEPAGE="ftp://ftp.tvdr.de/vdr/Tools"
SRC_URI="ftp://ftp.tvdr.de/vdr/Tools/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

S="${WORKDIR}/${P%%-*}"

src_compile() {
        cd "$S"
        epatch ${FILESDIR}/epg2timers-g2v.patch
	emake || die "emake failed"
}

src_install() {
        cd "$S"
	dobin epg2timers loadvdr.pl update_timers
	dodoc README
}

# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-fonts/vdrsymbols-ttf/vdrsymbols-ttf-20080905.ebuild,v 1.1 2008/11/02 14:50:55 hd_brummy Exp $

S=${WORKDIR}/vdrsymbols-g2v

inherit font

DESCRIPTION="Font that contains symbols needed for VDR"

HOMEPAGE="http://www.htpc-forum.de"
SRC_URI="http://www.htpc-forum.de/download/${P}.tgz"

LICENSE="BitstreamVera"

SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
DEPEND=""
RDEPEND=""

FONT_SUFFIX="ttf"

#pkg_postinst() {
#	font_pkg_postinst
#}

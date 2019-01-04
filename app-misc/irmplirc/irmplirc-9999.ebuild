# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils git-2 flag-o-matic

DESCRIPTION="LIRC compatible daemon for IRMPUSB IR receiver"
HOMEPAGE="https://github.com/realglotzi/irmplircd"

EGIT_REPO_URI="https://github.com/realglotzi/irmplircd"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm x86"
#IUSE=""

DEPEND=""

RDEPEND="${DEPEND}"

src_unpack() {
	git-2_src_unpack
}

src_install() {
	dobin irmplircd || die
	dobin irmpexec || die
}

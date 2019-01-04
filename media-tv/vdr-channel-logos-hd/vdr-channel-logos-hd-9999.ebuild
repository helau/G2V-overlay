# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils git-r3
DESCRIPTION="hd channellogos from 3po"
HOMEPAGE="https://github.com/3PO/Senderlogos"
EGIT_REPO_URI="https://github.com/3PO/Senderlogos/"

SRC_URI=""

# EGIT_COMMIT=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	insinto "/usr/share/vdr/channel-logos-hd"
	find -maxdepth 1 -name "*.png" -print0|xargs -0 cp -a --target="${D}/usr/share/vdr/channel-logos-hd/"
}

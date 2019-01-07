# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils git-r3
DESCRIPTION="gen2vdr scripts config files etc"
HOMEPAGE="https://github.com/helau/gen2vdr"
EGIT_REPO_URI="https://github.com/helau/gen2vdr.git"

SRC_URI=""

# EGIT_COMMIT=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	find etc -type f -name "*.sh" -exec chmod +x {} \; || die
	for fls in $(find etc/*/ -type f|sed -e "s%^etc/%%" -e "s%/[^/]*$%%" |sort -u) ; do
		insinto /etc/${fls}
		doins etc/${fls}/*
	done
	insinto /etc
	doins etc/*
	find ${ED} -name "*.sh" -print0|xargs -0 chmod +x
	sed -i ${ED}/etc/g2v-release -e "s% git .*%git ${EGIT_VERSION:0:8}\"%"
}

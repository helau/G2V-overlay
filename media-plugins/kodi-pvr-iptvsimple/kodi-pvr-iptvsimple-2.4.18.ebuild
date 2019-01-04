# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils kodi-addon

DESCRIPTION="Kodi's IPTVSimple client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.iptvsimple"
SRC_URI=""
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/kodi-pvr/pvr.iptvsimple.git"
inherit git-r3

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	=dev-libs/libplatform-2*
	=media-tv/kodi-18*
	=media-libs/kodi-platform-18*
	sys-libs/zlib
	"

RDEPEND="
	${DEPEND}
	"

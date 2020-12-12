# Copyright 2020 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font xdg-utils

DESCRIPTION="English Towne is a free TrueType font."
HOMEPAGE="https://www.dafont.com/english-towne.font"
SRC_URI="https://dl.dafont.com/dl/?f=english_towne -> english-towne.zip"

LICENSE="FreeArt"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"
FONT_SUFFIX="ttf"

src_prepare() {
	default
	xdg_environment_reset
}

src_install() {
	font_src_install
}

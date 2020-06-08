# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3 font xdg-utils

DESCRIPTION="Playfair Display is an Open Source typeface family for display and titling use."
HOMEPAGE="https://github.com/clauseggers/Playfair-Display"
EGIT_REPO_URI="https://github.com/clauseggers/Playfair-Display.git"

LICENSE="OFL-1.1"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

FONT_S="fonts/TTF"
FONT_SUFFIX="ttf"

src_prepare() {
	default
	xdg_environment_reset
}

src_install() {
	font_src_install
}

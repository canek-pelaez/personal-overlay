# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# 

inherit gnome2-utils

DESCRIPTION="Command line MP3 tag reader and writer."
HOMEPAGE="http://xochitl.matem.unam.mx/~canek/gentoo/"
SRC_URI="http://xochitl.matem.unam.mx/~canek/gentoo/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/tagpy"

DEPEND="${RDEPEND}"

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog README
}

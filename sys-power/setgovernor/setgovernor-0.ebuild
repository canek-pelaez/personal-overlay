# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit systemd

DESCRIPTION="Sets the governor for the CPU frequency"
HOMEPAGE="http://xochitl.matem.unam.mx/~canek/setgovernor/index.html"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_unpack() {
	:
}

src_install() {
	insinto /etc
	doins ${FILESDIR}/setgovernor.conf
	exeinto /usr/bin
	doexe "${FILESDIR}"/setgovernor
	systemd_dounit "${FILESDIR}"/setgovernor.service
}

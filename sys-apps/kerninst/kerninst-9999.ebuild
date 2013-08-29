# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v3
# $Header: $

EAPI="5"

inherit git-2

DESCRIPTION="Kernel installator"
HOMEPAGE="http://github.com/canek-pelaez/kerninst/"
EGIT_REPO_URI="git://github.com/canek-pelaez/kerninst.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	exeinto /usr/bin
	doexe kerninst
	dosym /usr/bin/kerninst /usr/bin/kerninst-compile
	dosym /usr/bin/kerninst /usr/bin/kerninst-install
	dosym /usr/bin/kerninst /usr/bin/kerninst-mkinitrd
	dosym /usr/bin/kerninst /usr/bin/kerninst-updatebm
	insinto /etc/kerninst
	doins kerninst.conf
	dodoc README COPYING AUTHORS
}

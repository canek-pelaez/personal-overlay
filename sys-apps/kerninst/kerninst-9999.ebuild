# Copyright 2013-2020 Canek Peláez
# Distributed under the terms of the GNU General Public License v3

EAPI="6"

inherit git-r3

DESCRIPTION="Kernel installator"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/kerninst"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/kerninst.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="dracut"

RDEPENDS="
	app-shells/bash
	sys-apps/coreutils
	sys-apps/grep
	sys-apps/portage
	sys-apps/util-linux
	sys-devel/binutils
	sys-devel/make
	dracut? ( sys-kernel/dracut )
"

src_install() {
	exeinto /usr/bin
	doexe kerninst
	dosym /usr/bin/kerninst /usr/bin/kerninst-compile
	dosym /usr/bin/kerninst /usr/bin/kerninst-install
	dosym /usr/bin/kerninst /usr/bin/kerninst-updatemods
	dosym /usr/bin/kerninst /usr/bin/kerninst-mkinitrd
	dosym /usr/bin/kerninst /usr/bin/kerninst-updatebm
	dosym /usr/bin/kerninst /usr/bin/kerninst-newconfig
	dosym /usr/bin/kerninst /usr/bin/kerninst-clean
	insinto /etc/kerninst
	doins kerninst.conf
	doins splash.bmp
	dodoc README.md COPYING AUTHORS
}

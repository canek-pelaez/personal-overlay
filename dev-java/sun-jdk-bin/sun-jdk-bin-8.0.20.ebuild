# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit java-vm-2

DESCRIPTION="A hastily made binary build of the 64 bitSun JDK"
HOMEPAGE="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html"
SRC_URI="jdk-8u20-linux-x64.tar.gz"

LICENSE="Oracle-BCLA-JavaSE"
SLOT="8"
KEYWORDS="-* ~amd64"

RESTRICT="strip fetch"

# 423161
QA_PREBUILT="opt/.*"

S="${WORKDIR}/jdk1.8.0_20"

src_install() {
	local dest="/opt/${P}"
	local ddest="${ED}/${dest}"
	dodir "${dest}"

	cp -pRP * "${ddest}" || die
	insinto /usr/share/java-config-2/vm
	doins "${FILESDIR}/${PN}-${SLOT}"
	dodir "/usr/lib/jvm"
	dosym "/opt/${P}" "/usr/lib/jvm/${PN}-${SLOT}"
}

pkg_postinst() {
	elog "This ebuild installs the Sun JDV version 8 without"
	elog "checking for any dependency nor sanitation. Use it at"
	elog "your own risk."

	java-vm-2_pkg_postinst
}

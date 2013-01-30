# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit java-pkg-2 fdo-mime gnome2

MY_PN="RemoteDroidServer"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Server for the RemoteDroid Android application."
HOMEPAGE="http://remotedroid.net"
SRC_URI="http://remotedroid.net/${MY_PN}_v${PV}.zip"
LICENSE="Apache-2.0"
SLOT="0"
RESTRICT=""
KEYWORDS="~amd64 ~x86"

RDEPEND=">=virtual/jre-1.5
	${COMMON_DEPEND}"
DEPEND=">=virtual/jdk-1.5
	${COMMON_DEPEND}"

S="${WORKDIR}/${MY_PN}"

src_unpack() {
	unpack "${A}"
}

src_configure() {
	:
}

src_compile() {
	:
}

src_install() {
	dodoc README.txt
	

	java-pkg_dojar ${MY_PN}.jar

	# create wrapper script
	java-pkg_dolauncher remotedroid --main RemoteDroidServer

	insinto /usr/share/applications
	doins "${FILESDIR}/${PN}.desktop"

	insinto /usr/share/icons/hicolor/scalable/apps
	doins "${FILESDIR}/${PN}.svg"
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	gnome2_icon_cache_update
	einfo "The Remote Droid Server runs on UDP port number 57110."
}

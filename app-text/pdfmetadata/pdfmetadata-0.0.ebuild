# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $

EAPI=4
JAVA_PKG_IUSE="source"
WANT_ANT_TASKS="ant-nodeps"
inherit java-pkg-2 java-ant-2

DESCRIPTION="Set metadata of PDF documents"
HOMEPAGE="http://xochitl.matem.unam.mx/~canek/gentoo/"
SRC_URI="http://xochitl.matem.unam.mx/~canek/gentoo/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

CDEPEND="dev-java/pdfbox
	dev-java/ant-core"
RDEPEND=">=virtual/jre-1.4
	${CDEPEND}"
DEPEND=">=virtual/jdk-1.4
	${CDEPEND}"

src_unpack() {
	unpack ${A}
	cd "${S}"

	java-pkg_jar-from pdfbox
}

EANT_BUILD_TARGET="all"

src_install() {
	java-pkg_dolauncher pdfmetadata --main org.utils.canek.PDFMetadata
	java-pkg_newjar ${PN}.jar

	use source && java-pkg_dosrc src/org
}

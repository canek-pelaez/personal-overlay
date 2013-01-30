# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Free mathematics software for learning and teaching"
HOMEPAGE="http://geogebra.org/"
SRC_URI="http://kondr.ic.cz/deb/geogebra_${PV}_all.deb"

SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=">=virtual/jre-1.6.0"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack "${A}" || die "Unpacking ${A} failed"
	cd "${WORKDIR}"
	tar -xf "data.tar.gz"
}

src_install() {
	cp -r $WORKDIR $D
	mv $D/work/* $D
	rm -r $D/work/ $D/control.tar.gz $D/data.tar.gz $D/debian-binary
}

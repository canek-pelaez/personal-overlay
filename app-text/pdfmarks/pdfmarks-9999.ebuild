# Copyright 2017 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.34}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.34}

inherit git-r3 ninja-utils vala

DESCRIPTION="PDF marks"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/pdfmarks"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/pdfmarks.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-libs/glib-2.50:2
	dev-libs/libgee:0.8
	>=app-text/poppler-0.46.0
"
DEPEND="${RDEPEND}
	$(vala_depend)
        sys-devel/m4
"

src_configure() {
	# Common args
	local mesonargs=(
		--buildtype plain
		--libdir "$(get_libdir)"
		--localstatedir "${EPREFIX}/var/lib"
		--prefix "${EPREFIX}/usr"
		--sysconfdir "${EPREFIX}/etc"
	)

	BUILD_DIR="${BUILD_DIR:-${WORKDIR}/${P}-build}"
	set -- meson "${mesonargs[@]}" "$@" \
		"${EMESON_SOURCE:-${S}}" "${BUILD_DIR}"
	echo "$@"
	"$@" || die
}
                                
src_compile() {
	eninja -C "${BUILD_DIR}"
}

src_install() {
	DESTDIR="${D}" eninja -C "${BUILD_DIR}" install
	einstalldocs
}

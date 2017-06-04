# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.32}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.34}

inherit gnome2-utils git-r3 ninja-utils vala

DESCRIPTION="Music Library Maintainer"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/mlm"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/mlm.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=x11-libs/gtk+-3.10:3[X]
	>=dev-libs/glib-2.38:2
	x11-libs/gdk-pixbuf:2[jpeg]
	dev-libs/libgee:0.8
	>=media-libs/libid3tag-0.15
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

pkg_preinst() {
	gnome2_icon_savelist
	gnome2_schemas_savelist
}
        
pkg_postinst() {
	gnome2_icon_cache_update
	gnome2_schemas_update
}

pkg_postrm() {
	gnome2_icon_cache_update
	gnome2_schemas_update
}

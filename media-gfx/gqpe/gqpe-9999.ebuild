# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.32}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.34}

inherit git-r3 gnome2-utils meson vala

DESCRIPTION="Gtk+ Quick Photo Editor"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/gqpe"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/gqpe.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=x11-libs/gtk+-3.10:3[X]
	>=dev-libs/glib-2.38:2
	x11-libs/gdk-pixbuf:2[jpeg]
	dev-libs/libgee:0.8
	>=media-libs/gexiv2-0.5:0
"
DEPEND="${RDEPEND}
	$(vala_depend)
	sys-devel/m4
"

src_prepare() {
	default
	vala_src_prepare
}

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}

pkg_postinst() {
	gnome2_icon_cache_update
	gnome2_schemas_update
	xdg_desktop_database_update
}

pkg_postrm() {
	gnome2_icon_cache_update
	gnome2_schemas_update
	xdg_desktop_database_update
}

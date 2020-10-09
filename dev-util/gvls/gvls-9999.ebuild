# Copyright 20120 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.48}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.48}

inherit git-r3 gnome2-utils meson vala

DESCRIPTION="GNOME Vala Language Server"
HOMEPAGE="https://gitlab.gnome.org/esodan/gvls"
EGIT_REPO_URI="https://gitlab.gnome.org/esodan/gvls.git"
EGIT_COMMIT="gvls-0.16.0"

LICENSE="GPL-3"
SLOT="0"
IUSE="gedit"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/glib:2
	dev-libs/libgee:0.8
	dev-libs/jsonrpc-glib
	dev-libs/json-glib
	x11-libs/gtk+:3
	x11-libs/pango
	x11-libs/gtksourceview:4
	gedit? ( app-editors/gedit )
"
DEPEND="
	${RDEPEND}
	$(vala_depend)
"

src_prepare() {
	default
	vala_src_prepare
}

src_configure() {
	local emesonargs=(
		$(meson_use gedit ui)
		$(meson_use gedit gedit-plugin)
	)
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

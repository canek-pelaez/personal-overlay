# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.50}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.56}

inherit git-r3 gnome2-utils meson vala

DESCRIPTION="Music Library Maintainer"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/mlm"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/mlm.git"
EGIT_BRANCH="main"

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
DEPEND="
	${RDEPEND}
	$(vala_depend)
"

src_prepare() {
	default
	vala_setup
}

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}

pkg_postinst() {
	xdg_icon_cache_update
	xdg_desktop_database_update
	gnome2_schemas_update
}

pkg_postrm() {
	xdg_icon_cache_update
	xdg_desktop_database_update
	gnome2_schemas_update
}

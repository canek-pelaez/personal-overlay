# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MAX_API_VERSION="0.34"
VALA_MIN_API_VERSION="0.32"
VALA_USE_DEPEND="0.32"

inherit gnome2-live vala

DESCRIPTION="Gtk+ Quick Photo Editor"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/gqpe"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/gqpe.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-lang/vala-0.32
	>=x11-libs/gtk+-3.10:3[X]
	>=dev-libs/glib-2.38:2
	x11-libs/gdk-pixbuf:2[jpeg]
	dev-libs/libgee:0.8
	>=media-libs/gexiv2-0.5:0
"
DEPEND="${RDEPEND}
        sys-devel/m4
"

src_prepare() {
	gnome2-live_src_prepare
	vala_src_prepare
}

src_compile() {
	emake VALAC="$(type -p valac-0.32)"
}

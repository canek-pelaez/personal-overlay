# Copyright 1999-2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $$

EAPI="5"
GCONF_DEBUG="yes"

VALA_MIN_API_VERSION="0.18"

inherit gnome2 vala

DESCRIPTION="Quick Photo Editor"
HOMEPAGE="http://github.com/canek-pelaez/quick-photo-editor/"

LICENSE="GPL-2+"
SLOT="1"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=x11-libs/gtk+-3.2:3[X]
	>=dev-libs/glib-2.30:2
	x11-libs/gdk-pixbuf:2[jpeg]
	>=media-libs/gexiv2-0.5:0
	>=dev-lang/python-3.2:3.2
"
DEPEND="${RDEPEND}
	$(vala_depend)
        sys-devel/m4
"

src_configure() {
	DOCS="AUTHORS ChangeLog NEWS README"
	gnome2_src_configure
}

src_compile() {
	local valaver="$(vala_best_api_version)"
	emake VALAC="$(type -p valac-${valaver})"
}
		

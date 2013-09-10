# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MIN_API_VERSION="0.20"

inherit gnome2-live vala

DESCRIPTION="Music Library Maintainer"
HOMEPAGE="http://github.com/canek-pelaez/mlm/"
EGIT_REPO_URI="git://github.com/canek-pelaez/mlm.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=x11-libs/gtk+-3.2:3[X]
	>=dev-libs/glib-2.30:2
	x11-libs/gdk-pixbuf:2[jpeg]
	>=media-libs/libid3tag-0.15
"
DEPEND="${RDEPEND}
	$(vala_depend)
        sys-devel/m4
"

# Valac gets confused
MAKEOPTS="${MAKEOPTS} -j1"

src_prepare() {
	gnome2-live_src_prepare
	vala_src_prepare
}

src_compile() {
	local valaver="$(vala_best_api_version)"
	emake VALAC="$(type -p valac-${valaver})"
}

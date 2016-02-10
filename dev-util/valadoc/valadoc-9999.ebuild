# Copyright 2016 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MIN_API_VERSION="0.28"

inherit gnome2-live vala

DESCRIPTION="A documentation tool for Vala"
HOMEPAGE="http://www.valadoc.org/"
EGIT_REPO_URI="git://git.gnome.org/valadoc"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-lang/vala-0.28
	dev-libs/libgee:0.8
	>=media-gfx/graphviz-2.16
	>=dev-libs/glib-2.24:2
        >=x11-libs/gdk-pixbuf-2.32:2
"

DEPEND="${RDEPEND}
	$(vala_depend)
        sys-devel/m4
"
src_prepare() {
	gnome2-live_src_prepare
	vala_src_prepare
}

src_compile() {
	local valaver="$(vala_best_api_version)"
	emake VALAC="$(type -p valac-${valaver})"
}

# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MIN_API_VERSION="0.24"
AUTOTOOLS_AUTORECONF="1"

inherit gnome2-live vala

DESCRIPTION="Gtk+ Quick Photo Editor"
HOMEPAGE="http://github.com/canek-pelaez/gqpe/"
EGIT_REPO_URI="git://github.com/canek-pelaez/gqpe.git"

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

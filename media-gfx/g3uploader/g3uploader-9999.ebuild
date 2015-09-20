# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

inherit gnome2-live

DESCRIPTION="Gallery3 Uploader"
HOMEPAGE="http://github.com/canek-pelaez/g3uploader/"
EGIT_REPO_URI="git://github.com/canek-pelaez/g3uploader.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=x11-libs/gtk+-3.2:3[introspection,X]
	>=dev-libs/glib-2.30:2
	x11-libs/gdk-pixbuf:2[jpeg]
	>=media-libs/gexiv2-0.5:0[introspection]
	media-gfx/imagemagick
	dev-lang/python:3.4
"
DEPEND="${RDEPEND}
	sys-devel/gettext
	virtual/pkgconfig
"

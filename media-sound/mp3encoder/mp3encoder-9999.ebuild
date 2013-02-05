# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $
 
EAPI="5"
GCONF_DEBUG="no"

inherit gnome2-live

DESCRIPTION="A simple MP3 reencoder."
HOMEPAGE="http://github.com/canek-pelaez/mp3encoder/"
EGIT_REPO_URI="git://github.com/canek-pelaez/mp3encoder.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-python/pygtk-2.10
	>=dev-python/pygobject-2.20
	gnome-base/libglade
	>=dev-python/gst-python-0.10.19
	>=media-plugins/gst-plugins-lame-0.10.19
	dev-python/tagpy
	dev-python/imaging
"
DEPEND="${RDEPEND}
	sys-devel/gettext
	virtual/pkgconfig
"

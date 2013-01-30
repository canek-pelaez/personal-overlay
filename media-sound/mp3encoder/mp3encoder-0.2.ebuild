# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# 

inherit gnome2

DESCRIPTION="A simple MP3 reencoder."
HOMEPAGE="http://xochitl.matem.unam.mx/~canek/gentoo/"
SRC_URI="http://xochitl.matem.unam.mx/~canek/gentoo/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-python/pygtk-2.10
	>=dev-python/pygobject-2.20
	gnome-base/libglade
	=dev-python/gst-python-0.10*
	=media-plugins/gst-plugins-lame-0.10*
	dev-python/tagpy
	dev-python/imaging"

# Copyright 2015 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

VALA_MIN_API_VERSION="0.24"
AUTOTOOLS_AUTORECONF="1"

inherit gnome2-live vala

DESCRIPTION="Nuntius delivers notifications from your phone or tablet to your computer over Bluetooth."
HOMEPAGE="https://github.com/holylobster/nuntius-linux/"
EGIT_REPO_URI="https://github.com/holylobster/nuntius-linux.git"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-libs/glib-2.38:2
	>=dev-libs/json-glib-1.0.2
"
DEPEND="${RDEPEND}
	$(vala_depend)
        sys-devel/m4
"

src_prepare() {
	gnome2-live_src_prepare
	vala_src_prepare
}

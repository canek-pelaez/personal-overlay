# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.50}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.56}

inherit git-r3 gnome2-utils meson vala

DESCRIPTION="A Vala library for rendering Markdown"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/commonmark"
EGIT_REPO_URI="https://canek:a9a85fcff514dd58e72f38800d409024ba574ba4@aztlan.fciencias.unam.mx/gitlab/canek/commonmark.git"
EGIT_BRANCH="main"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-libs/glib-2.38:2
	>=dev-libs/libgee-0.20:0.8/2
	>=net-libs/libsoup-2.4:2.4
"
DEPEND="
	${RDEPEND}
	$(vala_depend)
"

src_prepare() {
	default
	vala_src_prepare
}

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}

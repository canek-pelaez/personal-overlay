# Copyright 2017 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.50}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.56}

inherit git-r3 meson vala

DESCRIPTION="PDF marks"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/pdfmarks"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/pdfmarks.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-libs/glib-2.50:2
	dev-libs/libgee:0.8
	>=app-text/poppler-0.46.0
"
DEPEND="${RDEPEND}
	$(vala_depend)
"

src_prepare() {
	default
	vala_setup
}

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}

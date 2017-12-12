# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

CMAKE_MIN_VERSION=3.1.0
CMAKE_IN_SOURCE_BUILD=true
inherit cmake-utils git-r3

DESCRIPTION="Solvespace is a parametric 3D CAD program"
HOMEPAGE="http://solvespace.com/index.pl"
EGIT_REPO_URI="https://github.com/solvespace/solvespace.git"
EGIT_BRANCH="2.x"
EGIT_COMMIT="7c2417ab735cf05960939647a2a016fb51f88135"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-libs/zlib
	>=dev-libs/libspnav-0.2
	>=media-libs/libpng-1.6
	>=media-libs/freetype-2.7
	>=x11-libs/cairo-1.14
	>=virtual/opengl-7
	>=media-libs/fontconfig-2
	>=dev-libs/json-c-0.12
	>=dev-cpp/gtkmm-3.16
	>=dev-cpp/pangomm-1.4
        "
RDEPEND="${DEPEND}"

src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

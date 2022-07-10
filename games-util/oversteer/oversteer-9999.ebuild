# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.40}
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.42}

inherit git-r3 meson

DESCRIPTION="Oversteer is an application to configure steering wheels on Linux."
HOMEPAGE="https://github.com/berarma/oversteer"
EGIT_REPO_URI="https://github.com/berarma/oversteer.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/scipy"
DEPEND="${RDEPEND}"
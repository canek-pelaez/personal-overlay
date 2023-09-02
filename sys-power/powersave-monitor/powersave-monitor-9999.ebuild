# Copyright 2019 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit git-r3 meson systemd

DESCRIPTION="Monitors and sets the powersave option of a network device"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/powersave-monitor"
EGIT_REPO_URI="https://aztlan.fciencias.unam.mx/gitlab/canek/powersave-monitor.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-libs/libnl:3"
DEPEND="${RDEPEND}"

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
        systemd_dounit "data/powersave-monitor.service"
        insinto "/etc/powersave-monitor"
        doins "data/powersave-monitor.conf"
}

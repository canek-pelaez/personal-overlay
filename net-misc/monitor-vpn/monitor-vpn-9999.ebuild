# Copyright 2018 Canek Peláez
# Distributed under the terms of the GNU General Public License v3
# $Header: $

EAPI="6"

inherit git-r3 systemd

DESCRIPTION="Monitor VPN"
HOMEPAGE="https://aztlan.fciencias.unam.mx/gitlab/canek/monitor-vpn"
EGIT_REPO_URI="https://canek@aztlan.fciencias.unam.mx/gitlab/canek/monitor-vpn.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPENDS="net-misc/monitor-vpn"

src_install() {
	exeinto /usr/bin
	doexe monitor-vpn
	insinto /etc/monitor-vpn
	doins monitor-vpn.conf
        systemd_newunit ${PN}.service ${PN}.service
	dodoc README.md AUTHORS
}

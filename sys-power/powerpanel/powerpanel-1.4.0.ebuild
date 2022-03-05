# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit multilib systemd

DESCRIPTION="PowerPanel is a software for monitoring and control of your UPS"
HOMEPAGE="https://www.cyberpower.com/"
SRC_URI="https://www.cyberpower.com/download/powerpanel-1.4.0.tar.gz -> powerpanel-1.4.0.tar.gz"
RESTRICT="fetch"
LICENSE="powerpanel"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/openssl:0/1.1
	=dev-libs/json-c-0.15
"
DEPEND="${RDEPEND}"

src_install() {
	exeinto /usr/sbin
	doexe bin/pwrstat
	doexe bin/pwrstatd
	insinto /etc
	doins script/pwrstatd-powerfail.sh
	doins script/pwrstatd-lowbatt.sh
	doins script/pwrstatd-email.sh
	doins script/shutdown.sh
	doins script/hibernate.sh
	doins mqttcert/pwrstatd.cacrt
	doins mqttcert/pwrstatd.ccrt
	doins mqttcert/pwrstatd.ckey
	doins conf/pwrstatd.conf
	dolib.so lib/libpaho-mqtt3cs.so.1.3.1
	dosym libpaho-mqtt3cs.so.1.3.1 ${EPREFIX}/usr/$(get_libdir)/libpaho-mqtt3cs.so.1.3
	dosym libpaho-mqtt3cs.so.1.3.1 	${EPREFIX}/usr/$(get_libdir)/libpaho-mqtt3cs.so.1
	doman doc/pwrstat.8
	doman doc/pwrstatd.8
	systemd_newunit "${FILESDIR}"/pwrstatd.service pwrstatd.service
}

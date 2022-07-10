# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python3_9 python3_10 )

inherit git-r3 distutils-r1 systemd

DESCRIPTION="ds4drv is a Sony DualShock 4 userspace driver for Linux"
HOMEPAGE="https://github.com/chrippa/ds4drv"
EGIT_REPO_URI="https://github.com/chrippa/ds4drv.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pyudev-0.16[${PYTHON_USEDEP}]
	>=dev-python/python-evdev-0.3.0[${PYTHON_USEDEP}]
	net-wireless/bluez[deprecated,extra-tools]
"
RDEPEND="${DEPEND}"

src_install() {
	distutils-r1_src_install
	systemd_dounit "${S}"/systemd/ds4drv.service
        insinto "/etc"
        doins "${S}"/ds4drv.conf
}

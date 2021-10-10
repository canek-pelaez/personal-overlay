# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_9 )

inherit git-r3 distutils-r1

DESCRIPTION="Convert a .pcap file to code that replays the captured USB commands."
HOMEPAGE="https://github.com/JohnDMcMaster/usbrply"
EGIT_REPO_URI="https://github.com/JohnDMcMaster/usbrply.git"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	dev-python/python-pcapng
	dev-python/python-libusb1"

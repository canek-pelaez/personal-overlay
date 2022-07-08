# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python3_9 python3_10 )

inherit git-r3 distutils-r1

DESCRIPTION="Pure-python wrapper for libusb-1.0."
HOMEPAGE="https://pypi.org/project/libusb1/"
EGIT_REPO_URI="http://github.com/vpelletier/python-libusb1.git"

LICENSE="LGPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

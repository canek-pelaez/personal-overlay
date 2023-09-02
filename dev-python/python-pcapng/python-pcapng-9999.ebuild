# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

PYTHON_COMPAT=( python3_9 python3_10 python3_11 )

inherit git-r3 distutils-r1

DESCRIPTION="Python library to parse the pcap-ng."
HOMEPAGE="https://pypi.org/project/python-pcapng/"
EGIT_REPO_URI="https://github.com/rshk/python-pcapng.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

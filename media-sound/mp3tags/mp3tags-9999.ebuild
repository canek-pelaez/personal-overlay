# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2
# $Header: $
 
EAPI="5"
GCONF_DEBUG="no"

inherit gnome2-live

DESCRIPTION="A simple command line ID3v2 tag utility."
HOMEPAGE="http://github.com/canek-pelaez/mp3tags/"
EGIT_REPO_URI="git://github.com/canek-pelaez/mp3tags.git"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/tagpy"
DEPEND="${RDEPEND}"

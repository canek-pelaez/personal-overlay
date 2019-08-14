# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 gnome2-utils meson

DESCRIPTION="GNOME Remote desktop server"
HOMEPAGE="https://gitlab.gnome.org/jadahl/gnome-remote-desktop/"
EGIT_REPO_URI="https://gitlab.gnome.org/jadahl/gnome-remote-desktop.git"
EGIT_COMMIT="0.1.7"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	sys-apps/systemd
	dev-libs/glib:2
	>=net-libs/pipewire-0.2.5
	app-crypt/libsecret
	x11-libs/libnotify
"
DEPEND="
	${RDEPEND}
"

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}

pkg_postinst() {
	gnome2_schemas_update
}

pkg_postrm() {
	gnome2_schemas_update
}

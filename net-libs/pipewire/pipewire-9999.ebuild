# Copyright 2013 Canek Peláez
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 gnome2-utils meson

DESCRIPTION="PipeWire is a project that aims to greatly improve handling of
 audio and video under Linux"
HOMEPAGE="https://pipewire.org/"
EGIT_REPO_URI="https://github.com/PipeWire/pipewire.git"
EGIT_COMMIT="0.2.6"

LICENSE="LGPL-2.1"
SLOT="0"
IUSE="X docs libva sbc sdl systemd"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	sys-apps/dbus
	media-libs/alsa-lib
	>=dev-libs/glib-2.32
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	X? ( x11-libs/libX11 )
	sdl? ( media-libs/libsdl2 )
	libva? ( x11-libs/libva )
	sbc? ( media-libs/sbc )
	systemd? ( sys-apps/systemd )
	docs? ( app-doc/doxygen
			app-doc/xmltoman )
"
DEPEND="
	${RDEPEND}
	sys-devel/m4
"

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}

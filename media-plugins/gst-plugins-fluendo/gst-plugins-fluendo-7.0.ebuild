EAPI="4"

DESCRIPTION="Fluendo Codec Pack"
HOMEPAGE="http://www.fluendo.com/shop/product/complete-set-of-playback-plugins/"
SRC_URI="http://www.fluendo.com/downloads/gst-plugins-fluendo-${PV}.tar.bz2"

LICENSE="Fluendo"

KEYWORDS="~amd64"
SLOT="0.10"

RDEPEND="
	media-libs/gstreamer:0.10
	media-libs/gst-plugins-good:0.10
	"

src_unpack() {
	unpack "gst-plugins-fluendo-${PV}.tar.bz2"
	chmod a+x "${WORKDIR}"/usr/lib64/gstreamer-0.10/*.so
	mkdir "${WORKDIR}"/gst-plugins-fluendo-7.0
}

src_prepare() {
	:
}

src_install() {
	dodir "${DESTTREE}/lib64/gstreamer-0.10"
	insinto /usr/lib64/gstreamer-0.10
	INSOPTIONS="-m0755"
	doins "${WORKDIR}/usr/lib64/gstreamer-0.10/"*.so
	dodoc "${WORKDIR}/usr/share/doc/gst-plugins-fluendo-${PV}/"*
}

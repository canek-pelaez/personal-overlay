EAPI="4"

DESCRIPTION="Meta package for all the GStreamer Plugins"
HOMEPAGE="http://www.gstreamer.org/"

LICENSE="GPL-2"

KEYWORDS="amd64"
SLOT="1.0"

IUSE="a52dec amr assrender cdio cdparanoia dash dts dvb dvdread dv faac
	  faad ffmpeg flac gdkpixbuf hls jack jpeg lame libmms libpng
	  libvisual mad modplug mpeg2dec mpeg2enc mplex ofa openh264 opus
	  oss pulse raw1394 resindvd rtmp schroedinger shout2 sidplay
	  smoothstreaming soundtouch soup speex taglib twolame uvch264 vaapi
	  v4l2 voaacenc voamrwbenc vpx wavpack x264 x265 ximagesrc"

RDEPEND="
	ximagesrc? ( media-plugins/gst-plugins-ximagesrc:1.0 )
	a52dec? ( media-plugins/gst-plugins-a52dec:1.0 )
	amr? ( media-plugins/gst-plugins-amr:1.0 )
	assrender? ( media-plugins/gst-plugins-assrender:1.0 )
	cdio? ( media-plugins/gst-plugins-cdio:1.0 )
	cdparanoia? ( media-plugins/gst-plugins-cdparanoia:1.0 )
	dash? ( media-plugins/gst-plugins-dash:1.0 )
	dts? ( media-plugins/gst-plugins-dts:1.0 )
	dvb? ( media-plugins/gst-plugins-dvb:1.0 )
	dvdread? ( media-plugins/gst-plugins-dvdread:1.0 )
	dv? ( media-plugins/gst-plugins-dv:1.0 )
	faac? ( media-plugins/gst-plugins-faac:1.0 )
	faad? ( media-plugins/gst-plugins-faad:1.0 )
	ffmpeg? ( media-plugins/gst-plugins-libav:1.0 )
	flac? ( media-plugins/gst-plugins-flac:1.0 )
	gdkpixbuf? ( media-plugins/gst-plugins-gdkpixbuf:1.0 )
	hls? ( media-plugins/gst-plugins-hls:1.0 )
	jack? ( media-plugins/gst-plugins-jack:1.0 )
	jpeg? ( media-plugins/gst-plugins-jpeg:1.0 )
	lame? ( media-plugins/gst-plugins-lame:1.0 )
	libmms? ( media-plugins/gst-plugins-libmms:1.0 )
	libpng? ( media-plugins/gst-plugins-libpng:1.0 )
	libvisual? ( media-plugins/gst-plugins-libvisual:1.0 )
	mad? ( media-plugins/gst-plugins-mad:1.0 )
	modplug? ( media-plugins/gst-plugins-modplug:1.0 )
	mpeg2dec? ( media-plugins/gst-plugins-mpeg2dec:1.0 )
	mpeg2enc? ( media-plugins/gst-plugins-mpeg2enc:1.0 )
	mplex? ( media-plugins/gst-plugins-mplex:1.0 )
	neon? ( media-plugins/gst-plugins-neon:1.0 )
	ofa? ( media-plugins/gst-plugins-ofa:1.0 )
	openh264? ( media-plugins/gst-plugins-openh264:1.0 )
	opus?  ( media-plugins/gst-plugins-opus:1.0 )
	oss? ( media-plugins/gst-plugins-oss:1.0 )
	pulse? ( media-plugins/gst-plugins-pulse:1.0 )
	raw1394? ( media-plugins/gst-plugins-raw1394:1.0 )
	resindvd? ( media-plugins/gst-plugins-resindvd:1.0 )
	rtmp? ( media-plugins/gst-plugins-rtmp:1.0 )
	schroedinger? ( media-plugins/gst-plugins-schroedinger:1.0 )
	shout2? ( media-plugins/gst-plugins-shout2:1.0 )
	sidplay? ( media-plugins/gst-plugins-sidplay:1.0 )
	smoothstreaming? ( media-plugins/gst-plugins-smoothstreaming:1.0 )
	soundtouch? ( media-plugins/gst-plugins-soundtouch:1.0 )
	soup? ( media-plugins/gst-plugins-soup:1.0 )
	speex? ( media-plugins/gst-plugins-speex:1.0 )
	taglib? ( media-plugins/gst-plugins-taglib:1.0 )
	twolame? ( media-plugins/gst-plugins-twolame:1.0 )
	uvch264? ( media-plugins/gst-plugins-uvch264:1.0 )
	v4l2? ( media-plugins/gst-plugins-v4l2:1.0 )
	vaapi? ( media-plugins/gst-plugins-vaapi:1.0 )
	voaacenc? ( media-plugins/gst-plugins-voaacenc:1.0 )
	voamrwbenc? ( media-plugins/gst-plugins-voamrwbenc:1.0 )
	vpx? ( media-plugins/gst-plugins-vpx:1.0 )
	wavpack? ( media-plugins/gst-plugins-wavpack:1.0 )
	x264? ( media-plugins/gst-plugins-x264:1.0 )
	x265? ( media-plugins/gst-plugins-x265:1.0 )
	ximagesrc? ( media-plugins/gst-plugins-ximagesrc:1.0 )
	"

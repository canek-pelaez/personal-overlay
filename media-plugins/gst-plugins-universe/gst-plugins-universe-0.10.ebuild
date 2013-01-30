EAPI="4"

DESCRIPTION="Meta package for all the GStreamer Plugins"
HOMEPAGE="http://www.gstreamer.org/"

LICENSE="GPL-2"

KEYWORDS="~amd64"
SLOT="0.10"

IUSE="a52dec alsa annodex assrender cdio cdparanoia dts dv dvb dvdread
      faac faad ffmpeg flac fluendo gconf gio gl gnomevfs gsm jack
      jpeg ladspa lame libmms libpng libvisual mad mimic modplug
      mpeg2dec mpeg2enc mplex musepack mythtv neon ofa ogg oss pango
      pulse raw1394 resindvd rtmp schroedinger shout2 sidplay
      soundtouch soup speex taglib theora twolame v4l2 vorbis vp8
      wavpack x x264 ximagesrc xvid xvideo"

RDEPEND="
	a52dec? ( media-plugins/gst-plugins-a52dec:0.10 )
	alsa? ( media-plugins/gst-plugins-alsa:0.10 )
	annodex? ( media-plugins/gst-plugins-annodex:0.10 )
	assrender? ( media-plugins/gst-plugins-assrender:0.10 )
	cdio? ( media-plugins/gst-plugins-cdio:0.10 )
	cdparanoia? ( media-plugins/gst-plugins-cdparanoia:0.10 )
	dts? ( media-plugins/gst-plugins-dts:0.10 )
	dv? ( media-plugins/gst-plugins-dv:0.10 )
	dvb? ( media-plugins/gst-plugins-dvb:0.10 )
	dvdread? ( media-plugins/gst-plugins-dvdread:0.10 )
	faac? ( media-plugins/gst-plugins-faac:0.10 )
	faad? ( media-plugins/gst-plugins-faad:0.10 )
	ffmpeg? ( media-plugins/gst-plugins-ffmpeg:0.10 )
	flac? ( media-plugins/gst-plugins-flac:0.10 )
	fluendo? ( media-plugins/gst-plugins-fluendo:0.10 )
	gconf? ( media-plugins/gst-plugins-gconf:0.10 )
	gio? ( media-plugins/gst-plugins-gio:0.10 )
	gl? ( media-plugins/gst-plugins-gl:0.10 )
	gnomevfs? ( media-plugins/gst-plugins-gnomevfs:0.10 )
	gsm? ( media-plugins/gst-plugins-gsm:0.10 )
	jack? ( media-plugins/gst-plugins-jack:0.10 )
	jpeg? ( media-plugins/gst-plugins-jpeg:0.10 )
	ladspa? ( media-plugins/gst-plugins-ladspa:0.10 )
	lame? ( media-plugins/gst-plugins-lame:0.10 )
	libmms? ( media-plugins/gst-plugins-libmms:0.10 )
	libpng? ( media-plugins/gst-plugins-libpng:0.10 )
	libvisual? ( media-plugins/gst-plugins-libvisual:0.10 )
	mad? ( media-plugins/gst-plugins-mad:0.10 )
	mimic? ( media-plugins/gst-plugins-mimic:0.10 )
	modplug? ( media-plugins/gst-plugins-modplug:0.10 )
	mpeg2dec? ( media-plugins/gst-plugins-mpeg2dec:0.10 )
	mpeg2enc? ( media-plugins/gst-plugins-mpeg2enc:0.10 )
	mplex? ( media-plugins/gst-plugins-mplex:0.10 )
	musepack? ( media-plugins/gst-plugins-musepack:0.10 )
	mythtv? ( media-plugins/gst-plugins-mythtv:0.10 )
	neon? ( media-plugins/gst-plugins-neon:0.10 )
	ofa? ( media-plugins/gst-plugins-ofa:0.10 )
	ogg? ( media-plugins/gst-plugins-ogg:0.10 )
	oss? ( media-plugins/gst-plugins-oss:0.10 )
	pango? ( media-plugins/gst-plugins-pango:0.10 )
	pulse? ( media-plugins/gst-plugins-pulse:0.10 )
	raw1394? ( media-plugins/gst-plugins-raw1394:0.10 )
	resindvd? ( media-plugins/gst-plugins-resindvd:0.10 )
	rtmp? ( media-plugins/gst-plugins-rtmp:0.10 )
	schroedinger? ( media-plugins/gst-plugins-schroedinger:0.10 )
	shout2? ( media-plugins/gst-plugins-shout2:0.10 )
	sidplay? ( media-plugins/gst-plugins-sidplay:0.10 )
	soundtouch? ( media-plugins/gst-plugins-soundtouch:0.10 )
	soup? ( media-plugins/gst-plugins-soup:0.10 )
	speex? ( media-plugins/gst-plugins-speex:0.10 )
	taglib? ( media-plugins/gst-plugins-taglib:0.10 )
	theora? ( media-plugins/gst-plugins-theora:0.10 )
	twolame? ( media-plugins/gst-plugins-twolame:0.10 )
	v4l2? ( media-plugins/gst-plugins-v4l2:0.10 )
	vorbis? ( media-plugins/gst-plugins-vorbis:0.10 )
	vp8? ( media-plugins/gst-plugins-vp8:0.10 )
	wavpack? ( media-plugins/gst-plugins-wavpack:0.10 )
	x? ( media-plugins/gst-plugins-x:0.10 )
	x264? ( media-plugins/gst-plugins-x264:0.10 )
	ximagesrc? ( media-plugins/gst-plugins-ximagesrc:0.10 )
	xvid? ( media-plugins/gst-plugins-xvid:0.10 )
	xvideo? ( media-plugins/gst-plugins-xvideo:0.10 )
	"

SUMMARY = "Python tools for working with XBee radios"
SECTION = "devel/python"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=dfa36a2f68de54355629a10909f0e7a4"

SRCNAME = "XBee"

SRC_URI = "https://pypi.python.org/packages/source/X/XBee/XBee-${PV}.tar.gz"
SRC_URI[md5sum] = "f9a103c8b2f4d8384c9d0ee25f7b2efc"
SRC_URI[sha256sum] = "00fd0a817012c4ed72d1aeaf755afeeea3ad93836c82e4ed7e1e37b09edb805c"

S = "${WORKDIR}/${SRCNAME}-${PV}"

inherit setuptools

RDEPENDS_${PN} = "\
    python-pyserial \
"

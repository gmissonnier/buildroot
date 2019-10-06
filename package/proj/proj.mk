################################################################################
#
# proj
#
################################################################################

PROJ_VERSION = 6.2.0
PROJ_SITE = http://download.osgeo.org/proj
PROJ_LICENSE = MIT
PROJ_LICENSE_FILES = COPYING
PROJ_INSTALL_STAGING = YES
PROJ_DEPENDENCIES = sqlite

PROJ_CFLAGS = $(TARGET_CFLAGS)

ifeq ($(BR2_TOOLCHAIN_HAS_GCC_BUG_68485),y)
PROJ_CFLAGS += -O0
endif

PROJ_CONF_ENV = CFLAGS="$(PROJ_CFLAGS)"

$(eval $(autotools-package))

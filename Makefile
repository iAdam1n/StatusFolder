include $(THEOS)/makefiles/common.mk
ARCHS = armv7 arm64

TWEAK_NAME = StatusFolder
StatusSwitcher_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

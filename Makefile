TARGET = iphone:clang:13.1
ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Acid

Acid_FILES = Tweak.xm
Acid_FRAMEWORKS = UIKit
Acid_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

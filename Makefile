TARGET := iphone:clang:15.2:15.2


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ScorpionFix

ScorpionFix_FILES = Tweak.x
ScorpionFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

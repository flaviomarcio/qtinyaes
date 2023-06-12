QTREFORCE_QTINIAES=true
DEFINES+=QTREFORCE_QTINIAES

HEADERS += \
        $$PWD/qtinyaes.h \
        $$PWD/tiny-AES-c/aes.h \
        $$PWD/tiny-AES-c/aes.hpp

SOURCES += \
        $$PWD/qtinyaes.cpp \
        $$PWD/tiny-AES-c/aes.c

INCLUDEPATH += $$PWD/
INCLUDEPATH += $$PWD/tiny-AES-c

QDEP_DEPENDS += $$PWD/tiny-AES-c

!qdep_build {
	isEmpty(TINYAES_KEYSIZE): TINYAES_KEYSIZE = 256
	DEFINES += AES$${TINYAES_KEYSIZE}=1
}

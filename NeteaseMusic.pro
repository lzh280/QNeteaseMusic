QT       += core gui multimedia network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
INCLUDEPATH +=.\dll
CONFIG += c++17
RC_FILE = icon.rc

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h \
    neteaselogin.h \
    neteaseplaylist.h \
    qmusictab.h \
    qplaying.h

FORMS += \
    form.ui \
    mainwindow.ui \
    neteaselogin.ui \
    neteaseplaylist.ui \
    qplaying.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    pic.qrc

DISTFILES += \
    dll/libeay32.dll \
    dll/ssleay32.dll \
    icon.rc

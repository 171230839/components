TEMPLATE = lib

QT += qml quick

CONFIG += qt plugin

TARGET = $$qtLibraryTarget($$TARGET)
uri = com.iktwo.components

SOURCES += \
    plugin.cpp \
    styler.cpp

HEADERS += \
    plugin.h \
    styler.h

OTHER_FILES = \
    qml/qmldir \
    qml/Label.qml \
    qml/Menu.qml \
    qml/Button.qml \
    qml/ImageButton.qml \
    qml/MenuTextItem.qml \
    qml/Dialog.qml \
    qml/TitleBar.qml \
    qml/Divider.qml \
    qml/style.js

#qmldir.files = qml/qmldir
qmldir.files += $$files(qml/*)

installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
qmldir.path = $$installPath
target.path = $$installPath

INSTALLS += target qmldir

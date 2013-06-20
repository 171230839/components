import QtQuick 2.0
import "style.js" as Style
import com.iktwo.components 1.0 as Components

Item {
    id: root

    property alias text: textEdit.text

    width: highlighter.width
    height: textEdit.height + highlighter.height

    TextInput {
        id: textEdit

        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
        }

        width: 320

        font.pointSize: 24

        clip: true
        selectByMouse: true

        color: Components.Styler.darkTheme ? Style.TEXT_COLOR_DARK : Style.TEXT_COLOR_LIGHT
    }

    TitleBarImageButton {
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
        }

        source: Components.Styler.darkTheme ? "qrc:/images/clear_dark" : "qrc:/images/clear_light"
    }

    Rectangle {
        id: highlighter

        anchors {
            top: textEdit.bottom
            left: textEdit.left
            right: textEdit.right; rightMargin: -80
        }

        height: 1

        color: Components.Styler.darkTheme ? Qt.lighter(Style.TEXT_COLOR_DARK) : Qt.darker(Style.TEXT_COLOR_LIGHT)
    }
}

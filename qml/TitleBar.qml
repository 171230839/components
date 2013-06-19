import QtQuick 2.0
import com.iktwo.components 1.0 as Components
import "style.js" as Style

Item {
    id: root

    property alias title: titleLabel.text
    property alias color: container.color

    width: parent.width
    height: 80

    Rectangle {
        id: container

        anchors.fill: parent
        color: Components.Styler.darkTheme ? Style.MENU_TITLE_BACKGROUND_COLOR_DARK : Style.MENU_TITLE_BACKGROUND_COLOR_LIGHT

        Label {
            id: titleLabel

            anchors {
                left: parent.left; leftMargin: 15
                verticalCenter: parent.verticalCenter
            }

            font.pixelSize: 35
        }
    }
}

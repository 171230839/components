import QtQuick 2.0
import "style.js" as Style
import com.iktwo.components 1.0 as Components

Rectangle {
    property bool horizontal: true

    width: horizontal ? parent.width : 2
    height: horizontal ? 2 : parent.height

    color: Components.Styler.darkTheme ? Style.DIVIDER_DARK : Style.DIVIDER_LIGHT
}

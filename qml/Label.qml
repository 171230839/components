import QtQuick 2.0
import "style.js" as Style
import com.iktwo.components 1.0 as Components

Text {
    color: Components.Styler.darkTheme ? Style.TEXT_COLOR_DARK : Style.TEXT_COLOR_LIGHT
}

import QtQuick 2.0
import Ubuntu.Components 0.1

Rectangle {
    id: menu
    width: units.gu(16)
    height: main.height
    Column{
        anchors.fill: parent
        anchors.margins: units.gu(1)
        spacing: units.gu(2)
        Button{
            width: menu.width - units.gu(2)
            objectName: "btn1"
            text: "Desktop"
            onClicked: main.orientation = main.layout.desktop
        }
        Button{
            width: menu.width - units.gu(2)
            objectName: "btn2"
            text: "Vertical"
            onClicked: main.orientation = main.layout.vertical
        }
        Button{
            width: menu.width - units.gu(2)
            objectName: "btn3"
            text: "Horizontal"
            onClicked: main.orientation = main.layout.horizontal
        }
    }
}

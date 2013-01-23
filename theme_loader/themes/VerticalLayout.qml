import QtQuick 2.0
import Ubuntu.Components 0.1
import "../components" as Components

Rectangle {
    id: vertical
    anchors.fill: parent
    color: "#bf8282"

    Column {
        id: col
        anchors.fill: parent
        spacing: units.gu(2)

        Components.MenuBar {
            id: menu
            height: units.gu(6)
            width: vertical.width
            z: 2
        }
        Components.MailList {
            id: list
            height: vertical.height - menu.height - col.spacing
            width: vertical.width
        }
    }
}

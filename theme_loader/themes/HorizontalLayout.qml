import QtQuick 2.0
import Ubuntu.Components 0.1
import "../components" as Components

Rectangle {
    id: horizontal
    anchors.fill: parent
    color: "#9aa6d0"

    Row {
        id: row
        anchors.fill: parent
        spacing: units.gu(2)

        Components.MailList {
            id: list
            height: horizontal.height
            width: horizontal.width - menu.width - row.spacing
        }
        Components.MenuBar {
            id: menu
            height: horizontal.height
            width: units.gu(15)
        }
    }
}

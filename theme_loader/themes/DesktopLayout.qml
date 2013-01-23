import QtQuick 2.0
import Ubuntu.Components 0.1
import "../components" as Components

Rectangle {
    id: desktop
    anchors.fill: parent
    color: "#8eae7e"

    Row {
        id: row
        anchors.fill: parent
        spacing: units.gu(2)

        Components.MenuBar {
            id: menu
            height: desktop.height
            width: units.gu(15)
        }

        Components.MailList {
            id: list
            height: desktop.height
            width: desktop.width / 2
        }

        Components.PreviewMail {
            id: preview
            height:desktop.height
            width: desktop.width - list.width - menu.width - (row.spacing * 2)
        }
    }
}

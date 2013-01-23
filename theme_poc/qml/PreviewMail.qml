import QtQuick 2.0
import Ubuntu.Components 0.1

Rectangle {
    width: (main.width / 2) - main.menuBar.width
    height: main.height
    property alias text: area.text
    TextArea {
        id: area
        anchors.fill: parent
        anchors.margins: units.gu(1)
    }
}

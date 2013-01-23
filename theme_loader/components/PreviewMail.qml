import QtQuick 2.0
import Ubuntu.Components 0.1

Rectangle {
    property alias text: area.text
    TextArea {
        id: area
        anchors.fill: parent
        anchors.margins: units.gu(1)
    }
}

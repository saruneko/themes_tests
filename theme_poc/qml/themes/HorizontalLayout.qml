import QtQuick 2.0
import Ubuntu.Components 0.1

Item {
    anchors.fill: parent

    property alias container: row

    Row {
        id: row
        anchors.fill: parent
        spacing: units.gu(1)
    }
}

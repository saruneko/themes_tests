import QtQuick 2.0
import Ubuntu.Components 0.1

Rectangle {
    id: mail
    width: parent.width
    height: units.gu(16)
    border.width: units.dp(1)
    border.color: "black"
    color: "#f9f9f9"

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            main.show_email();
        }
    }

    Rectangle {
        id: messageArea
        anchors.fill: parent
        anchors.margins: units.dp(5)
        width: parent.width
        Column {
            id: mail_content
            spacing: units.gu(1)
            anchors.fill: parent
            Label{
                id: subject_id
                text: subject
                color: "#222222"
                fontSize: "large"
                font.bold: true
            }
            Label {
                id: message_id
                text: "This is the beginning of the e-mail..."
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                width: messageArea.width - units.gu(2)
                fontSize: "medium"
                color: "#323232"
            }
            Label {
                id: from_id
                text: from
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                width: messageArea.width - units.gu(2)
                fontSize: "small"
                color: "gray"
            }
        }

    }

}

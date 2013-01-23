import QtQuick 2.0
import Ubuntu.Components.ListItems 0.1 as ListItem

Rectangle {

    Component {
        id: mailDelegate
        Mail{}
    }

    ListView {
        id: view
        anchors.fill: parent

        model: ListModel { id: mailLineModel }
        delegate: mailDelegate
        focus: true

        // Only show the scrollbars when the view is moving.
        states: State {
            name: "ShowBars"
            when: view.movingVertically
            PropertyChanges { target: verticalScrollBar; opacity: 1 }
        }

        transitions: Transition {
            NumberAnimation { properties: "opacity"; duration: 400 }
        }
    }

    // Attach scrollbars to the right and bottom edges of the view.
    CustomScrollBar {
        id: verticalScrollBar
        width: 12; height: view.height-12
        anchors.right: view.right
        opacity: 0
        position: view.visibleArea.yPosition
        pageSize: view.visibleArea.heightRatio
    }

    function add_mail(subject, from){
        mailLineModel.insert(0, {subject: subject, from: from});
    }

    Component.onCompleted: {
        add_mail("Important", "Diego Sarmentero");
        add_mail("About QML", "Manuel");
        add_mail("Happy Birthday", "Someone else");
        add_mail("Important", "Diego Sarmentero");
        add_mail("About QML", "Manuel");
        add_mail("Happy Birthday", "Someone else");
        add_mail("Important", "Diego Sarmentero");
        add_mail("About QML", "Manuel");
        add_mail("Happy Birthday", "Someone else");
        add_mail("Important", "Diego Sarmentero");
        add_mail("About QML", "Manuel");
        add_mail("Happy Birthday", "Someone else");
        add_mail("Important", "Diego Sarmentero");
        add_mail("About QML", "Manuel");
        add_mail("Happy Birthday", "Someone else");
    }
}

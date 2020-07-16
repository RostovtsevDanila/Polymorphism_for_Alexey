import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    visible: true
    width: 660
    height: 480
    title: qsTr("Polymorphysm")

    Column {
        id: mainFraim
        spacing: 10
        leftPadding: 20

        Text {
            font.pointSize: 40
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Choose the pet:")
        }

        Row {
            spacing: 10
            Repeater {
                model: ["Cat", "Dog", "Boar"]

                Rectangle {
                    height: 100
                    width: 200
                    border.color: buttonArea.pressed ? "black" : "lightgray"
                    radius: 3

                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: 20
                        text: qsTr(modelData)
                    }

                    MouseArea {
                        id: buttonArea
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}

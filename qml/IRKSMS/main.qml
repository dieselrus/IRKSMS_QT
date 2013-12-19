import QtQuick 2.0

Rectangle {
    width: 320
    height: 460

    Column {
        id: column1
        anchors.topMargin: 2
        anchors.bottomMargin: 2
        anchors.leftMargin: 2
        anchors.rightMargin: 2
        anchors.fill: parent
        spacing: 2


        Text {
            id: text2
            height: 15
            text: qsTr("Абонент:")
            anchors.top: parent.top
            anchors.topMargin: 13
            anchors.left: parent.left
            anchors.leftMargin: 13
            font.pixelSize: 12
        }



        Row {
            id: row2
            height: 48
            anchors.right: parent.right
            anchors.rightMargin: 13
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.top: text2.bottom
            anchors.topMargin: 5
            spacing: 2

            Rectangle {
                id: recPhoneNumber
                color: "#ffffff"
                radius: 9
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.right: btnStar.left
                anchors.rightMargin: 10
                border.width: 3
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.top: parent.top

                TextInput {
                    id: textPhoneNumber
                    text: qsTr("Text Input")
                    horizontalAlignment: TextInput.AlignLeft
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                    anchors.fill: parent
                    font.pixelSize: 12
                }
            }

            Image {
                id: btnStar
                width: 48
                height: 48
                anchors.right: btnContact.left
                anchors.rightMargin: 10
                source: "../../res/img/star_blue.png"
            }



            Image {
                id: btnContact
                width: 48
                height: 48
                anchors.right: parent.right
                anchors.rightMargin: 13
                source: "../../res/img/contact_blue.png"
            }




        }

        Text {
            x: 8
            text: "Текст сообщения:"
            anchors.top: row2.bottom
            anchors.topMargin: 5
            font.pixelSize: 12
        }

        Row {
            id: row1
            y: 117
            height: 400
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.right: parent.right
            anchors.rightMargin: 13
        }





    }
}

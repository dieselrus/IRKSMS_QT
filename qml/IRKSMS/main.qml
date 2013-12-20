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
                border.color: "#474747"
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
                    text: qsTr("")
                    horizontalAlignment: TextInput.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                    anchors.fill: parent
                    font.pixelSize: 16
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
                anchors.rightMargin: 0
                source: "../../res/img/contact_blue.png"
            }




        }

        Text {
            id: text3
            text: "Текст сообщения:"
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.top: row2.bottom
            anchors.topMargin: 5
            font.pixelSize: 12
        }

        Row {
            id: row1
            height: 96
            anchors.top: text3.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.right: parent.right
            anchors.rightMargin: 13
            //anchors.centerIn: parent.c

            Rectangle {
                id: rectMessage
                height: 96
                color: "#ffffff"
                radius: 9
                border.color: "#474747"
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: btnClear.left
                anchors.rightMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                border.width: 3

                TextInput {
                    id: txtMessange
                    text: qsTr("")
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                    horizontalAlignment: TextInput.AlignLeft
                    anchors.fill: parent
                    font.pixelSize: 16
                }
            }

            Image {
                id: btnClear
                width: 48
                height: 48
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                source: "../../res/img/clean_blue.png"
            }
        }

        Text {
            id: text1
            x: 13
            text: "Введите номер с картинки"
            verticalAlignment: Text.AlignVCenter
            anchors.top: row1.bottom
            anchors.topMargin: 5
            font.pixelSize: 12
        }

        Row {
            id: row3
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 13
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.right: parent.right
            anchors.rightMargin: 13
            anchors.top: text1.bottom
            anchors.topMargin: 5

            Image {
                id: imgCaptcha
                width: 112
                height: 48
                anchors.left: parent.left
                anchors.leftMargin: 0
                source: "../../res/img/load_blue.png"
            }

            Rectangle {
                id: rectangle1
                height: 48
                color: "#ffffff"
                radius: 9
                border.color: "#474747"
                border.width: 3
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: btnSend.left
                anchors.rightMargin: 10
                anchors.left: imgCaptcha.right
                anchors.leftMargin: 10

                TextInput {
                    id: txtCaptcha
                    text: qsTr("")
                    anchors.fill: parent
                    horizontalAlignment: TextInput.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 16
            }
            }

            Image {
                id: btnSend
                width: 48
                height: 48
                anchors.right: parent.right
                anchors.rightMargin: 0
                source: "../../res/img/send_blue.png"
            }
        }

        Text {
            id: txtError
            text: qsTr("")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 13
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.top: row3.bottom
            anchors.topMargin: 5
            font.pixelSize: 12
        }

    }
}

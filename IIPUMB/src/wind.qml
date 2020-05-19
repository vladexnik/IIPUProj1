import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    id: window2
    visible: true


    MouseArea {
        id: mouseArea2
        x: 6
        y: 8
        width: 1024
        height: 768

        anchors.horizontalCenterOffset: 308
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 118
        anchors.verticalCenter: parent.verticalCenter
    }
    RadioButton {
        id: radioButtonRed2
        x: 52
        y: 123
        text: qsTr("Rot")
    }

}


import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id: window1
    visible: true
    width:1024
    height:628
    minimumHeight: 600
    minimumWidth: 820

    color: "lightgrey"

        MouseArea {
        id: mouseArea1
        x: 213
        y: 8
        width: 1024
        height: 768
        anchors.horizontalCenterOffset: 171
        //anchors.horizontalCenter: parent.horizontalCenter.visible = true
        anchors.verticalCenterOffset: 193
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: text222
            x: 30
            y: -70
            text: qsTr("\nИнтерфейсы и периферийные устройства")
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter

            font.family: "Noto Sans CJK JP Black"
            font.pointSize: 21
        }

        Text {
            id: text1111
            x: 50
            y: 300
            width: 659
            height: 117
            text: qsTr("Создатели проекта:
                        \nстуденты группы Э-56
                        \nфакультет электронно-информационных систем
                        \nНикитюк В.А.
                        \nКириенко Д.А.")
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 15
        }

        RadioButton {
            id: radioButtonRed
            x: 42
            y: 123
            text: qsTr("Розовый")
        }

        RadioButton {
            id: radioButtonBlue
            x: 42
            y: 89
            text: qsTr("Светлый")

            //onCheckedChanged: (true) ? color="blue":color="white"
        }

        RadioButton {
            id: radioButtonGreen
            x: 42
            y: 55
            text: qsTr("Синий")

            //onCheckedChanged: (true) ? color="green":color="white"
        }

        Button {
            id: button1
            x: 42
            y: 176
            text: qsTr("Применить")

            onClicked: {
                if(radioButtonRed.checked && radioButtonBlue.checked ||
                        radioButtonBlue.checked && radioButtonGreen.checked ||
                        radioButtonRed.checked && radioButtonGreen.checked ||
                        radioButtonRed.checked && radioButtonBlue.checked && radioButtonGreen.checked){
//                        textArea1.visible = true
                        color = "lightgrey"
                        window2.visible = true
//                    var windows = Qt.createComponent("newWindow.qml")
//                    var loadwin = windows.createObject(window2, {someParameter : "Hello"})
//                    loadwin.show()

                } else {
                    if(radioButtonRed.checked){
                        color = "lightpink"
                        // textArea1.visible = false
                    }
                    if(radioButtonBlue.checked){
                        color = "lightyellow"
                        //textArea1.visible = false
                    }
                    if(radioButtonGreen.checked){
                        color = "lightblue"
                        //textArea1.visible = false
                    }
                    if(!radioButtonBlue.checked && !radioButtonGreen.checked
                            && !radioButtonRed.checked) {
                        color = "white"
                    }
                }
            }
        }

        Button {
            id: btnScreenSize
            x: 151
            y: 176
            width: 124
            height: 25
            text: qsTr("Размер окна")

            onClicked: {
                sizeArea.visible = true
                btnScreenSize2.visible = true
                btnScreenSize.visible = false
            }
        }
        Button {
            id: btnScreenSize2
            x: 151
            y: 176
            text: qsTr("Скрыть размер окна")
            visible: false
            onClicked: {
                sizeArea.visible = false
                btnScreenSize.visible = true
                btnScreenSize2.visible = false
            }
        }


        TextArea {
            id: sizeArea
            x: 140
            y: 40
            width:138
            height:100

            textColor: "black"
            //Text {font.family: "Helvetica"; font.pointSize: 25; font.bold: true}

            font.family: "Noto Sans CJK JP Black"
            font.pointSize: 13
            font.bold: true
            visible: false
            text: qsTr("высота: " + window1.height + "\n" + "ширина: " + window1.width)
        }

        Button {
            id: exit
            x: 42
            y: 216

            text: qsTr("Выход")
            onClicked: {
                window1.close()
            }
        }

        Button {
            id: exit1
            x: 279
            y: 46
            text: qsTr("Dmesg")
            onClicked:
            {
                onClicked: _labDmesg.buttonClicked(3)
                windowDmesg.visible = true
            }
        }

        Text {
            id: text1
            x: 52
            y: 20
            color: "#000000"
            text: qsTr("Цвет окна")
            font.pixelSize: 17
        }

        Text {
            id: text2
            x: 279
            y: 20
            text: qsTr("Информация:")
            font.pixelSize: 17
        }

        Button {
            id: exit2
            x: 279
            y: 77
            text: qsTr("Устройства")
            onClicked:
            {
                onClicked: _labDmesg.buttonClicked(2)
                windowDmesg.visible = true
            }
        }

        Button {
            id: exit3
            x: 279
            y: 108
            text: qsTr("Процессор")
            onClicked:
            {
                onClicked: _labDmesg.buttonClicked(1)
                windowDmesg.visible = true
            }
        }

        Button {
            id: exit4
            x: 279
            y: 139
            text: qsTr("Память")
            onClicked:
            {
                onClicked: _labDmesg.buttonClicked(0)
                windowDmesg.visible = true
            }
        }

        Button {
            id: button
            x: 420
            y: 46
            text: qsTr("Асинхр послед интерфейс RS-232")
            onClicked:
            {
               async.visible = true
            }
        }

        Button {
            id: button2
            x: 420
            y: 77
            width: 220
            height: 25
            text: qsTr("Подключение проектора")
            onClicked:
            {
                windowProjektors.visible = true
            }
        }

        Button {
            id: button3
            x: 420
            y: 110
            width: 220
            height: 25
            text: qsTr("Git")
            onClicked:
            {
                windowGit.visible = true
            }
        }

        Text {
            id: text3
            x: 420
            y: 20
            text: qsTr("Практические лабораторные:")
            font.pixelSize: 17
        }

        Keys.onPressed:
        {
            element.text = event.key

            if(element.text == "16777235")    //СТРЕЛКА ВВЕРХ
            {
                textEdit.visible = true
                textEdit.text = "Нажмите клавишу любого индикатора клавиатуры"
            }else
                if(element.text == "16777253") //   Num Lock
                {
                    onClicked: _labKeyboard.buttonClicked()
                }else
                    if(element.text == "16777252")  // Caps Lock
                    {
                        onClicked: _labKeyboard.buttonClicked()
                    }else
                        if(element.text == "16777249")    //      Левый Ctrl
                        {
                            onClicked: _labKeyboard.buttonClicked1()
                        }else
                            if(element.text == "49")    //     1
                            {
                                onClicked: _labKeyboard.buttonClicked2()

                            }

        }

        TextEdit {
            id: textEdit
            x: 390
            y: 197
            width: 190
            height: 60
            text: qsTr("Клавиатура")
            font.pixelSize: 15

            objectName: "text6"
            clip: true
            wrapMode: TextEdit.Wrap
            readOnly:true


        }

        Text {
            id: element
            visible: false
            x: 390
            y: 170
            width: 70
            height: 21
            text: qsTr("Text")
            font.pixelSize: 12
        }

    }

    Window {
        id: window2
        width:500
        height:70
        visible: false

        TextArea {
            id: textArea1
            width:500
            height:80
            textColor: "black"
            //Text {font.family: "Helvetica"; font.pointSize: 25; font.bold: true}

            font.family: "Noto Sans CJK JP Black"
            font.pointSize:20
            font.bold: true

            //font : 10
            visible: true
            text: qsTr("Нужно выбрать один цвет:)")
        }

    }

    Window {
        id: windowDmesg
        width:800
        height:500
        visible: false
        ScrollView{
            width:800
            height:500
            TextEdit {
                id: text4
                objectName: "text4"
                width:800
                font.pixelSize: 14
                clip: true
                wrapMode: TextEdit.Wrap
                readOnly:true
            }
        }
    }

    Window {
        id:async
        width:600
        height:320
        visible: false

        TextArea {
            id: textArea2
            width:600
            height:320
            //Text {font.family: "Helvetica"; font.pointSize: 25; font.bold: true}

            font.family: "Noto Sans CJK JP Black"
            font.pointSize: 15
            //font.bold: true

            //font : 10
            visible: true
            text: qsTr("   Алгоритм записи в SOM-порт:

 1. В БA + 3 введите 1000 0000, чтобы использовать БA + 0 в качестве делителя частоты.
 2. Введите делитель частоты в БA + 0 (максимальная частота 115200 / требуемая частота)
 3. В БA + 3 поставить 0 в 7-й бит, чтобы использовать БA + 0 в качестве буфера данных, а в 5, 4, 3 - контрольные биты.
 - xh0-бит четности /
 - 001-управляющий бит сформирован четной четностью;
 - 011-бит управления сформирован нечетной четностью;
 - 101-битное управление равно 1;
 - 111-битный контроль равен 0.
 4. Из БA + 5 читаем 5-й бит. Если 1, то
 5. В БA + 0 вводим ASCII-код N-го символа данных, возвращаемся к P4, N ++

Алгоритм чтения из порта SOM

 1. В БA + 3 введите 1000 0000, чтобы использовать БA + 0 в качестве делителя частоты.
 2. Введите делитель частоты в БA + 0 (максимальная частота 115200 / требуемая частота)
 3. В БA + 3 поставить 0 в 7-й бит, чтобы использовать БA + 0 в качестве буфера данных, а в 5, 4, 3 - контрольные биты.
 - xh0-бит четности /
 - 001 - управляющий бит сформирован четной четностью;
 - 011-бит управления сформирован нечетной четностью;
 - 101-битное управление равно 1;
 - 111-битный контроль равен 0.
 4. Из БA + 5 читаем 1-й бит. Если 1, то
 5. Из БA + 0 мы читаем ASCII-код N-го символа данных, возвращаемся к P4, N ++")
        }

    }

    Window {
        id: windowProjektors
        width:600
        height:320
        visible: false

        TextArea {
            id: textArea3
            width:600
            height:320
            //Text {font.family: "Helvetica"; font.pointSize: 25; font.bold: true}

            font.family: "Noto Sans CJK JP Black"
            font.pointSize: 15
           // font.bold: true

            //font : 10
            visible: true
            text: qsTr("Подключение проектора

 Существует два способа подключения проектора к источнику сигнала: с помощью кабеля или без него.
 Это означает - через проводное и беспроводное соединение.
 Обычно проектор подключается к источнику изображения с помощью кабеля VGA - VGA.
 Если на одном из устройств нет разъема VGA, но имеется DVI, необходимо также приобрести переходник VGA на DVI.
 Однако следует отметить, что это немного ухудшит качество передаваемого сигнала.
 Вы можете подключить проектор к ПК с помощью кабеля HDMI, если оба устройства имеют такой выход.
 Это соединение позволяет передавать изображение на большой экран с высочайшим качеством.
 Для этого необходимо подключить устройства с выбранным проводом, затем поочередно включить их, сначала с видеопроектора.
 Как только источник сигнала включен, передаваемый контент отображается на двух экранах.
 Подключение по телефону.
 Современные модели проекционных устройств начинают использовать сеть Wi-Fi в качестве беспроводного соединения.
 Технология передачи данных основана на протоколе DLNA, который позволяет передавать фильмы, изображения и другие медиафайлы.
 В этом случае проектор выступает в качестве специальной точки доступа, с помощью которой гаджетам предоставляется возможность передавать и проецировать нужные изображения.
 Чтобы подключиться к устройству с телефона, вам необходимо скачать специальное приложение для проектора.
 Это позволяет просто подключить проектор к смартфону через Wi-Fi, поэтому необходимо подключить антенну проектора Wi-Fi к USB-порту проектора.")
        }

    }

    Window {
        id: windowGit
        width:600
        height:320
        visible: false

        TextArea {
            id: textArea4
            width:600
            height:320

            font.family: "Noto Sans CJK JP Black"
            font.pointSize: 15

            visible: true
            text: qsTr(" https://github.com/vladexnik/IIPUProj1.git");

        }
    }
}

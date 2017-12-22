import QtQuick 2.7
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 330
    height: 330
    title: qsTr("Transitions")

    /*
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    } */

    MainForm {
        anchors.fill: parent
        id: page
        mouseArea1 {
            onClicked: stateGroup.state = 'State0'
        }
        mouseArea2 {
            onClicked: stateGroup.state = 'State1'
        }
        mouseArea3 {
            onClicked: stateGroup.state = 'State2'
        }

        // button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        // button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
    }

    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "State0"
                PropertyChanges {
                    target: page.icon
                    x: page.topLeftRect.x
                    y: page.topLeftRect.y
                }
            },

            State {
                name: "State1"
                PropertyChanges {
                    target: page.icon
                    x: page.middleRightRect.x
                    y: page.middleRightRect.y
                }
            },

            State {
                name: "State2"
                PropertyChanges {
                    target: page.icon
                    x: page.leftRect.x
                    y: page.leftRect.y
                }
            }
        ]
    }

    /*
    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    } */
}

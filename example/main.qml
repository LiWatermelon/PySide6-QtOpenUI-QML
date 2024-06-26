import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

import QtOpenUI 1.0

ApplicationWindow {
    id: page
    width: 1000
    height: 640
    visible: true
    visibility: Window.Maximized
    title: "QtOpen"

    header: ToolBar {
        height: 30
        background: Rectangle {
            anchors.fill: parent
            color: QtOpenTheme.background
        }
        Row{
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            spacing: 10
            QtOpenPureIconButton{
                oIconSource: QtOpenIcon.icon("skin")
            }
            QtOpenPureIconButton{
                oIconSource: QtOpenIcon.icon("language")
            }
            QtOpenPureIconButton{
                oIconSource: QtOpenIcon.icon("setting")
            }
            QtOpenPureIconButton{
                oIconSource: QtOpenIcon.icon("question-circle")
            }
        }
    }

    footer: TabBar {
        // ...
    }

    Row{
        anchors.fill: parent

        Rectangle{
            width: 200
            height: parent.height
            color: "red"
            QtOpenTreeView{
                anchors.fill: parent
                oModel: QtOpenTreeModel
            }
        }
        Rectangle{
            width: parent.width-100
            height: parent.height
            color: "green"
        }
    }



//    StackView {
//        anchors.fill: parent
//    }

}
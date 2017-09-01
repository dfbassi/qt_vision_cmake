import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import io.qt.forum 1.0
import QtQuick.Dialogs 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 1600
    height: 800
    title: qsTr("Vision Platform GUI")

    header: ControlToolBar {
        id: _controlToolBar
        // this is important for all recording toggling
        recording_indices: [cameraTile_0, cameraTile_1, cameraTile_2, cameraTile_3, cameraTile_4,
            cameraTile_5, cameraTile_6, cameraTile_7, cameraTile_8, cameraTile_9]
    }

    GridLayout {
        id: grid
        columns: 5
        rowSpacing: 5
        columnSpacing: 5
        anchors.fill: parent

// Ethan: goal is to dynamically create CameraTile elements with Javascript

        CameraTile {
            id: cameraTile_0
            indexNum: 0
            cameraName: "0"
            isCamera: true;
            width: 200; height: 200
            updateRate: 30;
        }

        CameraTile {
            id: cameraTile_1
            indexNum: 1
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }

        // we don't really need images
//        CameraTile {
//            id: cameraTile_2
//            indexNum: 2;
//            cameraName: "/home/ethan/Pictures/zenuity.png";
//            isImage: true;
//            width: 200; height: 200;
//            updateRate: 30;
//        }

        CameraTile {
            id: cameraTile_2
            indexNum: 2
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_3
            indexNum: 3
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_4
            indexNum: 4
            cameraName: "/home/ethan/Videos/copy_video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_5
            indexNum: 5
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_6
            indexNum: 6
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_7
            indexNum: 7
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_8
            indexNum: 8
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
        CameraTile {
            id: cameraTile_9
            indexNum: 9
            cameraName: "/home/ethan/Videos/video_0.mp4";
            isVideo: true;
            width: 200; height: 200
            updateRate: 30
        }
    }
}

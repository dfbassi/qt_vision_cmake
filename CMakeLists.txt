#cmake_minimum_required(VERSION 2.8.12)

#project(qt_vision_cmake_project LANGUAGES CXX)

#set(CMAKE_INCLUDE_CURRENT_DIR ON)
#set(CMAKE_AUTOMOC ON)
#set(CMAKE_AUTORCC ON)

#find_package(Qt5 COMPONENTS Core Quick REQUIRED)

#add_executable(${PROJECT_NAME} "main.cpp" "qml.qrc")

#target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Quick)

cmake_minimum_required(VERSION 2.8.12)

project(qt_vision_cmake_project LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

#FIND_PACKAGE( OpenCV REQUIRED )
INCLUDE_DIRECTORIES(/usr/local/include)
#INCLUDE_DIRECTORIES( ${OpenCV_INCLUDE_DIRS} )
#/usr/local/driveworks/include

LINK_DIRECTORIES(/usr/local/lib/)
#/usr/local/driveworks/lib

add_executable(${PROJECT_NAME} "main.cpp" "qml.qrc" "opencvhandler.cpp" "opencvbackend.cpp" "pixmapimage.cpp" "pixmapcontainer.cpp")

TARGET_LINK_LIBRARIES(${PROJECT_NAME} Qt5::Core Qt5::Quick opencv_core opencv_imgcodecs opencv_highgui opencv_imgproc opencv_videoio opencv_objdetect )

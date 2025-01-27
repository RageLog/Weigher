cmake_minimum_required(VERSION 3.10)

# project name
get_filename_component("${CMAKE_CURRENT_SOURCE_DIR}_name" ${CMAKE_CURRENT_SOURCE_DIR} NAME)
set(LIBRARY_NAME "${${CMAKE_CURRENT_SOURCE_DIR}_name}")
string(REPLACE " " "_" LIBRARY_NAME ${LIBRARY_NAME})
project(${LIBRARY_NAME} LANGUAGES CXX) 

include_directories(.)

find_package(Qt6 COMPONENTS Core Quick Gui Widgets QuickControls2 REQUIRED)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
qt_standard_project_setup()

file(GLOB_RECURSE SOURCES "./*.cpp")
file(GLOB_RECURSE HEADERS "./*.h*")

source_group(TREE ${MAIN_PROJECT_DIR}/Libraries FILES ${SOURCES} ${HEADERS})

add_library(${LIBRARY_NAME} STATIC ${SOURCES} ${HEADERS})

qt_add_resources(${LIBRARY_NAME} "app_qmls"
    PREFIX "/"
    FILES
    UiComponent/Icons/icon_close.svg
    UiComponent/AppQmls/MainBody.qml
    UiComponent/BasicQmls/CheckBox/BaseCheckBox.qml
    UiComponent/BasicQmls/RadioButton/BaseRadioButton.qml
    UiComponent/BasicQmls/ComboBox/BaseComboBox.qml
    UiComponent/BasicQmls/TextField/BaseTextField.qml
    UiComponent/BasicQmls/Button/BaseButton.qml
    UiComponent/BasicQmls/Button/CloseButton.qml
    UiComponent/BasicQmls/Button/IconButton.qml
    UiComponent/BasicQmls/Button/TextButton.qml
    UiComponent/BasicQmls/Window/BaseWindow.qml
    UiComponent/BasicQmls/Window/MainWindow.qml
    UiComponent/BasicQmls/Text/BaseText.qml
    UiComponent/BasicQmls/ToolTip/BaseToolTip.qml
    UiComponent/BasicQmls/Fonts/Montserrat-Regular.ttf
    UiComponent/BasicQmls/Window/WindowComponents/BaseHeadLine.qml
    UiComponent/BasicQmls/Window/WindowComponents/MainWindowHeadLine.qml
    UiComponent/BasicQmls/Utility/Theme.qml
    UiComponent/BasicQmls/Utility/qmldir
    UiComponent/main.qml
)

target_include_directories(${LIBRARY_NAME} PUBLIC /.)
                                                #PRIVATE ${MAIN_DIR}/Project/Common) # other includes here like this

target_link_libraries(${LIBRARY_NAME} PRIVATE project_options project_warnings Qt6::Core Qt6::Gui Qt6::Quick Qt6::Qml Qt6::Widgets Qt6::QuickControls2) 
set_target_properties(${LIBRARY_NAME} PROPERTIES FOLDER ${LIBRARY_NAME})

set(TARGET ${LIBRARY_NAME} PROPERTY POSITION_INDEPENDENT_CODE 1)

#include "WeigherUI.hpp"

#include <QGuiApplication>
#include <QQmlApplicationEngine>

int WeigherUI::run(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/UiComponent/main.qml")));
    return  app.exec();
}

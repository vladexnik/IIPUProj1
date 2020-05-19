#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <stdio.h>
#include <labDmesg.h>
#include <labKeyboard.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject* root = engine.rootObjects()[0];
    LabDmesg labDmesg(root);
    engine.rootContext()->setContextProperty("_labDmesg", &labDmesg);

    QObject* root2 = engine.rootObjects()[0];
    LabKeyboard labKeyboard(root2);
    engine.rootContext()->setContextProperty("_labKeyboard", &labKeyboard);

    return app.exec();
}


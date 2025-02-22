#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // const QUrl style(QStringLiteral("qrc:/Style.qml"));
    // qmlRegisterSingletonType(style, "Style", 1, 0, "Style");


    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("customQuickControl", "Main");

    return app.exec();
}

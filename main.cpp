#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QStandardPaths>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    //engine.loadFromModule("Padawan", "Main");
    QString path = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation)
                   + "/main.qml";

    qDebug() << "Loading QML from:" << path;

    engine.load(QUrl::fromLocalFile(path));
    return QCoreApplication::exec();
}

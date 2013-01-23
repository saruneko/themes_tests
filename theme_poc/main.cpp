#include <QGuiApplication>
#include <QQuickView>
#include <QScreen>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setSource(QUrl::fromLocalFile("qml/main.qml"));
    view.setWindowTitle("Example");
    view.setResizeMode(QQuickView::SizeRootObjectToView);

    QScreen* screen = app.primaryScreen();
    view.setX(screen->availableGeometry().width() - view.width() - 20);
    view.setY(70);
    view.show();

    return app.exec();
}

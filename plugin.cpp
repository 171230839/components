#include "plugin.h"
#include "styler.h"

#include <QtQml>

static QObject *stylerProvider(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)

    Styler *example = new Styler();
    return example;
}

void Plugin::registerTypes(const char *uri)
{
    // @uri com.iktwo.components
    qmlRegisterSingletonType<Styler>(uri, 1, 0, "Styler", stylerProvider);
}

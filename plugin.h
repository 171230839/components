#ifndef TEST_COMPONENTS_PLUGIN_H
#define TEST_COMPONENTS_PLUGIN_H

#include <QQmlExtensionPlugin>

class Plugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "com.iktwo.components")
    
public:
    void registerTypes(const char *uri);
};

#endif // TEST_COMPONENTS_PLUGIN_H


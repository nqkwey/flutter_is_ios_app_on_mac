#ifndef FLUTTER_PLUGIN_FLUTTER_IS_IOS_APP_ON_MAC_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_IS_IOS_APP_ON_MAC_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _FlutterIsIosAppOnMacPlugin FlutterIsIosAppOnMacPlugin;
typedef struct {
  GObjectClass parent_class;
} FlutterIsIosAppOnMacPluginClass;

FLUTTER_PLUGIN_EXPORT GType flutter_is_ios_app_on_mac_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void flutter_is_ios_app_on_mac_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_FLUTTER_IS_IOS_APP_ON_MAC_PLUGIN_H_

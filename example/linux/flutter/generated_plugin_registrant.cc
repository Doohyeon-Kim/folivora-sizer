//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <folivora_sizer/folivora_sizer_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) folivora_sizer_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FolivoraSizerPlugin");
  folivora_sizer_plugin_register_with_registrar(folivora_sizer_registrar);
}

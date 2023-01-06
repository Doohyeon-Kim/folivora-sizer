#include "include/folivora_sizer/folivora_sizer_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "folivora_sizer_plugin.h"

void FolivoraSizerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  folivora_sizer::FolivoraSizerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

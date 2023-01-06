#ifndef FLUTTER_PLUGIN_FOLIVORA_SIZER_PLUGIN_H_
#define FLUTTER_PLUGIN_FOLIVORA_SIZER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace folivora_sizer {

class FolivoraSizerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FolivoraSizerPlugin();

  virtual ~FolivoraSizerPlugin();

  // Disallow copy and assign.
  FolivoraSizerPlugin(const FolivoraSizerPlugin&) = delete;
  FolivoraSizerPlugin& operator=(const FolivoraSizerPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace folivora_sizer

#endif  // FLUTTER_PLUGIN_FOLIVORA_SIZER_PLUGIN_H_

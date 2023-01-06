import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'folivora_sizer_platform_interface.dart';

/// An implementation of [FolivoraSizerPlatform] that uses method channels.
class MethodChannelFolivoraSizer extends FolivoraSizerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('folivora_sizer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

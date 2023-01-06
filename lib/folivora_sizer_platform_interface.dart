import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'folivora_sizer_method_channel.dart';

abstract class FolivoraSizerPlatform extends PlatformInterface {
  /// Constructs a FolivoraSizerPlatform.
  FolivoraSizerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FolivoraSizerPlatform _instance = MethodChannelFolivoraSizer();

  /// The default instance of [FolivoraSizerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFolivoraSizer].
  static FolivoraSizerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FolivoraSizerPlatform] when
  /// they register themselves.
  static set instance(FolivoraSizerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

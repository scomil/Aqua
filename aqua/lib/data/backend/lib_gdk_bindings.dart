import 'dart:ffi';
import 'dart:io';
import 'package:aqua/ffi/generated_bindings.dart';

typedef DartPostCObject = Pointer Function(
    Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>>);

class LibGdkBindings {
  static LibGdkBindings? _instance;

  String get _libName {
    if (Platform.isLinux || Platform.isAndroid) return 'libgreenaddress.so';
    if (Platform.isMacOS) return 'libgreenaddress.dylib';
    // if (Platform.isWindows) return 'libgreenaddress.dll';
    throw Exception('${Platform.operatingSystem} is not supported');
  }

  String get _libHelperName {
    if (Platform.isLinux || Platform.isAndroid) return 'libdart_helper.so';
    if (Platform.isMacOS) return 'libdart_helper.dylib';
    // if (Platform.isWindows) return 'libgreenaddress.dll';
    throw Exception('${Platform.operatingSystem} is not supported');
  }

  late final DynamicLibrary greenAddressLib;
  late final DynamicLibrary dartHelperLib;

  factory LibGdkBindings([String dllPath = '', String helperPath = '']) =>
      _instance ??= LibGdkBindings._(dllPath, helperPath);

  LibGdkBindings._([String dllPath = '', String helperPath = '']) {
    if (Platform.isIOS) {
      greenAddressLib = DynamicLibrary.process();
      dartHelperLib = DynamicLibrary.process();
    } else {
      greenAddressLib =
          DynamicLibrary.open(dllPath.isEmpty ? _libName : dllPath);
      dartHelperLib =
          DynamicLibrary.open(helperPath.isEmpty ? _libHelperName : helperPath);
    }
  }

  NativeLibrary get lib => NativeLibrary(greenAddressLib);
  NativeLibrary get hLib => NativeLibrary(dartHelperLib);

  void closeDll() {
    _dlCloseFunc(greenAddressLib.handle);
    _dlCloseFunc(dartHelperLib.handle);
    _instance = null;
  }

  int Function(Pointer<Void>) get _dlCloseFunc {
    final funcName = Platform.isWindows ? 'FreeLibrary' : 'dlclose';
    return _stdlib
        .lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(funcName)
        .asFunction();
  }

  DynamicLibrary get _stdlib => Platform.isWindows
      ? DynamicLibrary.open('kernel32.dll')
      : DynamicLibrary.process();
}

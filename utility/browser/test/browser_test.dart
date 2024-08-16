import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:browser/browser.dart';

void main() {
  const MethodChannel channel = MethodChannel('browser');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await Browser.platformVersion, '42');
  });
}

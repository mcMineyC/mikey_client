import 'package:freezed_annotation/freezed_annotation.dart';

part 'mic.freezed.dart';
part 'mic.g.dart';

@freezed
abstract class Mic with _$Mic {
  Mic._();
  factory Mic({
    required int id,
    required String name,
    required DateTime updatedAt,
    required int batteryLevel,
    required double frequency,
  }) = _Mic;

  factory Mic.fromJson(Map<String, dynamic> json) => _$MicFromJson(json);

  factory Mic.empty() => Mic(
    id: -1,
    name: "",
    updatedAt: DateTime.now(),
    batteryLevel: -1,
    frequency: -1,
  );

  //   bool get isInLibrary => inLibrary.contains(ServiceLocator().get<PreferencesProvider>().loginName);
}

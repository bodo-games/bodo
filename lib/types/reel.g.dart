// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reel _$$_ReelFromJson(Map<String, dynamic> json) => _$_Reel(
      id: json['id'] as int,
      symbols: (json['symbols'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_ReelToJson(_$_Reel instance) => <String, dynamic>{
      'id': instance.id,
      'symbols': instance.symbols,
    };

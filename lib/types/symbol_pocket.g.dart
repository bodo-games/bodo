// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_pocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymbolPocket _$$_SymbolPocketFromJson(Map<String, dynamic> json) =>
    _$_SymbolPocket(
      symbolId: const SymbolIdConverter().fromJson(json['symbol_id'] as int?),
      symbolCount: json['symbol_count'] as int,
    );

Map<String, dynamic> _$$_SymbolPocketToJson(_$_SymbolPocket instance) =>
    <String, dynamic>{
      'symbol_id': const SymbolIdConverter().toJson(instance.symbolId),
      'symbol_count': instance.symbolCount,
    };

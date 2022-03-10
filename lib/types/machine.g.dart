// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Machine _$$_MachineFromJson(Map<String, dynamic> json) => _$_Machine(
      id: json['id'] as int,
      name: json['name'] as String,
      miniImageUrl: json['mini_image_url'] as String,
      accentColorHex: json['accent_color_hex'] as String,
      baseColorHex: json['base_color_hex'] as String,
      borderColorHex: json['border_color_hex'] as String,
      reels: (json['reels'] as List<dynamic>).map((e) => e as int).toList(),
      spinCost: json['spin_cost'] as int,
      memberSymbols: (json['member_symbols'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_MachineToJson(_$_Machine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mini_image_url': instance.miniImageUrl,
      'accent_color_hex': instance.accentColorHex,
      'base_color_hex': instance.baseColorHex,
      'border_color_hex': instance.borderColorHex,
      'reels': instance.reels,
      'spin_cost': instance.spinCost,
      'member_symbols': instance.memberSymbols,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      mail: json['mail'] as String,
      nickname: json['nickname'] as String,
      iconUrl: json['icon_url'] as String,
      chips: json['chips'] as int,
      symbolPockets: (json['symbol_pockets'] as List<dynamic>)
          .map((e) => SymbolPocket.fromJson(e as Map<String, dynamic>))
          .toList(),
      selfIntro: json['self_intro'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'mail': instance.mail,
      'nickname': instance.nickname,
      'icon_url': instance.iconUrl,
      'chips': instance.chips,
      'symbol_pockets': instance.symbolPockets,
      'self_intro': instance.selfIntro,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Keycard _$$_KeycardFromJson(Map<String, dynamic> json) => _$_Keycard(
      id: json['id'] as String,
      gameId: json['game_id'] as String,
      userId: json['user_id'] as String,
      userType: json['user_type'] as int,
      secretId: json['secret_id'] as String,
      stateId: json['state_id'] as String,
      seat: json['seat'] as int,
    );

Map<String, dynamic> _$$_KeycardToJson(_$_Keycard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'game_id': instance.gameId,
      'user_id': instance.userId,
      'user_type': instance.userType,
      'secret_id': instance.secretId,
      'state_id': instance.stateId,
      'seat': instance.seat,
    };

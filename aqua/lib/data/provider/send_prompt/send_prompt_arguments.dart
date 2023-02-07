import 'package:aqua/data/models/asset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'send_prompt_arguments.freezed.dart';

@freezed
class SendPromptArguments with _$SendPromptArguments {
  const factory SendPromptArguments({
    required Asset asset,
  }) = _SendPromptArguments;
}

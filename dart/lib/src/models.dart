/// Response models for the Lorem Ipsum Generator API.

/// API Response wrapper.
class LoremipsumgeneratorResponse {
  final String status;
  final dynamic error;
  final LoremipsumgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LoremipsumgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LoremipsumgeneratorResponse.fromJson(Map<String, dynamic> json) => LoremipsumgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LoremipsumgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Lorem Ipsum Generator API.

class LoremipsumgeneratorData {
  num? words;
  num? sentences;
  String? text;

  LoremipsumgeneratorData({
    this.words,
    this.sentences,
    this.text,
  });

  factory LoremipsumgeneratorData.fromJson(Map<String, dynamic> json) => LoremipsumgeneratorData(
      words: json['words'],
      sentences: json['sentences'],
      text: json['text'],
    );
}

class LoremipsumgeneratorRequest {
  int? paragraphs;
  bool? startwithlorem;
  int? maxlength;

  LoremipsumgeneratorRequest({
    this.paragraphs,
    this.startwithlorem,
    this.maxlength,
  });

  Map<String, dynamic> toJson() => {
      if (paragraphs != null) 'paragraphs': paragraphs,
      if (startwithlorem != null) 'startwithlorem': startwithlorem,
      if (maxlength != null) 'maxlength': maxlength,
    };
}

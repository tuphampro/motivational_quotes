import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ServerResponse {
  final Meta meta;
  final dynamic data;
  final int metadata;
  ServerResponse({
    required this.meta,
    required this.data,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meta': meta.toMap(),
      'data': data,
      'metadata': metadata,
    };
  }

  factory ServerResponse.fromMap(Map<String, dynamic> map) {
    return ServerResponse(
      meta: Meta.fromMap(map['meta'] as Map<String, dynamic>),
      data: map['data'] as dynamic,
      metadata: map['metadata'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServerResponse.fromJson(String source) =>
      ServerResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Meta {
  final int error_code;
  final String error_message;

  Meta(
    this.error_code,
    this.error_message,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error_code': error_code,
      'error_message': error_message,
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      map['error_code'] as int,
      map['error_message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) =>
      Meta.fromMap(json.decode(source) as Map<String, dynamic>);
}

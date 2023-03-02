import 'dart:convert';

class GatewayResponse<T> {
  int code;
  String codeDesc;
  String message;
  T? content;

  GatewayResponse({
    required this.code,
    required this.codeDesc,
    required this.message,
    this.content,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'codeDesc': codeDesc,
      'message': message,
      'content': content,
    };
  }

  factory GatewayResponse.fromMap(Map<String, dynamic> map) {
    return GatewayResponse<T>(
      code: map['code']?.toInt() ?? 0,
      codeDesc: map['codeDesc'] ?? '',
      message: map['message'] ?? '',
      content: map['content'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GatewayResponse.fromJson(String source) =>
      GatewayResponse.fromMap(json.decode(source));
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class QuoteModel {
  final String content;
  final String? author;
  final String? audio;
  final String? video;
  final String? image;
  final bool favorite;
  final String id;

  QuoteModel({
    required this.content,
    this.author,
    this.audio,
    this.video,
    this.image,
    required this.favorite,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'author': author,
      'audio': audio,
      'video': video,
      'image': image,
      'favorite': favorite,
      'id': id,
    };
  }

  factory QuoteModel.fromMap(Map<String, dynamic> map) {
    return QuoteModel(
      content: map['content'] as String,
      author: map['author'] != null ? map['author'] as String : null,
      audio: map['audio'] != null ? map['audio'] as String : null,
      video: map['video'] != null ? map['video'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      favorite: map['favorite'] as bool,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuoteModel.fromJson(String source) =>
      QuoteModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

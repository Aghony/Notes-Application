class Note {
  final String id;
  final String title;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;
  final NoteCategory category;
  final List<String> tags;
  final bool isPinned;
  final bool isArchived;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
    this.tags = const [],
    this.isPinned = false,
    this.isArchived = false,
  });

  Note copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    NoteCategory? category,
    List<String>? tags,
    bool? isPinned,
    bool? isArchived,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      isPinned: isPinned ?? this.isPinned,
      isArchived: isArchived ?? this.isArchived,
    );
  }
}

enum NoteCategory {
  personal,
  work,
  ideas,
  todo,
  important;

  String get displayName {
    switch (this) {
      case NoteCategory.personal:
        return 'Personal';
      case NoteCategory.work:
        return 'Work';
      case NoteCategory.ideas:
        return 'Ideas';
      case NoteCategory.todo:
        return 'To-Do';
      case NoteCategory.important:
        return 'Important';
    }
  }

  int get color {
    switch (this) {
      case NoteCategory.personal:
        return 0xFF6C63FF;
      case NoteCategory.work:
        return 0xFFFF6B6B;
      case NoteCategory.ideas:
        return 0xFFFECA57;
      case NoteCategory.todo:
        return 0xFF48DBFB;
      case NoteCategory.important:
        return 0xFFFF9FF3;
    }
  }

  String get icon {
    switch (this) {
      case NoteCategory.personal:
        return '👤';
      case NoteCategory.work:
        return '💼';
      case NoteCategory.ideas:
        return '💡';
      case NoteCategory.todo:
        return '✓';
      case NoteCategory.important:
        return '⭐';
    }
  }
}

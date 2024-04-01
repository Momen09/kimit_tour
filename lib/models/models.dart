class CategoryModel {
  final String title;
  final String imageUrl;

  CategoryModel(
    this.title,
    this.imageUrl,
  );
}

enum ChatMessageType { user, bot }

class ChatMessage {
  ChatMessage({
    required this.text,
    required this.chatMessageType,
  });

  final String text;
  final ChatMessageType chatMessageType;
}

class Attraction {
  final String name;
  final dynamic description;
  final String location;
  final String imageUrl;

  Attraction({
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.description,
  });
}

class Trip {
  final String title;
  final int price;
  final String duration;
  final String featureImgUrl;
  final String status;
  final List<String> tripImages;
  final String description;
  final List<String> itinerary;
  final int cities;
  final String tripType;
  final List<String> included;
  final List<String> excluded;

  Trip({
    required this.included,
    required this.excluded,
    required this.tripType,
    required this.cities,
    required this.itinerary,
    required this.description,
    required this.tripImages,
    required this.status,
    required this.title,
    required this.price,
    required this.duration,
    required this.featureImgUrl,
  });
}

class Category {
  final String id;
  final String title;
  final String imageUrl;

  Category({required this.id, required this.title, required this.imageUrl});
}

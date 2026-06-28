class DateNowDummy {
  final String image;
  final String venue;
  final String distance;
  final String title;
  final String subtitle;
  final String hostImage;
  final String hostName;
  final int age;
  final String hostBio;

  const DateNowDummy({
    required this.image,
    required this.venue,
    required this.distance,
    required this.title,
    required this.subtitle,
    required this.hostImage,
    required this.hostName,
    required this.age,
    required this.hostBio,
  });
}

const dummyDate = DateNowDummy(
  image:
      "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=1200",
  venue: "Live • Olive Bar, Mahalaxmi",
  distance: "3.4 km away",
  title: "Pasta & Honest Chats",
  subtitle: "Foodie looking for a dinner buddy 🍝",
  hostImage:
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500",
  hostName: "Ananya",
  age: 25,
  hostBio: "she/her · Foodie",
);
import 'package:ftfl_task/features/home/domain/entities/interest_entity.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';

class UserDataModel extends UserDataEntity {
  const UserDataModel({
    required super.id,
    required super.image,
    required super.name,
    required super.age,
    required super.street,
    required super.city,
    required super.state,
    required super.country,
    required super.match,
    required super.trust,
    required super.replyTime,
    required super.profession,
    required super.height,
    required super.relationship,
    required super.about,
    required super.interests,

    required super.dateOfBirth,
    required super.loveLanguage,
    required super.religion,
    required super.interestedIn,
    required super.zodiac,
    required super.motherTongue,
    required super.communicationStyle,
    required super.diet,
    required super.drinking,
    required super.smoking,
    required super.fitness,
    required super.travel,
    required super.pets,
    required super.sleep,
    required super.quote,
    required super.education,
    required super.educationSubtitle,
    required super.workAs,
    required super.workAsSubtitle,
    required super.workStyle,
    required super.ambitionLevel,
    required super.bigDream,
    required super.datingGoal,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    final age = json["dob"]["age"];

    return UserDataModel(
      id: json["login"]["uuid"],

      image: json["picture"]["large"],

      name: "${json["name"]["first"]} ${json["name"]["last"]}",

      age: age,

      street: json["location"]["street"]["name"],
      city: json["location"]["city"],
      state: json["location"]["state"],

      country: json["location"]["country"],

      match: 70 + (age % 30),

      trust: 95 + (age % 5),

      replyTime: "~5 min",

      profession: _profession(age),

      height: _height(age),

      relationship: _relationship(age),
      about: _about(age),
      interests: _interests(age),
      dateOfBirth: _dob(json["dob"]["date"]),

      loveLanguage: _loveLanguage(age),

      religion: _religion(age),

      interestedIn: _interestedIn(age),

      zodiac: _zodiac(json["dob"]["date"]),

      motherTongue: _motherTongue(age),

      communicationStyle: _communicationStyle(age),

      diet: _diet(age),

      drinking: _drinking(age),

      smoking: _smoking(age),

      fitness: _fitness(age),

      travel: _travel(age),

      pets: _pets(age),

      sleep: _sleep(age),
      quote: _quote(age),
      education: _education(age),

      educationSubtitle: _educationSubtitle(age),

      workAs: _workAs(age),

      workAsSubtitle: _workAsSubtitle(age),

      workStyle: _workStyle(age),

      ambitionLevel: _ambitionLevel(age),

      bigDream: _bigDream(age),
      datingGoal: _datingGoal(age),
    );
  }
  static String _dob(String date) {
    final d = DateTime.parse(date);

    const months = [
      '',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return "${d.day} ${months[d.month]} ${d.year}";
  }

  static String _profession(int age) {
    final list = ["Fashion Designer", "Product Designer", "Content Creator"];

    return list[age % list.length];
  }

  static String _height(int age) {
    final list = ["5'4\"", "5'5\"", "5'2\""];

    return list[age % list.length];
  }

  static String _relationship(int age) {
    return age.isEven ? "Serious Relationship" : "Let's see where it goes";
  }

  static String? _about(int age) {
    const abouts = [
      "Building products by day, planning my next trek by night. Looking for someone equally driven and equally curious.",

      "Coffee lover, beach chaser, and weekend explorer. Always up for meaningful conversations and spontaneous trips.",

      "Designer by profession, photographer by passion. Looking for someone who enjoys simple moments and big dreams.",
    ];

    return abouts[age % abouts.length];
  }

  static String _loveLanguage(int age) {
    const list = [
      "Words of affirmation",
      "Quality time",
      "Acts of service",
      "Receiving gifts",
      "Physical touch",
    ];

    return list[age % list.length];
  }

  static String _religion(int age) {
    const list = ["Hindu-Marati", "Islam-Muslim", "Christian", "Buddhist"];

    return list[age % list.length];
  }

  static String _interestedIn(int age) {
    return age.isEven ? "Women • Dating" : "Men • Dating";
  }

  static String _zodiac(String dob) {
    // For demo
    const list = ["Scorpio", "Leo", "Pisces", "Gemini", "Virgo", "Cancer"];

    return list[dob.hashCode % list.length];
  }

  static String _motherTongue(int age) {
    const list = ["English", "Hindi", "Marathi", "Malayalam", "Tamil"];

    return list[age % list.length];
  }

  static String _communicationStyle(int age) {
    const list = ["Phone calls over texts", "Mostly texting", "Video calls", "Voice notes"];

    return list[age % list.length];
  }

  static String _diet(int age) {
    const list = ["Vegetarian", "Eggetarian", "Non-vegetarian", "Vegan"];

    return list[age % list.length];
  }

  static String _drinking(int age) {
    const list = ["Socially", "Never", "Occasionally"];

    return list[age % list.length];
  }

  static String _smoking(int age) {
    return age.isEven ? "Non-smoker" : "Occasionally";
  }

  static String _fitness(int age) {
    const list = ["Gym 4×/week", "Yoga", "Running", "Swimming"];

    return list[age % list.length];
  }

  static String _travel(int age) {
    const list = ["4–5 trips/year", "2–3 trips/year", "Monthly trips"];

    return list[age % list.length];
  }

  static String _pets(int age) {
    return age.isEven ? "Cat parent" : "Dog parent";
  }

  static String _sleep(int age) {
    return age.isEven ? "Night Owl" : "Early Bird";
  }

  static String _quote(int age) {
    final list = [
      "A good book rec and a strong chai openion",
      "Coffee first. Conversations second",
      "Sunsets, road trips, and meaningful conversations",
      "Looking for laughter that lasts a lifetime",
    ];

    return list[age % list.length];
  }

  static String _education(int age) {
    const list = ["NIFT Pune", "IIT Delhi", "IIM Bangalore", "Anna University"];

    return list[age % list.length];
  }

  static String _educationSubtitle(int age) {
    const list = [
      "B.Des Fashion Design · 3rd year",
      "B.Tech Computer Science",
      "MBA · Marketing",
      "MCA",
    ];

    return list[age % list.length];
  }

  static String _workAs(int age) {
    const list = ["Fashion Designer", "Flutter Developer", "Product Designer", "Content Creator"];

    return list[age % list.length];
  }

  static String _workAsSubtitle(int age) {
    const list = [
      "Freelance · 2 yrs exp",
      "Full-time · 4 yrs exp",
      "Remote · 5 yrs exp",
      "Startup · 3 yrs exp",
    ];

    return list[age % list.length];
  }

  static String _workStyle(int age) {
    const list = ["Creative · Hybrid", "Remote", "Office", "Flexible"];

    return list[age % list.length];
  }

  static String _ambitionLevel(int age) {
    const list = ["HIGHLY DRIVEN", "CAREER FOCUSED", "BALANCED", "GO WITH THE FLOW"];

    return list[age % list.length];
  }

  static String _bigDream(int age) {
    const list = [
      "Launch her own sustainable Indian fashion label — handcrafted, slow fashion made with heart. Also wants to travel every fashion capital before 30.",

      "Build a successful tech startup while travelling across the world and mentoring aspiring developers.",

      "Become a full-time travel photographer and publish a coffee table book featuring hidden places across Asia.",

      "Open a cozy café combined with a community library where people can work, read and connect.",
    ];

    return list[age % list.length];
  }

  static String _datingGoal(int age) {
    const goalList = [
      "Long-term, marriage-open",
      "Long-term relationship",
      "Looking for a life partner",
      "Serious relationship",
    ];
    return goalList[age % goalList.length];
  }

  static List<InterestEntity> _interests(int age) {
    const all = [
      InterestEntity(title: "Travel", icon: "flight"),
      InterestEntity(title: "Coffee", icon: "coffee"),
      InterestEntity(title: "Trekking", icon: "terrain"),
      InterestEntity(title: "Books", icon: "menu_book"),
      InterestEntity(title: "Yoga", icon: "self_improvement"),
      InterestEntity(title: "Indie Music", icon: "music_note"),
      InterestEntity(title: "Cooking", icon: "favorite"),
      InterestEntity(title: "Photography", icon: "photo_camera"),
      InterestEntity(title: "Movies", icon: "movie"),
      InterestEntity(title: "Cycling", icon: "directions_bike"),
      InterestEntity(title: "Gaming", icon: "sports_esports"),
      InterestEntity(title: "Art", icon: "palette"),
      InterestEntity(title: "Reading", icon: "auto_stories"),
      InterestEntity(title: "Swimming", icon: "pool"),
      InterestEntity(title: "Hiking", icon: "hiking"),
    ];

    final start = age % 5;

    return all.skip(start).take(8).toList();
  }
}

// ignore: file_names
class StatusData {
  final String name;
  final String message;

  final String image;

  StatusData({required this.name, required this.message, required this.image});
}

// ignore: non_constant_identifier_names
List<StatusData> MyStatusdata = [
  StatusData(
      name: 'My status',
      message: 'Tap to add status update',
      image:
          'https://media.gq.com/photos/5a8fa1c5c0fcdc28d27c80a8/master/pass/ronaldo.jpg')
];

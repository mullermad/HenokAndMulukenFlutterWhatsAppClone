// ignore: file_names
class CallData {
  final String name;
  final String message;

  final String image;

  CallData({required this.name, required this.message, required this.image});
}

// ignore: non_constant_identifier_names
List<CallData> MyCalldata = [
  CallData(
      name: 'Create call link',
      message: 'Share a link for your WhatsApp call',
      image: 'https://img.icons8.com/windows/2x/link.png')
];

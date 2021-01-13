import './user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;

  final bool isLiked;
  final bool unread;
  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// You - Current User
final User currentUser = User(
  id: 0,
  name: 'ABHAY',
  imageUrl: 'assets/image/01.jpg',
);
// All user

final User deku = User(
  id: 1,
  name: 'Deku',
  imageUrl: 'assets/image/01.jpg',
);

final User bakugo = User(
  id: 2,
  name: 'Bakugo',
  imageUrl: 'assets/image/02.jpg',
);

final User levi = User(
  id: 3,
  name: 'Levi',
  imageUrl: 'assets/image/03.jpg',
);

final User minato = User(
  id: 4,
  name: 'Minato',
  imageUrl: 'assets/image/04.jpg',
);

final User naruto = User(
  id: 5,
  name: 'Naruto',
  imageUrl: 'assets/image/05.jpg',
);

final User sasuke = User(
  id: 6,
  name: 'Sasuke',
  imageUrl: 'assets/image/06.jpg',
);

final User kakashi = User(
  id: 7,
  name: 'Kakashi',
  imageUrl: 'assets/image/07.jpg',
);

final User mikasa = User(
  id: 8,
  name: 'Mikasa',
  imageUrl: 'assets/image/08.jpg',
);

// List of fav contact

List<User> favorites = [mikasa, minato, levi, naruto, kakashi, sasuke];

List<Message> chats = [
  Message(
    sender: levi,
    time: '5:30 PM',
    text: 'Clean the room by 10.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: naruto,
    time: '12:30 PM',
    text: 'Dattebayo',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: deku,
    time: '5:30 PM',
    text: 'I miss Almight',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kakashi,
    time: '3:30 PM',
    text: 'Sorry guys I\'ll be late today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sasuke,
    time: '2:30 PM',
    text: 'I\'ll be the Next Hokage',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: minato,
    time: '1:30 PM',
    text: 'Hey There, I\'m Minato Namikaze?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: bakugo,
    time: '4:30 PM',
    text: 'Baka Baka Baka',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mikasa,
    time: '11:30 AM',
    text: 'Where\'s Eren?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: mikasa,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mikasa,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mikasa,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mikasa,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];

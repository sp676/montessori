// import 'package:flutter/material.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   late TextEditingController _messageController;

//   @override
//   void initState() {
//     super.initState();
//     _messageController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _messageController.dispose();
//     super.dispose();
//   }

//   void _sendMessage() {
//     String message = _messageController.text.trim();
//     // TODO: Implement logic to send the message
//     _messageController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chat'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: 0, // Replace with the actual number of chat messages
//               reverse: true,
//               itemBuilder: (context, index) {
//                 // TODO: Build chat message item
//                 return ListTile(
//                   title: Text('Chat message $index'),
//                 );
//               },
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _messageController,
//                     decoration: const InputDecoration(
//                       hintText: 'Type a message',
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.send),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

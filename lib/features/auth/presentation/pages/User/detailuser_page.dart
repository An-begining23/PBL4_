// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart'; // Thêm flutter_bloc
// import 'dart:io'; // Để làm việc với File
// import 'package:image_picker/image_picker.dart'; // Thêm thư viện image_picker
// import 'package:my_app/features/auth/data/models/user/user_model.dart'; // Import model User
// // import 'package:my_app/features/auth/presentation/bloc/home_page/home_cubit.dart'; // Import HomeCubit
// import 'package:my_app/features/auth/presentation/pages/User/home_page.dart'; // Trang HomePage sau khi đăng nhập thành công
// import 'package:my_app/features/auth/presentation/pages/User/setting_page.dart'; // Trang cài đặt

// class DetailUserPage extends StatefulWidget {
//   const DetailUserPage({super.key});

//   @override
//   State<DetailUserPage> createState() => _DetailUserPageState();
// }

// class _DetailUserPageState extends State<DetailUserPage> {
//   File? _imageFile; // Biến để lưu ảnh đã chọn
//   String _imagePath = ''; 
//   String name = ''; // Biến lưu tên người dùng
//   String imagepath = ''; // Biến lưu đường dẫn hình ảnh
//   List<Image> images = []; // Danh sách hình ảnh
//   UserModel? user; // Người dùng
//   final List<String> imgList = [
//     'resources/photo1.png',
//     'resources/photo2.png',
//     'resources/photo3.jpg',
//   ];

//   // Hàm để chọn ảnh từ bộ nhớ thiết bị
//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(
//       source: ImageSource.gallery,
//     ); // Chọn ảnh từ thư viện
//     if (pickedFile != null) {
//       setState(() {
//         _imageFile = File(pickedFile.path);
//         _imagePath = pickedFile.path;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(  // Bọc trong SingleChildScrollView để đảm bảo scroll được
//       child: BlocConsumer<HomeCubit, HomeState>(
//         listener: (context, state) {
//           // Xử lý khi state thay đổi (lắng nghe)
//           if (state.status == HomeStatus.success) {
//             // Logic khi thành công nếu cần
//           }
//         },
//         builder: (context, state) {
//           // Xử lý trạng thái của HomeCubit, ví dụ: hiển thị loading, error, success
//           if (state.status == HomeStatus.loading) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           return Column(
//             children: [
//               // Header Profile
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 color: Colors.black,
//                 child: Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundImage: _imageFile != null
//                           ? FileImage(_imageFile!)
//                           : AssetImage("resources/avt.jpg") as ImageProvider,
//                     ),
//                     const SizedBox(width: 10),
//                     ElevatedButton(
//                       onPressed: _pickImage,
//                       child: const Text("Chọn ảnh"),
//                     ),
//                     const SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           user?.name ?? '',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           user?.id ?? '',
//                           style: const TextStyle(color: Colors.white70),
//                         ),
//                       ],
//                     ),
//                     const Spacer(),
//                     IconButton(
//                       icon: const Icon(Icons.settings, color: Colors.white),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const SettingsPage(),
//                           ),
//                         );
//                       },
//                     ),
//                     IconButton(
//                       icon: const Icon(
//                         Icons.arrow_circle_right_outlined,
//                         color: Colors.white,
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const HomePage(),
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),

//               // Grid of Images
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 child: GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     crossAxisSpacing: 8,
//                     mainAxisSpacing: 8,
//                   ),
//                   itemCount: imgList.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         image: DecorationImage(
//                           image: AssetImage(imgList[index]),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//               // Stats Row (Posts, Followers, Following)
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 color: Colors.black,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: const [
//                         Text(
//                           '150',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text('Posts', style: TextStyle(color: Colors.white70)),
//                       ],
//                     ),
//                     Column(
//                       children: const [
//                         Text(
//                           '2.5K',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text('Followers', style: TextStyle(color: Colors.white70)),
//                       ],
//                     ),
//                     Column(
//                       children: const [
//                         Text(
//                           '300',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text('Following', style: TextStyle(color: Colors.white70)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

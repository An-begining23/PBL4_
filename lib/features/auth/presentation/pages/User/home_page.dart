import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late List<CameraDescription> _cameras;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _initializeCamera() async {
    try {
      _cameras = await availableCameras();
      if (_cameras.isEmpty) {
        _showErrorDialog('Không tìm thấy camera');
        return;
      }
      final CameraDescription camera = _cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
        orElse: () => _cameras.first,
      );

      _controller = CameraController(camera, ResolutionPreset.high);
      _initializeControllerFuture = _controller.initialize();

      await _initializeControllerFuture;

      setState(() {
        _isCameraInitialized = true;
      });
    } catch (e) {
      _showErrorDialog('Lỗi khi khởi tạo camera: $e');
    }
  }

  Future<void> _takePicture() async {
    try {
      if (!_controller.value.isInitialized) {
        _showErrorDialog('Camera chưa được khởi tạo');
        return;
      }

      final XFile picture = await _controller.takePicture();
      final Directory extDir = await getApplicationDocumentsDirectory();
      final String dirPath = '${extDir.path}/Pictures/flutter_camera';
      await Directory(dirPath).create(recursive: true);

      final String newPath =
          '$dirPath/${DateTime.now().millisecondsSinceEpoch}.jpg';
      await File(picture.path).copy(newPath);

      print('✅ Ảnh đã được lưu tại: $newPath');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Đã chụp ảnh: ${newPath.split('/').last}'),
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (e) {
      print('❌ Lỗi khi chụp ảnh: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lỗi khi chụp ảnh!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Lỗi'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Đóng'),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    int index = 0;
    String dropdownValue = "One";
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Example'),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(),
        actions: <Widget>[
          IconButton(
            alignment: Alignment.topRight,
            icon: Icon(Icons.message_sharp),
            onPressed: () {},
          ),
          DropdownButtonFormField<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Three', 'Four', 'Five']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                })
                .toList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: !_isCameraInitialized
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Đang khởi tạo camera...'),
                ],
              ),
            )
          : Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              child: Column(
                children: [
                  Expanded(child: CameraPreview(_controller)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.flash_on),
                          color: const Color.fromARGB(255, 0, 0, 0),
                          iconSize: 30,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.rotate_right),
                          color: const Color.fromARGB(255, 0, 0, 0),
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: ElevatedButton(
                      onPressed: _takePicture,
                      child: const Icon(Icons.camera_alt, size: 40),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

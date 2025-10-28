import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isAccountBlocked = false;
  bool _showAccount = true;
  bool _privacyOptions = false;
  bool _support = true;
  bool _reportIssue = false;
  bool _sendSuggestion = true;
  bool _introduction = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          // First section
          _buildSection(
            title: 'Sua ngay sưu',
            children: [
              // Sửa lỗi dòng 35-38: Thêm icon leading
              ListTile(
                leading: Icon(Icons.heart_broken_outlined, color: Colors.deepOrange,), // ✅ Sửa lỗi: Icons.apps thay vì Icons(Icons:apps)
                title: const Text('Biểu tượng ứng dụng'),
                trailing: const Icon(Icons.arrow_circle_right_rounded, size: 16, color: Color.fromARGB(255, 25, 237, 208)),
                onTap: () {},
              ),
              _buildListTile(
                title: 'Thay đổi địa chỉ email',
                trailing: Icons.arrow_forward_ios,
                onTap: () {},
              ),
              _buildListTile(
                title: 'Cách thêm tiện ích', // ✅ Sửa lỗi dòng 40-41
                trailing: Icons.arrow_forward_ios,
                onTap: () {},
              ),
              _buildListTile(
                title: 'Khôi phục đơn hàng',
                trailing: Icons.arrow_forward_ios,
                onTap: () {},
              ),
            ],
          ),
          
          const Divider(height: 1),
          
          // Second section
          _buildSection(
            title: 'Riêng tư & bảo mật',
            children: [
              _buildSwitchTile(
                title: 'Tài khoản đã bị chặn',
                value: _isAccountBlocked,
                onChanged: (value) {
                  setState(() {
                    _isAccountBlocked = value;
                  });
                },
              ),
              _buildSwitchTile(
                title: 'Hiển thị tài khoản',
                value: _showAccount,
                onChanged: (value) {
                  setState(() {
                    _showAccount = value;
                  });
                },
              ),
              _buildSwitchTile(
                title: 'Các lựa chọn quyền riêng tư c...',
                value: _privacyOptions,
                onChanged: (value) {
                  setState(() {
                    _privacyOptions = value;
                  });
                },
              ),
              _buildSwitchTile(
                title: 'Hỗ trợ',
                value: _support,
                onChanged: (value) {
                  setState(() {
                    _support = value;
                  });
                },
              ),
              _buildSwitchTile(
                title: 'Báo cáo sự cố',
                value: _reportIssue,
                onChanged: (value) {
                  setState(() {
                    _reportIssue = value;
                  });
                },
              ),
              _buildSwitchTile(
                title: 'Gửi đề xuất',
                value: _sendSuggestion,
                onChanged: (value) {
                  setState(() {
                    _sendSuggestion = value;
                  });
                },
              ),
              _buildSwitchTile(
                title: 'Giới thiệu',
                value: _introduction,
                onChanged: (value) {
                  setState(() {
                    _introduction = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...children,
      ],
    );
  }

  Widget _buildListTile({
    required String title,
    required IconData trailing,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: Icon(
        trailing,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      value: value,
      onChanged: onChanged,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

// ✅ Sửa lỗi dòng 42-45: Thêm main function

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Thêm flutter_bloc
import 'package:fl_chart/fl_chart.dart'; // Thêm thư viện fl_chart
import 'package:my_app/features/auth/presentation/pages/Admin/statistics_page.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';
import 'package:my_app/features/auth/presentation/bloc/user/user_cubit.dart';
import 'package:my_app/features/auth/presentation/bloc/user/user_state.dart';

class AllUserPage extends StatefulWidget {
  const AllUserPage({super.key});

  @override
  State<AllUserPage> createState() => _AllUserPageState();
}

class _AllUserPageState extends State<AllUserPage> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Users')),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state.status == UserStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == UserStatus.error) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          } else if (state.status == UserStatus.success) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
                return ListTile(
                  title: Text(user.userName ?? 'No Name'),
                  subtitle: Text(user.userId ?? 'No Email'),
                );
              },
            );
          }
          return const Center(child: Text('No data available'));
        },
      ),
    );
  }
}

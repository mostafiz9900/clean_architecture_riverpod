import 'dart:math';

import 'package:clean_arch_riverpod/src/application/states/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/user_role.dart';

/// If our user is signed out, this provider returns [UserRole.none]
/// Otherwise, it mocks a network request and gives out some [UserRole].
final permissionsProvider = FutureProvider.autoDispose<UserRole>((ref) async {
  final userId = await ref.watch(authNotifierProvider.future);

  if (userId == null) return const UserRole.none();

  return _requestMock();
});

/// Gives a random [UserRole] based on a dice roll.
UserRole _requestMock() {
  // mock
  final random = Random().nextDouble();

  if (random < 0.25) {
    return const UserRole.admin();
  } else if (random < 0.5) {
    return const UserRole.verifiedUser();
  } else if (random < 0.75) {
    return const UserRole.unverifiedUser();
  } else {
    return const UserRole.guest();
  }
}

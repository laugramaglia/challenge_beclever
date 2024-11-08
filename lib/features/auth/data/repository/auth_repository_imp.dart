import 'dart:async';
import 'dart:developer';

import 'package:challange_beclever/core/network/dio_client_fake.dart';
import 'package:challange_beclever/features/auth/data/models/create_pass_req_params.dart';
import 'package:challange_beclever/features/auth/data/models/log_in_req_params.dart';
import 'package:challange_beclever/features/auth/data/models/validate_phone_req_params.dart';
import 'package:challange_beclever/features/auth/data/source/auth_api_service.dart';
import 'package:challange_beclever/features/auth/data/source/auth_local_service.dart';
import 'package:challange_beclever/features/auth/domain/repository/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:local_auth/local_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalService authLocalService;
  final AuthApiService authApiService;
  final LocalAuthentication localAuth;

  AuthRepositoryImpl({
    required this.authLocalService,
    required this.authApiService,
    required this.localAuth,
  });

  @override
  Future<Either<String, Response>> validatePhone(
      ValidatePhoneReqParams param) async {
    final result = await authApiService.validatePhone(param);

    return result.fold((error) {
      authLocalService.clearToken();
      return Left(error);
    }, (d) async {
      authLocalService.setToken(d.data['token']);
      return Right(d);
    });
  }

// example
  @override
  Future<Either<String, Response>> logIn(LogInReqParams param) async {
    // Simulated authentication logic
    // In a real implementation, you'd call an authentication service

    // first check biometrics
    final useBiometric = authLocalService.getUseBiometric();
    final canCheckBiometrics = await localAuth.canCheckBiometrics;

    log('$useBiometric, $canCheckBiometrics');

    if ((useBiometric ?? true) && canCheckBiometrics) {
      final biometricAuth =
          await localAuth.authenticate(localizedReason: '2FA');

      if (!biometricAuth) {
        return const Left('Autenticación fallida');
      }
    }

    final response = await authApiService.login(params: param.toMap());
    return await Future.delayed(
      const Duration(seconds: 1),
      () {
        return response.fold(
          (error) {
            return Left(error);
          },
          (data) {
            authLocalService.setToken(data.data['token']);
            return Right(data);
          },
        );
      },
    );
  }

  @override
  Future<void> logOut() {
    return Future.value();
  }

  @override
  Future<Either<String, Response>> getUser() {
    return authApiService.getUser();
  }

  @override
  Future<Either<String, Response>> createPassword(
      CreatePassReqParams data) async {
    final response = await authApiService.createPassword(data);
    return await Future.delayed(
      const Duration(seconds: 1),
      () {
        return response.fold(
          (error) {
            return Left(error);
          },
          (d) async {
            await authLocalService.setUseBiometric(data.useBiometric);
            return Right(d);
          },
        );
      },
    );
  }
}

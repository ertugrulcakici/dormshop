import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dormshop/core/utils/extensions/exception_extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../product/constants/app_constants.dart';
import '../../../../product/model/user_model.dart';
import '../../../../view/auth/login/login_view.dart';
import '../../../../view/auth/user_setup/user_setup_view.dart';
import '../../../../view/main/home/home_view.dart';
import '../../navigaton/navigaton_service.dart';

part "auth_service_interface.dart";

final class AuthService implements IAuthService {
  static final AuthService _instance = AuthService._init();
  static AuthService get instance => _instance;
  AuthService._init();

  @override
  UserCredential? userCredential;

  @override
  UserModel? userModel;

  @override
  bool get didEmailVerified => firebaseCurrentUser?.emailVerified ?? false;

  @override
  User? get firebaseCurrentUser => FirebaseAuth.instance.currentUser;

  @override
  Future<bool> get isLoggedIn async {
    return firebaseCurrentUser != null ? true : false;
  }

  @override
  Future<void> login({required String email, required String password}) async {
    try {
      userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e.localized;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(clientId: AppConstants.googleClientId).signIn();

      if (googleUser == null) {
        // if the user cancels the process
        throw ErrorDescription("Google ile giriş yapma başarısız");
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final OAuthCredential googleCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      userCredential =
          await FirebaseAuth.instance.signInWithCredential(googleCredential);

      if (userCredential!.user == null) {
        throw ErrorDescription(
            "Bu google hesabı ile giriş yapma başarısız oldu. Lütfen başka bir hesap deneyiniz");
      }

      final userDoc = await FirebaseFirestore.instance
          .collection("users")
          .doc(userCredential!.user!.uid)
          .get();

      // if user logged in app before with google or something else
      if (userDoc.exists) {
        userModel = UserModel.fromMap(userDoc.data()!);
        // if the user has not completed the setup process, navigate to setup page
        if (userModel!.cityId == null || userModel!.countryId == null) {
          await NavigationService.toPageAndRemoveUntil(const UserSetupView());
          return;
        }
        // if the user has completed the setup process, navigate to home page
        else {
          await NavigationService.toPageAndRemoveUntil(const HomeView());
          return;
        }
      }
      // if the user is new, create a new user and navigate to setup page
      else {
        UserModel newUser = UserModel.newAccount(
          uid: userCredential!.user!.uid,
          displayName: userCredential!.user!.displayName!,
          email: userCredential!.user!.email!,
        );

        try {
          await FirebaseFirestore.instance
              .collection("users")
              .doc(userCredential!.user!.uid)
              .set(newUser.toMap());
        } catch (e) {
          await deleteUserData();
          throw ErrorDescription(
              "Bu google hesabı ile giriş yapma başarısız oldu. Lütfen başka bir hesap deneyiniz");
        }

        userModel = newUser;
        await NavigationService.toPageAndRemoveUntil(const UserSetupView());
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> register({
    required String displayName,
    required String email,
    required String password,
  }) async {
    try {
      userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential!.user == null) {
        throw ErrorDescription("Kullanıcı oluşturma başarısız");
      }

      UserModel newUser = UserModel.newAccount(
        uid: userCredential!.user!.uid,
        displayName: displayName,
        email: email,
      );

      try {
        // create user in firestore
        await FirebaseFirestore.instance
            .collection("users")
            .doc(userCredential!.user!.uid)
            .set(newUser.toMap());
        await NavigationService.toPageAndRemoveUntil(const UserSetupView());
        return;
      } catch (e) {
        await deleteUserData();
        throw ErrorDescription("Kullanıcı oluşturma başarısız");
      }
    } on FirebaseAuthException catch (e) {
      throw e.localized;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();
      await NavigationService.toPageAndRemoveUntil(const LoginView());
    } on FirebaseAuthException catch (e) {
      throw e.localized;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteUserData() async {
    try {
      await userCredential?.user?.delete();
      if (userCredential?.user != null) {
        await FirebaseFirestore.instance
            .collection("users")
            .doc(userCredential!.user!.uid)
            .delete();
      }
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

extension ErrorDescriptionExtensions on FirebaseAuthException {
  ErrorDescription get localized {
    switch (code) {
      case "invalid-email":
        throw ErrorDescription("Geçersiz e-posta adresi");
      case "email-already-in-use":
        throw ErrorDescription("Bu e-posta adresi ile kayıtlı kullanıcı var");
      case "operation-not-allowed":
        throw ErrorDescription("Bu işlem şu anda kullanılamıyor");
      case "weak-password":
        throw ErrorDescription("Zayıf şifre");
      case "missing-android-pkg-name":
        throw ErrorDescription("Sunucu hatası (missing-android-pkg-name)");
      case "missing-continue-uri":
        throw ErrorDescription("Sunucu hatası (missing-continue-uri)");
      case "missing-ios-bundle-id":
        throw ErrorDescription("Sunucu hatası (missing-ios-bundle-id)");
      case "invalid-continue-uri":
        throw ErrorDescription("Sunucu hatası (invalid-continue-uri)");
      case "unauthorized-continue-uri":
        throw ErrorDescription("Sunucu hatası (unauthorized-continue-uri)");
      case "user-not-found":
        throw ErrorDescription("Bu e-posta adresi ile kayıtlı kullanıcı yok");
      case "user-disabled":
        throw ErrorDescription("Bu kullanıcı engellenmiş");
      case "wrong-password":
        throw ErrorDescription("Şifre yanlış veya bu hesaba ait bir şifre yok");
      default:
        throw ErrorDescription("Bilinmeyen bir hata oluştu");
    }
  }
}

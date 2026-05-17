# الدود ماركت - نسخة Flutter Android نظيفة

هذه النسخة مرتبة للرفع مرة واحدة على GitHub ثم البناء على Codemagic للحصول على ملف APK.

## محتويات مهمة

- `lib/` كود التطبيق.
- `assets/images/` صور التطبيق والشعار.
- `pubspec.yaml` إعدادات Flutter والمكتبات.
- `codemagic.yaml` إعداد بناء APK على Codemagic بدون نوع سيرفر مدفوع.
- `tool/build_apk_windows.bat` بناء APK محليًا على ويندوز بعد تثبيت Flutter.

## الرفع إلى GitHub

1. أنشئ مستودع جديد باسم مثل:
   `AldoodMarketClean`
2. لا تضف README ولا .gitignore ولا License من GitHub.
3. افتح هذا المجلد بعد فك الضغط.
4. حدد كل المحتويات داخل المجلد واسحبها إلى صفحة Upload في GitHub.
5. اضغط Commit changes.

## البناء على Codemagic

1. اربط Codemagic مع GitHub.
2. اختر مستودع `AldoodMarketClean`.
3. اختر YAML configuration.
4. شغل Workflow باسم `Build Android APK` أو `android-apk`.
5. بعد النجاح حمّل الملف:
   `build/app/outputs/flutter-apk/app-release.apk`

## البناء محليًا على ويندوز

من داخل مجلد المشروع شغل:

```bat
tool\build_apk_windows.bat
```

أو يدويًا:

```bash
flutter create --platforms=android .
flutter pub get
flutter build apk --release
```

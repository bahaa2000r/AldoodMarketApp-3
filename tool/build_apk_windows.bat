@echo off
chcp 65001 >nul
echo ============================================
echo  الدود ماركت - تجهيز وبناء APK Android
echo ============================================

echo.
echo 1) تجهيز مجلد Android إذا كان غير موجود...
flutter create --platforms=android .
if errorlevel 1 goto error

echo.
echo 2) تحميل المكتبات...
flutter pub get
if errorlevel 1 goto error

echo.
echo 3) بناء APK Release...
flutter build apk --release
if errorlevel 1 goto error

echo.
echo تم بناء APK بنجاح:
echo build\app\outputs\flutter-apk\app-release.apk
pause
exit /b 0

:error
echo.
echo حدث خطأ. تأكد أن Flutter مثبت ويعمل: flutter doctor
echo ثم جرب مرة أخرى.
pause
exit /b 1

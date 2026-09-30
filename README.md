# التقويم

تطبيق تقويم Flutter بسيط يعمل دون اتصال، بواجهة Android سوداء بالكامل.

## Requirements

- اسم التطبيق: التقويم
- Android application ID: `com.calender.black`
- أيقونة التطبيق مطابقة للصورة المرجعية المرفقة.
- واجهة سوداء بالكامل.
- تشغيل دون شبكة.
- عرض شهري بسيط مع التنقل واختيار الأيام.
- إخراج APK من GitHub Actions.
- بدون HTML أو WebView.

## Build

GitHub Actions generates the Android platform files with application ID `com.calender.black`, applies the Arabic app name and supplied launcher icon, runs analysis/tests, verifies the manifest, and builds the release APK.

Repository: https://github.com/TomasThrawat/OfflineBlackCalendar

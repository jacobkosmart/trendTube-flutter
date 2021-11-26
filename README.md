# getx_bottom_nav_sample

<img src="https://user-images.githubusercontent.com/28912774/143510700-a700efa8-2eb6-410c-a50d-49616aceb800.gif" height="500"/>

The sample of AnimatedBottomNavBar with GetX

## 주요 Package 설명

### 1.url_launcher

> [url_launcher pub.dev](https://pub.dev/packages/url_launcher#url_launcher)

- flutter 에서 인앱, 외부 브라우저로 연길 시켜 주는 플러그인

#### android 설정

build.gradle 파일에서 compileSdkVersion이 30으로 되어있는 경우 웹 앱이 안열리는 경우가 있음

```xml
<!-- project 내에 /android/app/src/profile/AndroidMainfest.xml -->
<!-- 아래의 코드를 추가해 줍니다 -->
<queries>
  <!-- If your app opens https URLs -->
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="https" />
  </intent>
  <!-- If your app makes calls -->
  <intent>
    <action android:name="android.intent.action.DIAL" />
    <data android:scheme="tel" />
  </intent>
  <!-- If your sends SMS messages -->
  <intent>
    <action android:name="android.intent.action.SENDTO" />
    <data android:scheme="smsto" />
  </intent>
  <!-- If your app sends emails -->
  <intent>
    <action android:name="android.intent.action.SEND" />
    <data android:mimeType="*/*" />
  </intent>
</queries>
```

#### iOS 설정

```plist
// in ios/Runner/info.plist

<dict>
	<key>LSApplicationQueriesSchemes</key>
	<array>
    <string>http</string>
    <string>https</string>
	</array>
........
</dict>

```

#### 적용

```dart
import 'package:url_launcher/url_launcher.dart';

// 비동기로 접속 하고 getx controller 에 연결된 변수 url 을 string 타입으로 연결 해 준다
 GestureDetector(
    onTap: () async {
      await launch(
        controller.jacobkoInfo,
        // 안드로이드 webview 연결 (인앱)
        forceWebView: true,
        // iOS Safari webview 연결 (인앱)
        forceSafariVC: true,
      );
    },
      child: Text(....),
```

### 2.유튜브 API

> [Youtube API Search list reference](https://developers.google.com/youtube/v3/docs/search/list?hl=ko)

## BottomSheet

components -> bottom_sheet.dart

## Sliver Appbar

- 리스트에서 스크롤시에 AppBar 는 사라지고 다시 scrollUP 하게 되면 AppBar 바로 나타 나는 기능

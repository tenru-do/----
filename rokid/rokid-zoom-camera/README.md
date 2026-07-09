# Rokid Zoom Camera

Unofficial Android camera app prototype for Rokid Glasses.

The app keeps the glasses display minimal: a small camera preview that follows the Rokid/system brightness setting, temple-swipe zoom, physical-button photo capture, and physical-button long-press video recording.

## Author

- tenru-do
- Contact: 86155527+tenru-do@users.noreply.github.com

## Current Features

- Camera2 preview on Rokid Glasses.
- Stepped zoom controlled by horizontal temple swipe.
- Photo capture with the current zoom applied.
- Video recording with the current zoom applied.
- Red `REC` indicator while video recording.
- Saved media is written to `DCIM/Camera` through Android MediaStore.
- Preview is intentionally small and follows the Rokid/system brightness setting.
- A compact HUD at the bottom of the preview shows the current time, battery percentage, and charging status.
- After 15 seconds without input, the preview dims and shows `SLEEP`.
- A swipe, key, touch, capture, or other app input restores the preview to the Rokid/system brightness level.
- App attempts to suppress the official short-press camera action while this app is active, then restores it when the app pauses/stops.
- Bluetooth/media-button handling is intentionally not used, to avoid interfering with music playback.

## Controls

- Temple swipe forward/backward: zoom in/out.
- Physical button short press: take a zoomed photo.
- Physical button long press: start/stop zoomed video recording.
- If a video is recording, a short press also stops recording.

Slide/touchpad tap-style keys such as enter/DPAD center are not mapped to capture.

## Important Notes

This is not an official Rokid app and is not endorsed by Rokid.

Some behavior depends on Rokid firmware internals observed during device testing, including broadcast action names and a Rokid setting used to avoid duplicate official-camera captures while the app is running. These details may change across device models or firmware versions.

The app is a prototype. Test carefully before relying on it for important captures.

## Privacy

The app does not use cloud APIs and does not send captured media over the network. Photos and videos are saved locally on the device.

## Download APK

Prototype debug APK:

[RokidZoomCamera-v0.1.3-debug.apk](https://github.com/tenru-do/----/raw/main/rokid/rokid-zoom-camera/dist/RokidZoomCamera-v0.1.3-debug.apk)

File details:

- Version: `0.1.3`
- Size: `56,935 bytes`
- SHA-256: `66A8CC84EB82DD4D53F44DC9E2BB49D6AA3888669028AA4B9E039E553F79FFFE`

This APK is debug-signed and intended for prototype sideload testing.

## Build

Open `rokid/rokid-zoom-camera` in Android Studio and build the `app` module.

The debug APK is generated at:

```text
app/build/outputs/apk/debug/app-debug.apk
```

PowerShell example:

```powershell
$env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'
$env:ANDROID_HOME='C:\Users\user\Documents\Rokid_Zoom_Camera\android-sdk'
$env:ANDROID_SDK_ROOT=$env:ANDROID_HOME
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"
gradle assembleDebug
```

## Repository Hygiene

Do not publish local investigation artifacts. The following are intentionally ignored:

- `.tmp/`
- `android-sdk/`
- `.gradle/`
- `build/`
- `app/build/`
- generated APK/AAB files
- except the explicitly published prototype APK under `dist/`
- keystore files
- screenshots/captures

Before publishing, run:

```powershell
git status --short
git check-ignore .tmp android-sdk rokid/rokid-zoom-camera/app/build build .gradle
```

## License

No open-source license has been selected yet. Until a license is added, the code should be treated as all rights reserved.

# Rokid Zoom Camera - Current Spec

## Goal

Provide a minimal Rokid Glasses camera app with zoom control by temple swipe. The app is designed for quick zoomed capture without bright UI elements in the glasses display.

## Target Hardware

Rokid Glasses running Android-compatible firmware with camera access exposed to third-party apps.

## Capture Modes

### Photo

- Triggered by physical button short press.
- Saves a zoom-applied JPEG to `DCIM/Camera`.
- Saved image orientation is corrected for viewing through HiRokid/phone import.

### Video

- Triggered by physical button long press.
- Second long press stops recording.
- Short press while recording also stops recording.
- Saves a zoom-applied MP4 to `DCIM/Camera`.
- Video is recorded without audio to avoid Bluetooth/music interference and microphone permission requirements.
- A red `REC` indicator is shown while recording.

## UI

- Only the camera preview is normally visible.
- Preview is small, dim, and bottom-centered.
- No debug controls or input logs are visible during normal use.
- Recording state is shown by a small red `REC` label.

## Controls

- Temple swipe forward: zoom in.
- Temple swipe backward: zoom out.
- Physical button short press: photo capture.
- Physical button long press: video start/stop.
- Slide/touchpad tap-style key events are not used for capture.

## Zoom

Zoom uses stepped levels:

- 1.0x
- 1.5x
- 2.0x
- 3.0x
- 4.0x, when supported by the camera

The app clamps zoom to the camera's maximum supported digital zoom. The same crop region is applied to preview, photo capture, and video recording.

## Rokid Integration

This app uses non-official Rokid-compatible behavior discovered during device testing:

- It listens for Rokid physical-button broadcasts.
- It temporarily changes the official short-press camera setting while the app is active to avoid duplicate unzoomed official captures.
- It restores the official setting when the app pauses, stops, or is destroyed.

These details are firmware-dependent and may not work on all Rokid devices.

## Stability Measures

- Camera resources are released on pause/stop.
- Camera sessions are recreated on resume.
- Double-open of the camera is guarded.
- Preview frame updates are monitored, and the camera is restarted if the preview stalls.
- The app keeps the display awake while active to avoid apparent black-screen startup states.

## Publishing Notes

The repository may be published only after excluding local investigation artifacts, especially `.tmp/`, `android-sdk/`, build outputs, screenshots, APKs, and any decompiled third-party or vendor files.

The project is currently unlicensed. Add a license before inviting reuse or contributions.

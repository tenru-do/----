# Publishing Checklist

Use this checklist before making the repository public on GitHub.

## Must Not Publish

- `.tmp/`
- `android-sdk/`
- `.gradle/`
- `build/`
- `app/build/`
- generated `.apk` or `.aab` files
- keystores or signing configs
- screenshots containing personal information
- vendor APKs or decompiled vendor files

## Checks

Run:

```powershell
git status --short
git check-ignore .tmp android-sdk app/build build .gradle
git ls-files
```

Confirm `git ls-files` contains only intended source/documentation files.

## Recommended Before Public Release

- Choose and add a license.
- Replace the sample package name `com.example.rokidzoomcamera` if publishing a real app.
- Confirm README describes the app as unofficial and firmware-dependent.
- Confirm no files from `.tmp/` are staged.
- Build once from a clean checkout.

## Legal/Compatibility Note

This app uses non-official Rokid-compatible behavior observed during device testing. It should be described as an unofficial prototype, not as a Rokid-supported SDK integration.

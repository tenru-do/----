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
- Rename the repository from a placeholder name to something discoverable, such as `rokid-zoom-camera`.
- Confirm README describes the app as unofficial and firmware-dependent.
- Confirm no files from `.tmp/` are staged.
- Build once from a clean checkout.

## Rename Repository

Recommended repository name:

```text
rokid-zoom-camera
```

GitHub web steps:

1. Open the repository on GitHub.
2. Go to `Settings`.
3. In `Repository name`, enter `rokid-zoom-camera`.
4. Click `Rename`.
5. Update any shared links after the rename.

GitHub usually redirects old repository URLs to the new name, but public posts should use the new URL once the rename is complete.

## Legal/Compatibility Note

This app uses non-official Rokid-compatible behavior observed during device testing. It should be described as an unofficial prototype, not as a Rokid-supported SDK integration.

# Auto Market Admin App

Android WebView app for Auto Market admin panel only.

## Build AAB from GitHub

1. Open the repository on GitHub.
2. Go to **Actions**.
3. Open **Build Android AAB**.
4. Press **Run workflow**.
5. After it finishes, open the completed run.
6. Download artifact: **AutoMarketAdmin-release-aab**.
7. Inside it you will find: `app-release.aab`.

## Current admin URL

`https://automarkt.free.nf/admin/login.php`

To change it, edit:

`app/src/main/java/com/automarket/admin/MainActivity.java`

Then change `ADMIN_URL`.

## Play Store notes

- Package name: `com.automarket.admin`
- Version code: `1`
- Target SDK: `35`
- The app is signed with the included upload key for quick first upload.
- Keep the keystore and passwords safe; future updates must use the same upload key unless changed in Play Console.

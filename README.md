This is a new [**React Native**](https://reactnative.dev) project, bootstrapped using [`@react-native-community/cli`](https://github.com/react-native-community/cli).

# Getting Started

> **Note**: Make sure you have completed the [React Native - Environment Setup](https://reactnative.dev/docs/environment-setup) instructions till "Creating a new application" step, before proceeding.

## Step 1: Start the Metro Server

First, you will need to start **Metro**, the JavaScript _bundler_ that ships _with_ React Native.

To start Metro, run the following command from the _root_ of your React Native project:

```bash
# using npm
npm start

# OR using Yarn
yarn start
```

## Step 2: Start your Application

Let Metro Bundler run in its _own_ terminal. Open a _new_ terminal from the _root_ of your React Native project. Run the following command to start your _Android_ or _iOS_ app:

### For Android

```bash
# using npm
npm run android

# OR using Yarn
yarn android
```

### For iOS

```bash
# using npm
npm run ios

# OR using Yarn
yarn ios
```

If everything is set up _correctly_, you should see your new app running in your _Android Emulator_ or _iOS Simulator_ shortly provided you have set up your emulator/simulator correctly.

This is one way to run your app — you can also run it directly from within Android Studio and Xcode respectively.

## Step 3: Modifying your App

Now that you have successfully run the app, let's modify it.

1. Open `App.tsx` in your text editor of choice and edit some lines.
2. For **Android**: Press the <kbd>R</kbd> key twice or select **"Reload"** from the **Developer Menu** (<kbd>Ctrl</kbd> + <kbd>M</kbd> (on Window and Linux) or <kbd>Cmd ⌘</kbd> + <kbd>M</kbd> (on macOS)) to see your changes!

   For **iOS**: Hit <kbd>Cmd ⌘</kbd> + <kbd>R</kbd> in your iOS Simulator to reload the app and see your changes!

## Congratulations! :tada:

You've successfully run and modified your React Native App. :partying_face:

### Now what?

- If you want to add this new React Native code to an existing application, check out the [Integration guide](https://reactnative.dev/docs/integration-with-existing-apps).
- If you're curious to learn more about React Native, check out the [Introduction to React Native](https://reactnative.dev/docs/getting-started).

# Troubleshooting

If you can't get this to work, see the [Troubleshooting](https://reactnative.dev/docs/troubleshooting) page.

# Learn More

To learn more about React Native, take a look at the following resources:

- [React Native Website](https://reactnative.dev) - learn more about React Native.
- [Getting Started](https://reactnative.dev/docs/environment-setup) - an **overview** of React Native and how setup your environment.
- [Learn the Basics](https://reactnative.dev/docs/getting-started) - a **guided tour** of the React Native **basics**.
- [Blog](https://reactnative.dev/blog) - read the latest official React Native **Blog** posts.
- [`@facebook/react-native`](https://github.com/facebook/react-native) - the Open Source; GitHub **repository** for React Native.

---

./gradlew signingReport
to get the signing info about all the variants of the app

keytool -list -v -keystore rn_cli_poc_release.keystore
to get more info about the keystore like key alias, validity, etc

```
keytool -genkey -v -keystore rn_cli_poc_release.keystore -alias rn_cli_poc-key -keyalg RSA -keysize 2048 -validity 10000
```

// --------------------------- after setting the keystore : ->
./gradlew signingReport

> Configure project :app
> Reading env from: .env

> Task :app:signingReport
> Variant: stagingDebug
> Config: debug
> Store: /Users/sumitdey/Desktop/personal-projects/rn_cli_poc/android/app/debug.keystore
> Alias: androiddebugkey
> MD5: 20:F4:61:48:B7:2D:8E:5E:5C:A2:3D:37:A4:F4:14:90
> SHA1: 5E:8F:16:06:2E:A3:CD:2C:4A:0D:54:78:76:BA:A6:F3:8C:AB:F6:25
> SHA-256: FA:C6:17:45:DC:09:03:78:6F:B9:ED:E6:2A:96:2B:39:9F:73:48:F0:BB:6F:89:9B:83:32:66:75:91:03:3B:9C

## Valid until: Wednesday, 1 May, 2052

Variant: productionDebug
Config: debug
Store: /Users/sumitdey/Desktop/personal-projects/rn_cli_poc/android/app/debug.keystore
Alias: androiddebugkey
MD5: 20:F4:61:48:B7:2D:8E:5E:5C:A2:3D:37:A4:F4:14:90
SHA1: 5E:8F:16:06:2E:A3:CD:2C:4A:0D:54:78:76:BA:A6:F3:8C:AB:F6:25
SHA-256: FA:C6:17:45:DC:09:03:78:6F:B9:ED:E6:2A:96:2B:39:9F:73:48:F0:BB:6F:89:9B:83:32:66:75:91:03:3B:9C
Valid until: Wednesday, 1 May, 2052

---

Variant: stagingRelease
Config: release
Store: /Users/sumitdey/Desktop/personal-projects/rn_cli_poc/android/app/rn_cli_poc_release.keystore
Alias: rn_cli_poc-key
MD5: 1F:56:BC:8A:6E:9A:9B:AB:6A:E7:7F:36:23:3C:21:0C
SHA1: 86:98:7A:20:82:FF:18:78:AB:E7:D4:D4:95:19:15:01:31:7B:47:A3
SHA-256: 4A:B3:F9:3F:03:73:E0:F4:C5:B6:8E:65:D8:D2:BC:6A:E3:E9:7F:BE:E6:33:27:19:C3:5E:7F:2F:4A:79:CB:E6
Valid until: Friday, 18 November, 2050

---

Variant: productionRelease
Config: release
Store: /Users/sumitdey/Desktop/personal-projects/rn_cli_poc/android/app/rn_cli_poc_release.keystore
Alias: rn_cli_poc-key
MD5: 1F:56:BC:8A:6E:9A:9B:AB:6A:E7:7F:36:23:3C:21:0C
SHA1: 86:98:7A:20:82:FF:18:78:AB:E7:D4:D4:95:19:15:01:31:7B:47:A3
SHA-256: 4A:B3:F9:3F:03:73:E0:F4:C5:B6:8E:65:D8:D2:BC:6A:E3:E9:7F:BE:E6:33:27:19:C3:5E:7F:2F:4A:79:CB:E6
Valid until: Friday, 18 November, 2050

---

Variant: stagingDebugAndroidTest
Config: debug
Store: /Users/sumitdey/Desktop/personal-projects/rn_cli_poc/android/app/debug.keystore
Alias: androiddebugkey
MD5: 20:F4:61:48:B7:2D:8E:5E:5C:A2:3D:37:A4:F4:14:90
SHA1: 5E:8F:16:06:2E:A3:CD:2C:4A:0D:54:78:76:BA:A6:F3:8C:AB:F6:25
SHA-256: FA:C6:17:45:DC:09:03:78:6F:B9:ED:E6:2A:96:2B:39:9F:73:48:F0:BB:6F:89:9B:83:32:66:75:91:03:3B:9C
Valid until: Wednesday, 1 May, 2052

---

Variant: productionDebugAndroidTest
Config: debug
Store: /Users/sumitdey/Desktop/personal-projects/rn_cli_poc/android/app/debug.keystore
Alias: androiddebugkey
MD5: 20:F4:61:48:B7:2D:8E:5E:5C:A2:3D:37:A4:F4:14:90
SHA1: 5E:8F:16:06:2E:A3:CD:2C:4A:0D:54:78:76:BA:A6:F3:8C:AB:F6:25
SHA-256: FA:C6:17:45:DC:09:03:78:6F:B9:ED:E6:2A:96:2B:39:9F:73:48:F0:BB:6F:89:9B:83:32:66:75:91:03:3B:9C
Valid until: Wednesday, 1 May, 2052

---

> Task :react-native-camera:signingReport
> Variant: generalDebugAndroidTest
> Config: debug
> Store: /Users/sumitdey/.android/debug.keystore
> Alias: AndroidDebugKey

## Error: Missing keystore

Variant: mlkitDebugAndroidTest
Config: debug
Store: /Users/sumitdey/.android/debug.keystore
Alias: AndroidDebugKey
Error: Missing keystore

---

> Task :react-native-config:signingReport
> Variant: debugAndroidTest
> Config: debug
> Store: /Users/sumitdey/.android/debug.keystore
> Alias: AndroidDebugKey
> Error: Missing keystore

// -------------------------------------

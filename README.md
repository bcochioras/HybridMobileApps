# Hybrid Mobile App Development

## Why
Pros:
- it costs half than native development
- multi-platform deployment with one code base
- updates without going through AppStore/GooglePlay approval process

Cons:
- harder to maintain on operating system upgrades
- dependent on community support

## Comparison

<table style="height: 1153px;" width="708">
<thead>
<tr>
<th>Aspect</th>
<th>React Native</th>
<th>Xamarin</th>
<th>Ionic</th>
<th>Flutter</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Development Language</strong></td>
<td>JavaScript and React</td>
<td>C# and .NET</td>
<td>HTML, CSS, JavaScript</td>
<td>Dart</td>
</tr>
<tr>
<td><strong>Platform Targeting</strong></td>
<td>Android, iOS, Web</td>
<td>Android, iOS, macOS, TV, watchOS</td>
<td>Android, iOS, Web, PWA</td>
<td>Android, iOS, Web, Fuchsia, Embedded, MacOS, Unix</td>
</tr>
<tr>
<td><strong>Code Reusability</strong></td>
<td>High</td>
<td>High</td>
<td>High</td>
<td>Very High</td>
</tr>
<tr>
<td><strong>Performance</strong></td>
<td>Near-native</td>
<td>Near-native</td>
<td>Web-based (can be slower)</td>
<td>Near-native</td>
</tr>
<tr>
<td><strong>Community &amp; Ecosystem</strong></td>
<td>Large and Active</td>
<td>Moderate</td>
<td>Moderate</td>
<td>Growing</td>
</tr>
<tr>
<td><strong>Learning Curve</strong></td>
<td>Moderate</td>
<td>Moderate</td>
<td>Low</td>
<td>Moderate</td>
</tr>
<tr>
<td><strong>UI Components</strong></td>
<td>Native-like</td>
<td>Native</td>
<td>Web-based</td>
<td>Customizable Widgets</td>
</tr>
<tr>
<td><strong>Development Speed</strong></td>
<td>Fast</td>
<td>Moderate</td>
<td>Fast</td>
<td>Very Fast</td>
</tr>
<tr>
<td><strong>Hot Reload</strong></td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
</tr>
<tr>
<td><strong>Integration with Native Code</strong></td>
<td>Yes</td>
<td>Yes</td>
<td>Limited</td>
<td>Yes</td>
</tr>
<tr>
<td><strong>Native Modules</strong></td>
<td>Available</td>
<td>Available</td>
<td>Limited</td>
<td>Available</td>
</tr>
<tr>
<td><strong>IDE Support</strong></td>
<td>Any text editor, VS Code</td>
<td>Visual Studio, VS Code, Xamarin Studio</td>
<td>Any text editor, VS Code</td>
<td>Android Studio, VS Code, IntelliJ IDEA</td>
</tr>
<tr>
<td><strong>Licensing</strong></td>
<td>Open source (MIT)</td>
<td>Proprietary (Commercial)</td>
<td>Open source (MIT)</td>
<td>Open source (BSD-style)</td>
</tr>
<tr>
<td><strong>Community Support</strong></td>
<td>Facebook</td>
<td>Microsoft</td>
<td>Community</td>
<td>Google</td>
</tr>
<tr>
<td><strong>Popular Apps Built with it</strong></td>
<td>Facebook, Instagram, Airbnb</td>
<td>Xamarin.Forms, UPS, Alaska Airlines</td>
<td>Pacifica, Diesel, Sworkit</td>
<td>Google Ads, Alibaba, Reflectly</td>
</tr>
<tr>
<td><strong>Development Environment</strong></td>
<td>React Native CLI, Expo (optional)</td>
<td>Visual Studio, Visual Studio for Mac</td>
<td>Ionic CLI, Capacitor</td>
<td>Flutter CLI</td>
</tr>
<tr>
<td><strong>State Management</strong></td>
<td>Redux, MobX, Context API</td>
<td>MVVM, Prism, Xamarin.Forms</td>
<td>Angular services, RxJS</td>
<td>Provider, Bloc, MobX, Redux</td>
</tr>
<tr>
<td><strong>UI Theming and Styling</strong></td>
<td>Stylesheets (CSS-in-JS), Styled Components</td>
<td>XAML, Stylesheets, Native UI Components</td>
<td>Stylesheets (CSS), Ionic CSS utilities</td>
<td>Customizable Widgets, ThemeData</td>
</tr>
<tr>
<td><strong>Community Packages</strong></td>
<td>NPM (React Native libraries)</td>
<td>NuGet (Xamarin packages)</td>
<td>NPM (Ionic libraries)</td>
<td>Pub (Flutter packages)</td>
</tr>
<tr>
<td><strong>Testing Frameworks</strong></td>
<td>Jest, Detox, Appium</td>
<td>Xamarin.UITest, Appium, Calabash</td>
<td>Jasmine, Karma, Protractor</td>
<td>Widget testing, Integration testing</td>
</tr>
<tr>
<td><strong>Popularity Trends (GitHub Stars)</strong></td>
<td>~114k</td>
<td>~18k</td>
<td>~50k</td>
<td>~160k</td>
</tr>
<tr>
<td><strong>Maturity Level</strong></td>
<td>Mature</td>
<td>Mature</td>
<td>Established</td>
<td>Rapidly Evolving</td>
</tr>
</tbody>
</table>

# React Native
## Prerequirements: 
- Visual Studio Code + React Native Plugin  React Native setup
- brew install node -> installs node, compiler for javascript to work on backend
- brew install watchman -> installs watchman, package that checks for file changes for recompiling
- npx react-native@latest init ReactNativeProject -> creates a new project with latest react native version

## Running the project: 
- npm start -> starts the React Native project, needs to be run in the project folder  
- Run instructions for iOS:
  - cd "/Users/username/Projects/ReactNativeProject/ios"
  - Install Cocoapods
    - bundle install # you need to run this only once in your project.
    - bundle exec pod install
    - cd ..
    - npx react-native run-ios

# Flutter 
## Prerequirements: 
- Visual Studio Code + Flutter plugin 
- install fluter SDK through Visual Studio Code: https://docs.flutter.dev/get-started/install/macos/mobile-ios  
## Debugging (In Visual studio code): 
- widget inspector -> View layout sizings and layers 
- CMD + SHIFT + P -> Select device to run

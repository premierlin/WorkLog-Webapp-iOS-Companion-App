# WorkLog-Webapp-iOS-Companion-App
J1 H2 CP Project, Webapp for the school. The webapp is built with flask and the iOS companion app is built with Apple's new declarative language, SwiftUI. 

<h3>Flask Homework Logger</h3>
Flask app that runs off python with templates running with HTML and CSS. Clean and simple website for navigation sake. Can be used on PythonAnywhere as well as Replit. 

<h3>Homework Folder</h3>
iOS app meant for receiving data from JSON file, companion app to Flask Webapp. <b>Installation to iOS device is currently close to impossible for non-programmers.</b> Installation instructions as follows (will require macbook or virtual machine running macOS Catalina). 

<h3>Installation Instructions for iPhone users</h3>
  1. Install latest <a href="https://apps.apple.com/sg/app/xcode/id497799835?mt=12">Xcode</a> version. 
    <img src="https://i.imgur.com/5jG0jOF.png"/>
  2. Download folder from Github and open the Xcode project.
  3. Change details of signing capabilities accordingly (email and apple ID).
    <img src="https://i.imgur.com/1heXqTL.png"/>
  4. Be sure to sign into your personal Apple ID and select a team. Make sure to change all the bundle identifiers from 'donchia' to your own apple ID name. 
  5. Connect phone and install using play button at the top left hand corner. 
  6. The app should be installed onto your phone. Unlock your iPhone and head to Settings -> General -> Profiles & Device Management. You should see a section called 'Developers App', enter it and there should be a button to trust the app, press it. 
    <img src="https://i.imgur.com/0ySAkHo.jpg"/>
  7. That's it! The app should work now. 
  
The app will only run on iOS devices with iOS 13 and above as it is written in SwiftUI which only supports newer devices. 

There is currently no IPA file for the app. Plans for Android app coming soon. 

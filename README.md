# Family Charades: Christmas 2019! ❄️🎄☃️

<img src="https://github.com/wrenliang/Charades-Xmas-2019/blob/master/readme%20Assets/Home-Screen.PNG" alt="Home Screen Picture" width="300"> <img src="https://github.com/wrenliang/Charades-Xmas-2019/blob/master/readme%20Assets/Demo-Gif.GIF" alt="Demo GIF" width="300">

## About
This is a fun project I worked on over winter break for our annual Christmas party. Charades is a bilingual app to simplify the preparation process for setting up a classic Charades game. Instead of handwriting cards or buying a Charades deck, simply put your desired words (and any translations) into the app's Words data structure, and easily make your own customizable Charades games!

## App Architecture
- Charades was built using the Model-View-Controller design pattern without the use of any Storyboards.
- All the UIViews were programmed using a constraints-based approach to allow for maximum UI customization. 
- Because Charades was developed natively in Swift, the app supports full Screen reader functionality.

*Note*: The Root ViewController of the app is a TabBarController in order to support the addition of multiple tabs easily if needed. (For now it is hidden because we only have one tab)

## Get Started!

### Installation
1) Clone this GitHub repository
2) Open the .xcodeproj file using Xcode
3) Select iPhone version in the upper left drop-down menu 

*Note*: This app is currently optimized for iPhone 11 / iPhone XR view size

4) Click the Play button

### Adding new words
1) Open the "WordData.swift" file under the "Models" group
2) Make any desired additions to the "Word Arrays"
3) *Important*: Make sure any additions in one language array have a corresponding entry in the other array at the same index. The application logic treats the two arrays as an atomic structure.

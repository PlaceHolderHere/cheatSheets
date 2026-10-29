# fluttercheatsheet

A new addition to the cheatsheet collection for flutter basics. Important commands/notes will be listed in this readme as well as resources I use such as youtube videos and/or documentation.

# Resources
* Youtube, by John Elder: https://www.youtube.com/watch?v=VFDbZk2xhO4&list=PLCC34OHNcOtpx9qCZNv-NbIT1Gx3BAOku
* Built in Material IO Colors: https://m1.material.io/style/color.html

# Terminal Commands
1. flutter create [app_name]
2. flutter doctor - Checks if dependancies (e.g. Android SDK) are installed
3. flutter devices - list available device to run the flutter app on
4. flutter run - starts up the app and prompts you to choose a device 
    4.1. flutter run -d [device] - runs flutter with a specific device
5. flutter emulators - lists available device emulators
    5.1. flutter emulators --launch [emulator_id] - runs the flutter app on the emulator

# Notes
1. runApp() - starts the app
2. MaterialApp() - sample name for your app, can be named anything
3. Scaffold() - The scaffold class implements a basic visual layout structure foor materia components
4. Adding local images
    - To add local images:
    4.1. Add it to the local directory (in this case I have it in an images folder)
    4.2. Go to pubspec.yaml > assets
    4.3. Uncomment assets, and list the relative path to your image (indentation is important)
    4.4. use the AssetImage() attribute of the Image() class
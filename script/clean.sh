
flutter clean; 

rm pubspec.lock

cd ios; 

pod deintegrate;

pod install;

cd ..;



flutter pub get;
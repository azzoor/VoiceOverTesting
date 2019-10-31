# VoiceOverTesting

Tested using the following
* Xcode 11.1
* iOS 13.1.3

Steps to reproduce
1. Run app on device.
2. Turn VoiceOver on (can be on before running app).
3. Try and select the button labelled "Test Button".
All other buttons are selectable.

Note. When first loading the app the "Test Button" is able to be selected but then loses focus and is moved back to one of the labels on the view controller. It's almost like something is being reloaded after 1 or 2 seconds and focus is shifted.

# CamBubble

A tiny, free macOS app that floats a circular webcam bubble on your screen. No menubar, no chrome — just your face in a draggable circle, always on top.



https://github.com/user-attachments/assets/d1cbd541-39d9-43b7-ab3a-73a239a75d6a



## Why

You want to record a demo or walkthrough with QuickTime (or any screen recorder) and show your face too — but you don't want to buy software. Open CamBubble, start your screen recording, done.

## Use cases

- Screen recordings with a face cam overlay
- QuickTime demo videos with a personal touch
- Loom-style recordings without Loom
- Livestreaming setups where you need a floating camera preview
- Video calls where you want to see how you look on a second display

## Install

```bash
git clone https://github.com/backnotprop/CamBubble.git
cd CamBubble
xcodebuild -scheme CamBubble -configuration Release build
cp -r ~/Library/Developer/Xcode/DerivedData/CamBubble-*/Build/Products/Release/CamBubble.app /Applications/
```

Or open `CamBubble.xcodeproj` in Xcode, build (Cmd+B), then drag `CamBubble.app` from Products into `/Applications`.

Launch it, grant camera access when prompted, and drag the bubble wherever you want. Start your QuickTime screen recording and your face gets captured along with everything else.

To quit, **right-click the bubble** and select "Quit CamBubble" (or Cmd+Q).

## Requirements

- macOS 13+
- Xcode 15+
- A camera

## License

MIT

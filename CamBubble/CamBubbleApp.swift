import SwiftUI

@main
struct CamBubbleApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings { EmptyView() }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        let size: CGFloat = 200

        let contentView = NSHostingView(rootView: CameraView())
        contentView.frame = NSRect(x: 0, y: 0, width: size, height: size)

        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: size, height: size),
            styleMask: [.borderless, .fullSizeContentView],
            backing: .buffered,
            defer: false
        )
        window.isOpaque = false
        window.backgroundColor = .clear
        window.hasShadow = true
        window.level = .floating
        window.isMovableByWindowBackground = true
        window.contentView = contentView
        window.center()
        window.makeKeyAndOrderFront(nil)
    }
}

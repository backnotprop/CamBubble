import SwiftUI
import AVFoundation

struct CameraView: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let container = NSView(frame: NSRect(x: 0, y: 0, width: 200, height: 200))
        container.wantsLayer = true

        let session = AVCaptureSession()
        session.sessionPreset = .high

        guard let camera = AVCaptureDevice.default(for: .video),
              let input = try? AVCaptureDeviceInput(device: camera) else {
            return container
        }
        session.addInput(input)

        // Disable Center Stage so the camera uses its full wide field of view
        if #available(macOS 12.3, *) {
            AVCaptureDevice.centerStageControlMode = .app
            AVCaptureDevice.isCenterStageEnabled = false
        }

        let preview = AVCaptureVideoPreviewLayer(session: session)
        preview.videoGravity = .resizeAspectFill
        preview.frame = NSRect(x: 0, y: 0, width: 200, height: 200)
        preview.cornerRadius = 100
        preview.masksToBounds = true
        container.layer?.addSublayer(preview)

        preview.connection?.automaticallyAdjustsVideoMirroring = false
        preview.connection?.isVideoMirrored = true

        session.startRunning()
        return container
    }

    func updateNSView(_ nsView: NSView, context: Context) {}
}

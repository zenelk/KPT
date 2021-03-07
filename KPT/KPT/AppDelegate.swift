import Cocoa
import KPTDomain

class AppDelegate: NSObject, NSApplicationDelegate {
    private var mainWindow: NSWindow?

    func applicationDidFinishLaunching(_ notification: Notification) {
        mainWindow = makeMainWindow()
        mainWindow?.contentViewController = makeRootViewController()
    }

    private func makeMainWindow() -> NSWindow {
        let screenSize = NSScreen.main?.frame.size ?? .zero
        let windowSize = NSSize(width: screenSize.width / 2, height: screenSize.height / 2)
        let rect = NSRect(
            x: screenSize.width / 2 - windowSize.width / 2,
            y: screenSize.height / 2 - windowSize.height / 2,
            width: windowSize.width,
            height: windowSize.height)
        let mainWindow = NSWindow(
            contentRect: rect,
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered,
            defer: false)
        mainWindow.makeKeyAndOrderFront(nil)
        return mainWindow
    }

    private func makeRootViewController() -> NSViewController {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard
            let vc = storyboard.instantiateInitialController() as? RootViewController
        else {
            fatalError("Root view controller was not the expected type!")
        }
        vc.tracker = KanjiPracticeTracker()
        return vc
    }
}

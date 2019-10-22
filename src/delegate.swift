import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var newWindow: NSWindow?
    var controller: ViewController?

    override init() {
        print("App")
        super.init()
        mainView()
    }

    func mainView() {
        print("View")
        newWindow   = NSWindow(contentRect: NSMakeRect(10, 10, 200, 200), styleMask: [.titled, .resizable, .closable], backing: .buffered, defer: false)
        let content = newWindow!.contentView! as NSView
        controller  = ViewController()
        let view = controller!.view
        content.addSubview(view)
        newWindow!.makeKeyAndOrderFront(nil)
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        print("Launch")  // Not showing this?
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        print("Bye")
        return true
    }
}

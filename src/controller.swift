import Cocoa

class ViewController : NSViewController {
    var name = "Main"
    var button: NSButton?

    @IBAction func onClick(_: Any) {
	NSSound.beep()
        print("Click")
    }

    override func loadView() {
        print("Load")
        let view = NSView(frame: NSMakeRect(0,0,200,200))
        view.wantsLayer = true
        view.layer?.borderWidth = 2
        view.layer?.borderColor = NSColor.red.cgColor
        button = NSButton(frame: NSMakeRect(20, 20, 100, 32))
        button?.title = "Click Me"
        button?.target = self
        button?.action = #selector(onClick)
        view.addSubview(button!)
        self.view = view
    }
}

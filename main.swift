import Cocoa

print("Init")
let app = NSApplication.shared
let delegate = AppDelegate()  // alloc main app's delegate class
app.delegate = delegate      // set as app's delegate
app.run()
print("End")

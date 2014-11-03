Sample app demonstrating incorrect persistence of view controllers for
UISplitViewController's primary overlay display mode when calling
-setViewControllers: after making the main window key and visible. To repro:

1. Launch in portrait on an iPad
2. Swipe in from left to reveal the primary view controller

**Expected:** the revealed controller is blue

**Actual:** the revealed controller is red

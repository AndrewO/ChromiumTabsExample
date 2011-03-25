#
#  AppDelegate.rb
#  ChromiumTabsExample
#
#  Created by Andrew O'Brien on 3/24/11.
#  Copyright 2011 Econify. All rights reserved.
#
framework "ChromiumTabs"

class MyAppDelegate
  attr_accessor :window
  def applicationDidFinishLaunching(a_notification)
    windowController = CTBrowserWindowController.alloc.initWithBrowser(MyBrowser.browser)
    windowController.browser.addBlankTabInForeground(true)
    windowController.showWindow(self)
  end
  
  def commandDispatch(sender)
    NSLog("commandDispatch %d", sender.tag) # Always a fairly large number that doesn't look like the tag in the NIB
    #    MyBrowser.executeCommand(sender.tag)
    MyBrowser.executeCommand(34000) # Should open a new window
  end
end


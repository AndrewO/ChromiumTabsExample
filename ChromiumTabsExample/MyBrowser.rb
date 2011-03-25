#
#  MyBrowser.rb
#  ChromiumTabsExample
#
#  Created by Andrew O'Brien on 3/24/11.
#  Copyright 2011 Econify. All rights reserved.
#

framework "ChromiumTabs"

class MyBrowser < CTBrowser
  def createBlankTabBasedOn(baseContents)
    NSLog("Creating new tab based on %@", baseContents)
    MyTabContents.alloc.initWithBaseTabContents(baseContents)
  end
end


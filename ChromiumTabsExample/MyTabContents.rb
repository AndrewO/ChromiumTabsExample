#
#  MyTabContents.rb
#  ChromiumTabsExample
#
#  Created by Andrew O'Brien on 3/24/11.
#  Copyright 2011 Econify. All rights reserved.
#

framework "ChromiumTabs"

class MyTabContents < CTTabContents
  def initWithBaseTabContents(baseContents)
    return nil if !super
    
    tv = NSTextView.alloc.initWithFrame(NSZeroRect)
    tv.setFont(NSFont.userFixedPitchFontOfSize(13.0))
    tv.setAutoresizingMask(NSViewMaxYMargin|
                           NSViewMinXMargin|
                           NSViewWidthSizable|
                           NSViewMaxXMargin|
                           NSViewHeightSizable|
                           NSViewMinYMargin)
    
    sv = NSScrollView.alloc.initWithFrame(NSZeroRect)
    sv.setDocumentView(tv)
    sv.setHasVerticalScroller(true)

    self.view = sv

    self
  end
  
  def viewFrameDidChange(newFrame)
    super
    
    clipView = view_.subviews[0]
    tv = clipView.subviews[0]
    frame = NSZeroRect
    frame.size = view_.contentSize
    tv.setFrame(frame)
  end
end

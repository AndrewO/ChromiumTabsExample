//
//  main.m
//  ChromiumTabsExample
//
//  Created by Andrew O'Brien on 3/24/11.
//  Copyright 2011 Econify. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}

#include <trisomy/gui/gui.h>

#ifdef TRISOMY_OSX

#include <Cocoa/Cocoa.h>

@interface TrisomyOSXWindow : NSWindow

- (id)initWithContentRect:(NSRect)contentRect
                styleMask:(NSUInteger)windowStyle;

@end

@implementation TrisomyOSXWindow

- (id)initWithContentRect:(NSRect)contentRect
                styleMask:(NSUInteger)windowStyle
{
    self = [super initWithContentRect:contentRect
                            styleMask:windowStyle
                              backing:NSBackingStoreBuffered
                                defer:NO];

    
    return self;
}

@end


TRISOMY_API int trisomy_create_window(trisomy_window_t * window)
{
//    NSRect frame = NSMakeRect(0,0,500,500);
//    
 
    NSUInteger styleMask = NSTitledWindowMask | NSMiniaturizableWindowMask |NSClosableWindowMask|NSResizableWindowMask ;
//

    
    NSWindow* nswindow = [[NSWindow alloc]
                        initWithContentRect: NSMakeRect(0, 0, 640, 480)
                        styleMask: styleMask
                        backing: NSBackingStoreBuffered
                        defer: NO];
    
    *window = (trisomy_window_t)nswindow;
    
    [nswindow setLevel: NSStatusWindowLevel];
    [nswindow center];

//
//    [nswindow setLevel:2];

    
    [nswindow makeKeyAndOrderFront:nil];
    
    return 0;
}

TRISOMY_API void trisomy_close_window(trisomy_window_t * window)
{
    NSWindow * nswindow = (NSWindow*)window;
    [nswindow release];
}

#endif //TRISOMY_OSX
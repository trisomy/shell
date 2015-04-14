#include <trisomy/gui/gui.h>

#ifdef TRISOMY_OSX

#include <Cocoa/Cocoa.h>


TRISOMY_API int trisomy_create_app(trisomy_app_t * app)
{
    [NSApplication sharedApplication];
    
    [NSApp finishLaunching];

    return 0;
}

TRISOMY_API void trisomy_close_app(trisomy_app_t app)
{
    // NSApplication * nsapp = (NSApplication*)app;
    //
    // [nsapp release];
}

TRISOMY_API void trisomy_app_run(trisomy_app_t app)
{
//    [NSApp activateIgnoringOtherApps:YES];
    [NSApp run];
}

#endif

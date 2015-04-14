#ifndef TRISOMY_GUI_WINDOW_H
#define TRISOMY_GUI_WINDOW_H

#include <trisomy/trisomy.h>

TRISOMY_HANDLE(trisomy_app_t);
TRISOMY_HANDLE(trisomy_window_t);

TRISOMY_API int trisomy_create_app(trisomy_app_t * app);
TRISOMY_API void trisomy_close_app(trisomy_app_t app);
TRISOMY_API void trisomy_app_run(trisomy_app_t app);

TRISOMY_API int trisomy_create_window(trisomy_window_t * window);
TRISOMY_API void trisomy_close_window(trisomy_window_t * window);

#endif //TRISOMY_GUI_WINDOW_H
#include <lemoonxx/unittest.hpp>
#include <trisomy/gui/gui.h>

namespace trisomy { namespace test{
    class window_test{};
    
    LEMON_UNITTEST_CASE(window_test,create_test)
    {
        trisomy_app_t app;
        
        trisomy_create_app(&app);
        
        trisomy_window_t window;
        trisomy_create_window(&window);
        
        trisomy_app_run(app);
    }
}}
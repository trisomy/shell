#ifndef TRISOMY_HANDLE_H
#define TRISOMY_HANDLE_H

#include <trisomy/configure.h>

#define TRISOMY_HANDLE(name) typedef struct __##name_handle* name;
#define TRISOMY_HANDLE_IMPL(name) struct __##name_handle

#define TRISOMY_SUCCESS 0


#endif //TRISOMY_HANDLE_H
%module tox


%{
#ifdef __cplusplus
extern "C" {
#endif

#include "toxcore/Messenger.h"
  
#ifdef __cplusplus
}

#endif

%}


/* Parse the header file to generate wrappers */
%include "../libtoxcore-0.001/toxcore/Messenger.h"

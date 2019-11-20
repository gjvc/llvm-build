
#
# -----------------------------------------------------------------------------------------------------------------------------------------
# .//etc/base.cmake
# -----------------------------------------------------------------------------------------------------------------------------------------
#


###########################################################################################################################################
include_guard( GLOBAL )


####  ####################################################  #########################################################  #####  ######  ##  #
set(  CMAKE_ASM_COMPILER_TARGET                             ${TARGET_TRIPLE}                                           CACHE  STRING  ""  )
set(  CMAKE_BUILD_TYPE                                      Release                                                    CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_LAUNCHER                           ${CCACHE_BINARY}                                           CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_TARGET                             ${TARGET_TRIPLE}                                           CACHE  STRING  ""  )
set(  CMAKE_CXX_STANDARD                                    11                                                         CACHE  STRING  ""  )
set(  CMAKE_CXX_STANDARD_REQUIRED                           YES                                                        CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_LAUNCHER                             ${CCACHE_BINARY}                                           CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_TARGET                               ${TARGET_TRIPLE}                                           CACHE  STRING  ""  )

set(  CMAKE_EXPORT_COMPILE_COMMANDS                          YES                                                       CACHE  BOOL    ""  )
set(  CMAKE_POSITION_INDEPENDENT_CODE                        YES                                                       CACHE  BOOL    ""  )
set(  CMAKE_SHARED_LINKER_FLAGS                              "${CMAKE_SHARED_LINKER_FLAGS} -ldl -lpthread"             CACHE  STRING  ""  FORCE )
set(  CMAKE_VERBOSE_MAKEFILE                                 YES                                                       CACHE  BOOL    ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  GCC_INSTALL_PREFIX                                    /dev/null                                                  CACHE  STRING  ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  LLVM_ENABLE_LIBCXX                                    YES                                                        CACHE  BOOL    ""  )
set(  LLVM_ENABLE_PROJECTS                                  "compiler-rt;libunwind;libcxxabi;libcxx;llvm;clang;lld"    CACHE  STRING  ""  )
set(  LLVM_STATIC_LINK_CXX_STDLIB                           YES                                                        CACHE  BOOL    ""  )
set(  LLVM_TARGETS_TO_BUILD                                 X86                                                        CACHE  STRING  ""  )
set(  LLVM_INCLUDE_GO_TESTS                                 NO                                                         CACHE  BOOL    ""  )
set(  LLVM_INCLUDE_TESTS                                    NO                                                         CACHE  BOOL    ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  CLANG_DEFAULT_CXX_STDLIB                              libc++                                                     CACHE  STRING  ""  )
set(  CLANG_DEFAULT_LINKER                                  lld                                                        CACHE  STRING  ""  )
set(  CLANG_DEFAULT_RTLIB                                   compiler-rt                                                CACHE  STRING  ""  )
set(  CLANG_DEFAULT_UNWINDLIB                               libunwind                                                  CACHE  STRING  ""  )
set(  LIBCLANG_BUILD_STATIC                                 YES                                                        CACHE  BOOL    ""  )
set(  CLANG_INCLUDE_TESTS                                   NO                                                         CACHE  BOOL    ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  LIBUNWIND_ENABLE_ASSERTIONS                           NO                                                         CACHE  BOOL    ""  )
set(  LIBUNWIND_ENABLE_SHARED                               NO                                                         CACHE  BOOL    ""  )
set(  LIBUNWIND_USE_COMPILER_RT                             YES                                                        CACHE  BOOL    ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  COMPILER_RT_BUILD_CRT                                 YES                                                        CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_LIBFUZZER                           NO                                                         CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_PROFILE                             YES                                                        CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_SANITIZERS                          NO                                                         CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_XRAY                                NO                                                         CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILTINS_STANDALONE_BUILD                 NO                                                         CACHE  BOOL    ""  )
set(  COMPILER_RT_EXCLUDE_ATOMIC_BUILTIN                    NO                                                         CACHE  BOOL    ""  )
set(  COMPILER_RT_USE_BUILTINS_LIBRARY                      YES                                                        CACHE  BOOL    ""  )
set(  COMPILER_RT_CAN_EXECUTE_TESTS                         NO                                                         CACHE  BOOL    ""  )
set(  COMPILER_RT_INCLUDE_TESTS                             NO                                                         CACHE  BOOL    ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  LIBCXXABI_ENABLE_ASSERTIONS                           NO                                                         CACHE  BOOL    ""  )
set(  LIBCXXABI_ENABLE_SHARED                               NO                                                         CACHE  BOOL    ""  )
set(  LIBCXXABI_ENABLE_STATIC                               YES                                                        CACHE  BOOL    ""  )
set(  LIBCXXABI_ENABLE_STATIC_UNWINDER                      YES                                                        CACHE  BOOL    ""  )
set(  LIBCXXABI_STATICALLY_LINK_UNWINDER_IN_SHARED_LIBRARY  YES                                                        CACHE  BOOL    ""  )
set(  LIBCXXABI_USE_COMPILER_RT                             YES                                                        CACHE  BOOL    ""  )
set(  LIBCXXABI_USE_LLVM_UNWINDER                           YES                                                        CACHE  BOOL    ""  )
set(  LIBCXXABI_INCLUDE_TESTS                               NO                                                         CACHE  BOOL    ""  )

####  ####################################################  #########################################################  #####  ######  ##  #
set(  LIBCXX_CXX_ABI_INCLUDE_PATHS                          ${SRC_PATH}/libcxxabi/include                              CACHE  STRING  ""  )
set(  LIBCXX_ENABLE_ASSERTIONS                              NO                                                         CACHE  BOOL    ""  )
set(  LIBCXX_ENABLE_SHARED                                  YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_ENABLE_STATIC                                  YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_ENABLE_STATIC_ABI_LIBRARY                      YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_HAS_GCC_S_LIB                                  NO                                                         CACHE  BOOL    ""  )
set(  LIBCXX_INCLUDE_BENCHMARK                              NO                                                         CACHE  BOOL    ""  )
set(  LIBCXX_INSTALL_HEADERS                                YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_STATICALLY_LINK_ABI_IN_SHARED_LIBRARY          YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_STATICALLY_LINK_ABI_IN_STATIC_LIBRARY          YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_USE_COMPILER_RT                                YES                                                        CACHE  BOOL    ""  )
set(  LIBCXX_INCLUDE_TESTS                                  NO                                                         CACHE  BOOL    ""  )



#
#  ------------------------------------------------------------------------------------------------------------------------
#  >>> .//src/cmake/llvm-9.0.1-clang-bootstrap/stage1.cmake
# ------------------------------------------------------------------------------------------------------------------------
#


############################################################################################################################################
link_directories( ${GCC_ROOT}/lib/gcc/${GCC_DUMPMACHINE}/${GCC_VERSION}/ )

set(  CMAKE_BUILD_RPATH_USE_ORIGIN                    YES CACHE  BOOL    ""  )
set(  CMAKE_BUILD_WITH_INSTALL_RPATH                  YES CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  CMAKE_ASM_COMPILER_TARGET                       ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  CMAKE_BUILD_TYPE                                Release                                                           CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER                                ${GCC_ROOT}/bin/gcc                                               CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_LAUNCHER                       ${CCACHE_BINARY}                                                  CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_TARGET                         ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${GCC_ROOT}/bin/g++                                               CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_LAUNCHER                     ${CCACHE_BINARY}                                                  CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_TARGET                       ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE1_TARGET_DIR}                                              CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -Wl,-rpath,'$$ORIGIN/../lib/'"         CACHE  STRING  ""  )
set(  CMAKE_POSITION_INDEPENDENT_CODE                 YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  TARGET_TRIPLE                                         ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  BUILD_SHARED_LIBS                                     YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  LLD_BUILD_TOOLS                                       YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  COMPILER_RT_BUILD_BUILTINS                            YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_CRT                                 YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_LIBFUZZER                           NO                                                                CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_PROFILE                             YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_SANITIZERS                          NO                                                                CACHE  BOOL    ""  )
set(  COMPILER_RT_DEFAULT_TARGET_ONLY                       YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_USE_BUILTINS_LIBRARY                      YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_USE_LIBCXX                                YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  LIBUNWIND_ENABLE_ASSERTIONS                           NO                                                                CACHE  BOOL    ""  )
set(  LIBUNWIND_ENABLE_SHARED                               YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_ENABLE_STATIC                               YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_HERMETIC_STATIC_LIBRARY                     NO                                                                CACHE  BOOL    ""  )
set(  LIBUNWIND_INSTALL_LIBRARY                             YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_USE_COMPILER_RT                             YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  LIBCXXABI_ENABLE_ASSERTIONS                           NO                                                                CACHE  BOOL    ""  )
set(  LIBCXXABI_ENABLE_SHARED                               YES                                                               CACHE  BOOL    ""  )
set(  LIBCXXABI_ENABLE_STATIC_UNWINDER                      NO                                                                CACHE  BOOL    ""  )
set(  LIBCXXABI_ENABLE_STATIC                               YES                                                               CACHE  BOOL    ""  )
set(  LIBCXXABI_INSTALL_LIBRARY                             YES                                                               CACHE  BOOL    ""  )
set(  LIBCXXABI_USE_COMPILER_RT                             NO                                                                CACHE  BOOL    ""  )
set(  LIBCXXABI_USE_LLVM_UNWINDER                           YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  LIBCXX_CXX_ABI_INCLUDE_PATHS                          ${SRC_PATH}/libcxxabi/include                                     CACHE  STRING  ""  )
set(  LIBCXX_ENABLE_ASSERTIONS                              NO                                                                CACHE  BOOL    ""  )
set(  LIBCXX_ENABLE_SHARED                                  YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_ENABLE_STATIC                                  YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_HAS_GCC_S_LIB                                  NO                                                                CACHE  BOOL    ""  )
set(  LIBCXX_INSTALL_HEADERS                                YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_STATICALLY_LINK_ABI_IN_SHARED_LIBRARY          YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_STATICALLY_LINK_ABI_IN_STATIC_LIBRARY          YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_USE_COMPILER_RT                                YES                                                               CACHE  BOOL    ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  LLVM_BUILD_BENCHMARKS                                 NO                                                                CACHE  BOOL    ""  )
set(  LLVM_BUILD_LLVM_DYLIB                                 NO                                                                CACHE  BOOL    ""  )
set(  LLVM_BUILD_TOOLS                                      NO                                                                CACHE  BOOL    ""  )
set(  LLVM_DEFAULT_TARGET_TRIPLE                            ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  LLVM_ENABLE_ASSERTIONS                                NO                                                                CACHE  BOOL    ""  )
set(  LLVM_ENABLE_EH                                        NO                                                                CACHE  BOOL    ""  )
set(  LLVM_ENABLE_LIBCXX                                    NO                                                                CACHE  BOOL    ""  )
set(  LLVM_STATIC_LINK_CXX_STDLIB                           YES                                                               CACHE  BOOL    ""  )
set(  LLVM_ENABLE_LIBXML2                                   NO                                                                CACHE  BOOL    ""  )
set(  LLVM_ENABLE_LLD                                       NO                                                                CACHE  BOOL    ""  )
set(  LLVM_ENABLE_PROJECTS                                  "lld;compiler-rt;libunwind;libcxxabi;libcxx;llvm;clang"           CACHE  STRING  ""  )
set(  LLVM_ENABLE_RTTI                                      NO                                                                CACHE  BOOL    ""  )
set(  LLVM_HOST_TRIPLE                                      ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  LLVM_INCLUDE_BENCHMARKS                               NO                                                                CACHE  BOOL    ""  )
set(  LLVM_INCLUDE_TESTS                                    NO                                                                CACHE  BOOL    ""  )
set(  LLVM_OPTIMIZED_TABLEGEN                               YES                                                               CACHE  BOOL    ""  )
set(  LLVM_TARGETS_TO_BUILD                                 Native                                                            CACHE  STRING  ""  )


####  ##############################################        ################################################################  #####  ######  ##  #
set(  CLANG_BUILD_TOOLS                                     YES                                                               CACHE  BOOL    ""  )
set(  CLANG_DEFAULT_CXX_STDLIB                              libc++                                                            CACHE  STRING  ""  )
set(  CLANG_DEFAULT_RTLIB                                   compiler-rt                                                       CACHE  STRING  ""  )
set(  CLANG_DEFAULT_UNWINDLIB                               libunwind                                                         CACHE  STRING  ""  )
set(  LIBCLANG_BUILD_STATIC                                 YES                                                               CACHE  BOOL    ""  )


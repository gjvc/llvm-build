
#
# ------------------------------------------------------------------------------------------------------------------------
# >>> .//src/cmake/llvm-9.0.1-clang-bootstrap/stage2.cmake
# ------------------------------------------------------------------------------------------------------------------------
#


############################################################################################################################################
link_directories( ${STAGE1_TARGET_DIR}/lib/ )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  CMAKE_ASM_COMPILER_TARGET                       ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  CMAKE_BUILD_TYPE                                Release                                                           CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_LAUNCHER                       ${CCACHE_BINARY}                                                  CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER                                ${STAGE1_TARGET_DIR}/bin/clang                                    CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_TARGET                         ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_LAUNCHER                     ${CCACHE_BINARY}                                                  CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${STAGE1_TARGET_DIR}/bin/clang++                                  CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_TARGET                       ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  CMAKE_CXX_FLAGS                                 "${CMAKE_CXX_FLAGS} -stdlib=libc++"                               CACHE  STRING  ""  ) # -flto
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -stdlib=libc++"                          CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -stdlib=libc++ -rtlib=compiler-rt"     CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE2_TARGET_DIR}                                              CACHE  STRING  ""  )
set(  CMAKE_LINKER                                    ${STAGE1_TARGET_DIR}/bin/ld.lld                                   CACHE  STRING  ""  )
set(  CMAKE_POSITION_INDEPENDENT_CODE                 YES                                                               CACHE  BOOL    ""  )
set(  CMAKE_SHARED_LINKER_FLAGS                       "-rtlib=compiler-rt -lc++abi -lunwind -lpthread -ldl"             CACHE  STRING  ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  BUILD_SHARED_LIBS                               NO                                                                CACHE  BOOL    ""  )
set(  TARGET_TRIPLE                                   ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LLD_BUILD_TOOLS                                 YES                                                               CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  COMPILER_RT_BUILD_BUILTINS                      YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_CRT                           YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_LIBFUZZER                     NO                                                                CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_PROFILE                       YES                                                               CACHE  BOOL    ""  )
#set(  COMPILER_RT_BUILD_SANITIZERS                    YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILD_XRAY                          YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_BUILTINS_STANDALONE_BUILD           YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_DEFAULT_TARGET_TRIPLE               ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
#set(  COMPILER_RT_EXCLUDE_ATOMIC_BUILTIN              NO                                                                CACHE  BOOL    ""  )
set(  COMPILER_RT_USE_BUILTINS_LIBRARY                YES                                                               CACHE  BOOL    ""  )
set(  COMPILER_RT_USE_LIBCXX                          YES                                                               CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LIBUNWIND_ENABLE_SHARED                         YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_ENABLE_STATIC                         YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_ENABLE_THREADS                        YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_HERMETIC_STATIC_LIBRARY               NO                                                                CACHE  BOOL    ""  )
set(  LIBUNWIND_INSTALL_LIBRARY                       YES                                                               CACHE  BOOL    ""  )
set(  LIBUNWIND_TARGET_TRIPLE                         ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  LIBUNWIND_USE_COMPILER_RT                       YES                                                               CACHE  BOOL    ""  )


####   ##############################################  ###############################################################  #####  ######  ##  #
set(   LIBCXXABI_ENABLE_SHARED                         YES                                                              CACHE  BOOL    ""  )
set(   LIBCXXABI_ENABLE_STATIC                         YES                                                              CACHE  BOOL    ""  )
set(   LIBCXXABI_HAS_PTHREAD_API                       YES                                                              CACHE  BOOL    ""  )
set(   LIBCXXABI_USE_COMPILER_RT                       YES                                                              CACHE  BOOL    ""  )
set(   LIBCXXABI_ENABLE_STATIC_UNWINDER                YES                                                              CACHE  BOOL    ""  )
#set(  LIBCXXABI_USE_LLVM_UNWINDER                     YES                                                              CACHE  BOOL    ""  )
set(  LIBCXXABI_STATICALLY_LINK_UNWINDER_IN_STATIC_LIBRARY  YES                                                        CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LIBCXX_ABI_UNSTABLE                             NO                                                                CACHE  BOOL    ""  )
set(  LIBCXX_CXX_ABI                                  libcxxabi                                                         CACHE  STRING  ""  )
set(  LIBCXX_CXX_ABI_INCLUDE_PATHS                    ${SRC_PATH}/libcxxabi/include                                     CACHE  STRING  ""  )
set(  LIBCXX_ENABLE_SHARED                            YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_ENABLE_STATIC                            YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_HAS_GCC_S_LIB                            NO                                                                CACHE  BOOL    ""  )
set(  LIBCXX_INCLUDE_BENCHMARKS                       NO                                                                CACHE  BOOL    ""  )
set(  LIBCXX_INSTALL_HEADERS                          YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_INSTALL_SUPPORT_HEADERS                  YES                                                               CACHE  BOOL    ""  )
#set(  LIBCXX_STATICALLY_LINK_ABI_IN_SHARED_LIBRARY    NO                                                                CACHE  BOOL    ""  )
set(  LIBCXX_STATICALLY_LINK_ABI_IN_STATIC_LIBRARY    YES                                                               CACHE  BOOL    ""  )
set(  LIBCXX_TARGET_TRIPLE                            ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  LIBCXX_USE_COMPILER_RT                          YES                                                               CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LIBUNWIND_ENABLE_ASSERTIONS                     NO                                                                CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LIBCXXABI_ENABLE_ASSERTIONS                     NO                                                                CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LIBCXX_ENABLE_ASSERTIONS                        NO                                                                CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  LLVM_ENABLE_ASSERTIONS                          NO                                                                CACHE  BOOL    ""  )
set(  LLVM_ENABLE_PROJECTS                            "lld;buitins;compiler-rt;libunwind;libcxxabi;libcxx;llvm;clang"   CACHE  STRING  ""  )
set(  LLVM_OPTIMIZED_TABLEGEN                         YES                                                               CACHE  BOOL    ""  )
set(  LLVM_TARGETS_TO_BUILD                           Native                                                            CACHE  STRING  ""  )
set(  LLVM_BUILD_BENCHMARKS                           NO                                                                CACHE  BOOL    ""  )
#set(  LLVM_BUILD_EXTERNAL_COMPILER_RT                 YES                                                               CACHE  BOOL    ""  )
set(  LLVM_BUILD_TOOLS                                NO                                                                CACHE  BOOL    ""  )
set(  LLVM_DEFAULT_TARGET_TRIPLE                      ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
set(  LLVM_ENABLE_LIBCXX                              YES                                                               CACHE  BOOL    ""  )
set(  LLVM_STATIC_LINK_CXX_STDLIB                     YES                                                               CACHE  BOOL    ""  )
#set(  LLVM_ENABLE_EH                                  YES                                                               CACHE  BOOL    ""  )
#set(  LLVM_ENABLE_LLD                                 YES                                                               CACHE  BOOL    ""  )
#set(  LLVM_ENABLE_LTO                                 Thin                                                              CACHE  STRING  ""  )
#set(  LLVM_ENABLE_RTTI                                YES                                                               CACHE  BOOL    ""  )
set(  LLVM_HOST_TRIPLE                                ${GCC_DUMPMACHINE}                                                CACHE  STRING  ""  )
#set(  LLVM_INCLUDE_BENCHMARKS                         NO                                                                CACHE  BOOL    ""  )
#set(  LLVM_LIBRARY_DIR                                ${STAGE1_TARGET_DIR}/lib/                                         CACHE  STRING  ""  )
#set(  LLVM_MAIN_SRC_DIR                               ${SRC_PATH}/llvm/                                                 CACHE  STRING  ""  )
set(  LLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN            YES                                                               CACHE  BOOL    ""  )
#set(  LIBCXX_ENABLE_EXPERIMENTAL_LIBRARY              NO                                                                CACHE  BOOL    ""  )


####  ##############################################  ################################################################  #####  ######  ##  #
set(  CLANG_BUILD_TOOLS                               YES                                                               CACHE  BOOL    ""  )
set(  CLANG_DEFAULT_CXX_STDLIB                        libc++                                                            CACHE  STRING  ""  )
set(  CLANG_DEFAULT_RTLIB                             compiler-rt                                                       CACHE  STRING  ""  )
set(  CLANG_INCLUDE_TESTS                             NO                                                                CACHE  BOOL    ""  )
#set(  CLANG_DEFAULT_UNWINDLIB                         libunwind                                                         CACHE  STRING  ""  )
#set(  CLANG_DEFAULT_LINKER                            lld                                                               CACHE  STRING  ""  )
#set(  CLANG_INSTALL_SCANBUILD                         YES                                                               CACHE  BOOL    ""  )
#set(  CLANG_INSTALL_SCANVIEW                          YES                                                               CACHE  BOOL    ""  )
#set(  CLANG_PLUGIN_SUPPORT                            NO                                                                CACHE  BOOL    ""  )
set(  LIBCLANG_BUILD_STATIC                           YES                                                               CACHE  BOOL    ""  )

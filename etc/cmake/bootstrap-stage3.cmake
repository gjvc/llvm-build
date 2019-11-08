
#
# -----------------------------------------------------------------------------
# >>> .//src/cmake/llvm-9.0.1-clang-bootstrap/stage3.cmake
# -----------------------------------------------------------------------------
#


####   ##############################################  ##############################################################  #####  ######  ##  #
#set(  CLANG_DEFAULT_UNWINDLIB                         libunwind                                                       CACHE  STRING  ""  )
#set(  LLVM_ENABLE_PROJECTS                            "clang;clang-tools-extra;libcxx;libcxxabi;lld"                  CACHE  STRING  ""  )
#set(  LLVM_ENABLE_RUNTIMES                            "compiler-rt"                                                   CACHE  STRING  ""  )
set(   CLANG_DEFAULT_CXX_STDLIB                        libc++                                                          CACHE  STRING  ""  )
set(   CLANG_DEFAULT_LINKER                            lld                                                             CACHE  STRING  ""  )
set(   CMAKE_CXX_FLAGS                                 "${CMAKE_CXX_FLAGS} -fno-threadsafe-statics"                    CACHE  STRING  ""  )
set(   CMAKE_CXX_LINK_FLAGS                            "-lc++"                                                         CACHE  STRING  ""  )
set(   CMAKE_EXE_LINKER_FLAGS                          "-lc++"                                                         CACHE  STRING  ""  )
set(   CMAKE_MODULE_LINKER_FLAGS                       "-lc++"                                                         CACHE  STRING  ""  )
set(   CMAKE_SHARED_LINKER_FLAGS                       "-lc++"                                                         CACHE  STRING  ""  )
set(   LIBCLANG_BUILD_STATIC                           YES                                                             CACHE  BOOL    ""  )
set(   LLVM_ENABLE_LTO                                 NO                                                              CACHE  BOOL    ""  )
set(   VERBOSE                                         YES                                                             CACHE  BOOL    ""  )

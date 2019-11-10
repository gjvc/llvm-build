
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage3.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#


################################################################################################################################################
link_directories( ${STAGE2_TARGET_DIR}/lib/ )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CMAKE_VERBOSE_MAKEFILE                          YES                                                                   CACHE  BOOL    ""  )
set(  CMAKE_BUILD_RPATH_USE_ORIGIN                    YES                                                                   CACHE  BOOL    ""  )
set(  CMAKE_BUILD_WITH_INSTALL_RPATH                  YES                                                                   CACHE  BOOL    ""  )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CMAKE_ASM_COMPILER_TARGET                       ${GCC_DUMPMACHINE}                                                    CACHE  STRING  ""  )
set(  CMAKE_BUILD_TYPE                                Release                                                               CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${STAGE2_TARGET_DIR}/bin/clang++                                      CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_LAUNCHER                     ${CCACHE_BINARY}                                                      CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER_TARGET                       ${GCC_DUMPMACHINE}                                                    CACHE  STRING  ""  )
set(  CMAKE_CXX_FLAGS                                 "${CMAKE_CXX_FLAGS} -stdlib=libc++"                                   CACHE  STRING  ""  )
set(  CMAKE_CXX_FLAGS                                 "${CMAKE_CXX_FLAGS} -pic -fPIC"                                       CACHE  STRING  ""  )
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -lc++"                                       CACHE  STRING  ""  )
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -static"                                     CACHE  STRING  ""  )
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -fPIE"                                       CACHE  STRING  ""  )
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -stdlib=libc++"                              CACHE  STRING  ""  )
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -rtlib=compiler-rt"                          CACHE  STRING  ""  )
set(  CMAKE_CXX_LINK_FLAGS                            "${CMAKE_CXX_LINK_FLAGS} -Wl,-rpath,\$ORIGIN/../lib/"                 CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER                                ${STAGE2_TARGET_DIR}/bin/clang                                        CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_LAUNCHER                       ${CCACHE_BINARY}                                                      CACHE  STRING  ""  )
set(  CMAKE_C_COMPILER_TARGET                         ${GCC_DUMPMACHINE}                                                    CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -lc++"                                     CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -static"                                   CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -pie -fPIE"                                CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -stdlib=libc++ -rtlib=compiler-rt"         CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -Wl,-rpath,\$ORIGIN/../lib/"               CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE3_TARGET_DIR}                                                  CACHE  STRING  ""  )
set(  CMAKE_LINKER                                    ${STAGE2_TARGET_DIR}/bin/ld.lld                                       CACHE  STRING  ""  )
set(  CMAKE_POSITION_INDEPENDENT_CODE                 YES                                                                   CACHE  BOOL    ""  )
set(  CMAKE_SHARED_LINKER_FLAGS                       "-stdlib=libc++ -rtlib=compiler-rt -lpthread -ldl"                    CACHE  STRING  ""  )
set(  CMAKE_VERBOSE_MAKEFILE                          YES                                                                   CACHE  BOOL    ""  )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  BUILD_SHARED_LIBS                               NO                                                                    CACHE  BOOL    ""  )
set(  TARGET_TRIPLE                                   ${GCC_DUMPMACHINE}                                                    CACHE  STRING  ""  )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  LLVM_TARGETS_TO_BUILD                           Native                                                                CACHE  STRING  ""  )
set(  LLVM_BUILD_TOOLS                                NO                                                                    CACHE  BOOL    ""  )
set(  LLVM_ENABLE_PROJECTS                            "lld;buitins;compiler-rt;libunwind;libcxxabi;libcxx;llvm;clang"       CACHE  STRING  ""  )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CLANG_DEFAULT_CXX_STDLIB                        libc++                                                                CACHE  STRING  ""  )
set(  CLANG_DEFAULT_RTLIB                             compiler-rt                                                           CACHE  STRING  ""  )
set(  LIBCLANG_BUILD_STATIC                           NO                                                                    CACHE  BOOL    ""  )


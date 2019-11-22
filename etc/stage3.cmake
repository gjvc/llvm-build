
#
# ----------------------------------------------------------------------------------------------------------------------
# .//etc/stage3.cmake
# ----------------------------------------------------------------------------------------------------------------------
#

########################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${STAGE2_TARGET_DIR}/lib/ )

execute_process( COMMAND "nproc" "--all" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE NPROC_ALL )
execute_process( COMMAND "${STAGE1_TARGET_DIR}/bin/llvm-config" "--ldflags" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE STAGE2_LDFLAGS )
execute_process( COMMAND "${STAGE2_TARGET_DIR}/bin/llvm-config" "--libs" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE STAGE2_LIBS )
execute_process( COMMAND "${STAGE1_TARGET_DIR}/bin/llvm-config" "--system-libs" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE STAGE2_SYSTEM_LIBS )


####  ####################################################  #######################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER                                      ${STAGE2_TARGET_DIR}/bin/clang                           CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                                    ${STAGE2_TARGET_DIR}/bin/clang++                         CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                                  ${STAGE3_TARGET_DIR}                                     CACHE  STRING  ""  )

set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc"               CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++"            CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -Wl,-rpath,\$ORIGIN/../lib"   CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} ${STAGE2_LIBS}"               CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} ${STAGE2_LDFLAGS}"            CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} ${STAGE2_SYSTEM_LIBS}"        CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -Wl,--thinlto-cache-dir=${THINLTO_CACHE_DIR}" CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -Wl,--thinlto-jobs=${NPROC_ALL}"              CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -Wl,--lto-O2"                                 CACHE  STRING  ""  FORCE )

set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -static-libgcc"            CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -static-libstdc++"         CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} ${STAGE2_LIBS}"            CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} ${STAGE2_LDFLAGS}"         CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} ${STAGE2_SYSTEM_LIBS}"     CACHE  STRING  ""  FORCE )

set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--thinlto-cache-dir=${THINLTO_CACHE_DIR}" CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--thinlto-jobs=${NPROC_ALL}"              CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--lto-O2"                                 CACHE  STRING  ""  FORCE )

set(  CMAKE_CXX_FLAGS                                       "${CMAKE_CXX_FLAGS} -flto=thin"                                          CACHE  STRING  ""  FORCE )
set(  LLVM_ENABLE_LLD                                       YES                                                                      CACHE  BOOL    ""  )
set(  LLVM_PARALLEL_LINK_JOBS                               ${NPROC_ALL}                                                             CACHE  STRING  ""  )


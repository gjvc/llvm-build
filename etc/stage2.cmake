
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage2.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#

################################################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${STAGE1_TARGET_DIR}/lib/ )

execute_process( COMMAND "nproc" "--all" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE NPROC_ALL )

####  ###########################  #######################################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER             ${STAGE1_TARGET_DIR}/bin/clang                                           CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER           ${STAGE1_TARGET_DIR}/bin/clang++                                         CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX         ${STAGE2_TARGET_DIR}                                                     CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS       "${CMAKE_EXE_LINKER_FLAGS} -Wl,-lto-O2"                                  CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS       "${CMAKE_EXE_LINKER_FLAGS} -Wl,--thinlto-jobs=${NPROC_ALL}"              CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS       "${CMAKE_EXE_LINKER_FLAGS} -Wl,--thinlto-cache-dir=${THINLTO_CACHE_DIR}" CACHE  STRING  ""  FORCE )

####  ###########################  #######################################################################  #####  ######  ##  #
set(  LLVM_ENABLE_LLD              YES                                                                      CACHE  BOOL    ""  )
set(  LLVM_ENABLE_LTO              Thin                                                                     CACHE  BOOL    ""  )
set(  LLVM_PARALLEL_LINK_JOBS      ${NPROC_ALL}                                                             CACHE  STRING  ""  )


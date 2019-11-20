
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage1.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#

################################################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${GCC_ROOT}/lib/gcc/${GCC_DUMPMACHINE}/${GCC_VERSION}/ )

execute_process( COMMAND "${STAGE1_TARGET_DIR}/bin/llvm-config" "--system-libs" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE SYSTEM_LIBS )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER                                ${GCC_ROOT}/bin/gcc                                                   CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${GCC_ROOT}/bin/g++                                                   CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE1_TARGET_DIR}                                                  CACHE  STRING  ""  )


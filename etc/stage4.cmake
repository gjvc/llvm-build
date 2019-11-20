
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage4.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#

################################################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${STAGE3_TARGET_DIR}/lib/ )

execute_process( COMMAND "${STAGE3_TARGET_DIR}/bin/llvm-config" "--system-libs" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE SYSTEM_LIBS )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER                                ${STAGE3_TARGET_DIR}/bin/clang                                        CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${STAGE3_TARGET_DIR}/bin/clang++                                      CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE4_TARGET_DIR}                                                  CACHE  STRING  ""  )


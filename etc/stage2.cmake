
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage2.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#

################################################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${STAGE1_TARGET_DIR}/lib/ )

execute_process( COMMAND "${STAGE1_TARGET_DIR}/bin/llvm-config" "--system-libs" OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE SYSTEM_LIBS )


####  ####################################################  #######################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER                                      ${STAGE1_TARGET_DIR}/bin/clang                           CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                                    ${STAGE1_TARGET_DIR}/bin/clang++                         CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                                  ${STAGE2_TARGET_DIR}                                     CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc"               CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++"            CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} -Wl,-rpath,\$ORIGIN/../lib"   CACHE  STRING  ""  FORCE )
set(  CMAKE_EXE_LINKER_FLAGS                                "${CMAKE_EXE_LINKER_FLAGS} ${SYSTEM_LIBS}"               CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -static-libgcc"            CACHE  STRING  ""  FORCE )
set(  CMAKE_SHARED_LINKER_FLAGS                             "${CMAKE_SHARED_LINKER_FLAGS} -static-libstdc++"         CACHE  STRING  ""  FORCE )


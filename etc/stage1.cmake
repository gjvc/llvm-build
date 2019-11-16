
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage1.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#

################################################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${GCC_ROOT}/lib/gcc/${GCC_DUMPMACHINE}/${GCC_VERSION}/ )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER                                ${GCC_ROOT}/bin/gcc                                                   CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${GCC_ROOT}/bin/g++                                                   CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -Wl,-rpath,'$$ORIGIN/../lib/'"             CACHE  STRING  "" )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc"                            CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++"                         CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE1_TARGET_DIR}                                                  CACHE  STRING  ""  )
set(  CMAKE_SHARED_LINKER_FLAGS                       "${CMAKE_SHARED_LINKER_FLAGS} -Wl,-rpath,'$ORIGIN/../lib'"            CACHE  STRING  "" )


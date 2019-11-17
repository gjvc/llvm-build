
#
# ----------------------------------------------------------------------------------------------------------------------------------------------
# .//etc/stage3.cmake
# ----------------------------------------------------------------------------------------------------------------------------------------------
#

################################################################################################################################################
include( ${CMAKE_CURRENT_LIST_DIR}/base.cmake )
link_directories( ${STAGE3_TARGET_DIR}/lib/ )

####  ##############################################  ####################################################################  #####  ######  ##  #
set(  CMAKE_C_COMPILER                                ${STAGE3_TARGET_DIR}/bin/clang                                        CACHE  STRING  ""  )
set(  CMAKE_CXX_COMPILER                              ${STAGE3_TARGET_DIR}/bin/clang++                                      CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc"                            CACHE  STRING  ""  )
set(  CMAKE_EXE_LINKER_FLAGS                          "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++"                         CACHE  STRING  ""  )
set(  CMAKE_INSTALL_PREFIX                            ${STAGE4_TARGET_DIR}                                                  CACHE  STRING  ""  )
set(  CMAKE_LINKER                                    ${STAGE3_TARGET_DIR}/bin/ld.lld                                       CACHE  STRING  ""  )


####  ##############################################  ####################################################################  #####  ######  ##  #
#set(  LLVM_ENABLE_LTO                                 Thin                                                                  CACHE  STRING  ""  )


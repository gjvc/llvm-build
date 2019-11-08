
option( ACXXEL_ENABLE_CUDA "enable CUDA for acxxel" ON)
option( ACXXEL_ENABLE_DOXYGEN "enable Doxygen for acxxel" OFF)
option( ACXXEL_ENABLE_EXAMPLES "enable acxxel examples" OFF)
option( ACXXEL_ENABLE_MULTI_DEVICE_UNIT_TESTS "enable acxxel multi-device unit tests" OFF)
option( ACXXEL_ENABLE_OPENCL "enable OpenCL for acxxel" ON)
option( ACXXEL_ENABLE_UNIT_TESTS "enable acxxel unit tests" ON)
option( BENCHMARK_BUILD_32_BITS "Build a 32 bit version of the library." OFF)
option( BENCHMARK_DOWNLOAD_DEPENDENCIES "Allow the downloading and in-tree building of unmet dependencies" OFF)
option( BENCHMARK_ENABLE_ASSEMBLY_TESTS "Enable building and running the assembly tests"
option( BENCHMARK_ENABLE_EXCEPTIONS "Enable the use of exceptions in the benchmark library." ON)
option( BENCHMARK_ENABLE_GTEST_TESTS "Enable building the unit tests which depend on gtest" OFF)
option( BENCHMARK_ENABLE_GTEST_TESTS "Enable building the unit tests which depend on gtest" ON)
option( BENCHMARK_ENABLE_INSTALL "Enable installation of benchmark. (Projects embedding benchmark may want to turn this OFF.)" ON)
option( BENCHMARK_ENABLE_LTO "Enable link time optimisation of the benchmark library." OFF)
option( BENCHMARK_ENABLE_TESTING "Enable testing of the benchmark library." ON)
option( BENCHMARK_USE_LIBCXX "Build and test using libc++ as the standard library." OFF)
option( BUILD_CLANG_FORMAT_VS_PLUGIN "Build clang-format VS plugin" OFF)
option( BUILD_CLANG_TIDY_VS_PLUGIN "Build clang-tidy VS plugin" OFF)
option( BUILD_SHARED_LIBS
option( CLANG_BUILD_EXAMPLES "Build CLANG example programs by default." OFF)
option( CLANG_BUILD_TOOLS
option( CLANG_ENABLE_ARCMT "Build ARCMT." ON)
option( CLANG_ENABLE_PROTO_FUZZER "Build Clang protobuf fuzzer." OFF)
option( CLANG_ENABLE_STATIC_ANALYZER "Build static analyzer." ON)
option( CLANG_INCLUDE_DOCS "Generate build targets for the Clang docs."
option( CLANG_INCLUDE_TESTS
option( CLANG_INSTALL_SCANBUILD "Install the scan-build tool" ON)
option( CLANG_INSTALL_SCANVIEW "Install the scan-view tool" ON)
option( CLANG_PLUGIN_SUPPORT "Build clang with plugin support" ON)
option( CLANG_TEST_USE_VG "Run Clang tests under Valgrind" OFF)
option( CLANG_TOOLS_EXTRA_INCLUDE_DOCS "Generate build targets for the Clang Extra Tools docs."
option( CLANG_TOOLS_TEST_USE_VG "Run Clang tools' tests under Valgrind" OFF)
option( COMPILER_RT_BUILD_BUILTINS "Build builtins" ON)
option( COMPILER_RT_BUILD_CRT "Build crtbegin.o/crtend.o" ON)
option( COMPILER_RT_BUILD_LIBFUZZER "Build libFuzzer" ON)
option( COMPILER_RT_BUILD_PROFILE "Build profile runtime" ON)
option( COMPILER_RT_BUILD_SANITIZERS "Build sanitizers" ON)
option( COMPILER_RT_BUILD_XRAY "Build xray" ON)
option( COMPILER_RT_BUILD_XRAY_NO_PREINIT "Build xray with no preinit patching" OFF)
option( COMPILER_RT_DEBUG "Build runtimes with full debug info" OFF)
option( COMPILER_RT_EXCLUDE_ATOMIC_BUILTIN
option( COMPILER_RT_EXTERNALIZE_DEBUGINFO
option( COMPILER_RT_INTERCEPT_LIBDISPATCH
option( COMPILER_RT_LIBDISPATCH_INSTALL_PATH
option( COMPILER_RT_USE_BUILTINS_LIBRARY
option( COMPILER_RT_USE_LIBCXX
option( ENABLE_RUNTIME_SUBNORMAL "Enable runtime linking of subnormal support."
option( LIBCLANG_BUILD_STATIC
option( LIBCXXABI_BAREMETAL "Build libc++abi for baremetal targets." OFF)
option( LIBCXXABI_BUILD_32_BITS "Build 32 bit libc++abi." ${LLVM_BUILD_32_BITS})
option( LIBCXXABI_BUILD_EXTERNAL_THREAD_LIBRARY
option( LIBCXXABI_ENABLE_ASSERTIONS "Enable assertions independent of build mode." ON)
option( LIBCXXABI_ENABLE_EXCEPTIONS
option( LIBCXXABI_ENABLE_NEW_DELETE_DEFINITIONS
option( LIBCXXABI_ENABLE_PEDANTIC "Compile with pedantic enabled." ON)
option( LIBCXXABI_ENABLE_PIC "Build Position-Independent Code, even in static library" ON)
option( LIBCXXABI_ENABLE_SHARED "Build libc++abi as a shared library." ON)
option( LIBCXXABI_ENABLE_STATIC "Build libc++abi as a static library." ON)
option( LIBCXXABI_ENABLE_STATIC_UNWINDER "Statically link the LLVM unwinder." OFF)
option( LIBCXXABI_ENABLE_THREADS "Build with threads enabled" ON)
option( LIBCXXABI_ENABLE_WERROR "Fail and stop if a warning is triggered." OFF)
option( LIBCXXABI_HAS_EXTERNAL_THREAD_API
option( LIBCXXABI_HAS_PTHREAD_API "Ignore auto-detection and force use of pthread API" OFF)
option( LIBCXXABI_HERMETIC_STATIC_LIBRARY
option( LIBCXXABI_INCLUDE_TESTS "Generate build targets for the libc++abi unit tests." ${LLVM_INCLUDE_TESTS})
option( LIBCXXABI_INSTALL_LIBRARY "Install the libc++abi library." ON)
option( LIBCXXABI_SILENT_TERMINATE "Set this to make the terminate handler default to a silent alternative" OFF)
option( LIBCXXABI_USE_COMPILER_RT "Use compiler-rt instead of libgcc" OFF)
option( LIBCXXABI_USE_LLVM_UNWINDER "Build and use the LLVM unwinder." OFF)
option( LIBCXX_ABI_FORCE_ITANIUM "Ignore auto-detection and force use of the Itanium ABI.")
option( LIBCXX_ABI_FORCE_MICROSOFT "Ignore auto-detection and force use of the Microsoft ABI.")
option( LIBCXX_ABI_UNSTABLE "Unstable ABI of libc++." OFF)
option( LIBCXX_BUILD_32_BITS "Build 32 bit libc++." ${LLVM_BUILD_32_BITS})
option( LIBCXX_BUILD_EXTERNAL_THREAD_LIBRARY
option( LIBCXX_CONFIGURE_IDE "Configure libcxx for use within an IDE"
option( LIBCXX_DISABLE_MACRO_CONFLICT_WARNINGS "Disable #warnings about conflicting macros." OFF)
option( LIBCXX_ENABLE_ABI_LINKER_SCRIPT
option( LIBCXX_ENABLE_ASSERTIONS "Enable assertions independent of build mode." OFF)
option( LIBCXX_ENABLE_EXCEPTIONS "Use exceptions." ON)
option( LIBCXX_ENABLE_EXPERIMENTAL_LIBRARY "Build libc++experimental.a" ON)
option( LIBCXX_ENABLE_FILESYSTEM "Build filesystem as part of the main libc++ library"
option( LIBCXX_ENABLE_GLOBAL_FILESYSTEM_NAMESPACE "Build libc++ with support for the global filesystem namespace." ON)
option( LIBCXX_ENABLE_MONOTONIC_CLOCK
option( LIBCXX_ENABLE_NEW_DELETE_DEFINITIONS
option( LIBCXX_ENABLE_PEDANTIC "Compile with pedantic enabled." OFF)
option( LIBCXX_ENABLE_RTTI "Use run time type information." ON)
option( LIBCXX_ENABLE_SHARED "Build libc++ as a shared library." ON)
option( LIBCXX_ENABLE_STATIC "Build libc++ as a static library." ON)
option( LIBCXX_ENABLE_STATIC_ABI_LIBRARY
option( LIBCXX_ENABLE_STDIN "Build libc++ with support for stdin/std::cin." ON)
option( LIBCXX_ENABLE_STDOUT "Build libc++ with support for stdout/std::cout." ON)
option( LIBCXX_ENABLE_THREADS "Build libc++ with support for threads." ON)
option( LIBCXX_ENABLE_THREAD_UNSAFE_C_FUNCTIONS "Build libc++ with support for thread-unsafe C functions" ON)
option( LIBCXX_ENABLE_WERROR "Fail and stop if a warning is triggered." OFF)
option( LIBCXX_GENERATE_COVERAGE "Enable generating code coverage." OFF)
option( LIBCXX_HAS_EXTERNAL_THREAD_API
option( LIBCXX_HAS_MUSL_LIBC "Build libc++ with support for the Musl C library" OFF)
option( LIBCXX_HAS_PTHREAD_API "Ignore auto-detection and force use of pthread API" OFF)
option( LIBCXX_HAS_WIN32_THREAD_API "Ignore auto-detection and force use of win32 thread API" OFF)
option( LIBCXX_HERMETIC_STATIC_LIBRARY
option( LIBCXX_HIDE_FROM_ABI_PER_TU_BY_DEFAULT "Enable per TU ABI insulation by default. To be used by vendors." OFF)
option( LIBCXX_INCLUDE_BENCHMARKS "Build the libc++ benchmarks and their dependencies" ON)
option( LIBCXX_INCLUDE_DOCS "Build the libc++ documentation." ${LLVM_INCLUDE_DOCS})
option( LIBCXX_INCLUDE_TESTS "Build the libc++ tests." ${LLVM_INCLUDE_TESTS})
option( LIBCXX_INSTALL_HEADERS "Install the libc++ headers." ON)
option( LIBCXX_INSTALL_LIBRARY "Install the libc++ library." ON)
option( LIBCXX_INSTALL_SUPPORT_HEADERS "Install libc++ support headers." ON)
option( LIBCXX_OVERRIDE_DARWIN_INSTALL "Enable overwriting darwins libc++ installation." OFF)
option( LIBCXX_USE_COMPILER_RT "Use compiler-rt instead of libgcc" OFF)
option( LIBUNWIND_BUILD_32_BITS "Build 32 bit libunwind" ${LLVM_BUILD_32_BITS})
option( LIBUNWIND_ENABLE_ARM_WMMX "Enable unwinding support for ARM WMMX registers." OFF)
option( LIBUNWIND_ENABLE_ASSERTIONS "Enable assertions independent of build mode." ON)
option( LIBUNWIND_ENABLE_CROSS_UNWINDING "Enable cross-platform unwinding support." OFF)
option( LIBUNWIND_ENABLE_PEDANTIC "Compile with pedantic enabled." ON)
option( LIBUNWIND_ENABLE_SHARED "Build libunwind as a shared library." ON)
option( LIBUNWIND_ENABLE_STATIC "Build libunwind as a static library." ON)
option( LIBUNWIND_ENABLE_THREADS "Build libunwind with threading support." ON)
option( LIBUNWIND_ENABLE_WERROR "Fail and stop if a warning is triggered." OFF)
option( LIBUNWIND_HERMETIC_STATIC_LIBRARY
option( LIBUNWIND_INCLUDE_DOCS "Build the libunwind documentation." ${LLVM_INCLUDE_DOCS})
option( LIBUNWIND_INSTALL_LIBRARY "Install the libunwind library." ON)
option( LIBUNWIND_USE_COMPILER_RT "Use compiler-rt instead of libgcc" OFF)
option( LIBUNWIND_WEAK_PTHREAD_LIB "Use weak references to refer to pthread functions." OFF)
option( LLDB_BUILD_INTEL_MPX "Enable Building of Intel(R) Memory Protection Extensions" ON)
option( LLDB_BUILD_INTEL_PT "Enable Building of Intel(R) Processor Trace Tool" OFF)
option( LLDB_INCLUDE_TESTS "Generate build targets for the LLDB unit tests." ${LLVM_INCLUDE_TESTS})
option( LLDB_TEST_USE_CUSTOM_CXX_COMPILER "Use the C++ compiler provided via LLDB_TEST_CXX_COMPILER for building test inferiors (instead of the just-built compiler). Defaults to OFF." OFF)
option( LLDB_TEST_USE_CUSTOM_C_COMPILER "Use the C compiler provided via LLDB_TEST_C_COMPILER for building test inferiors (instead of the just-built compiler). Defaults to OFF." OFF)
option( LLD_BUILD_TOOLS
option( LLD_USE_VTUNE
option( LLVM_APPEND_VC_REV
option( LLVM_BUILD_BENCHMARKS "Add LLVM benchmark targets to the list of default"
option( LLVM_BUILD_EXAMPLES
option( LLVM_BUILD_LLVM_DYLIB "Build libllvm dynamic library" ${LLVM_BUILD_LLVM_DYLIB_default})
option( LLVM_BUILD_RUNTIME
option( LLVM_BUILD_RUNTIMES
option( LLVM_BUILD_TESTS
option( LLVM_BUILD_TOOLS
option( LLVM_BUILD_UTILS
option( LLVM_CREATE_XCODE_TOOLCHAIN "Create a target to install LLVM into an Xcode toolchain" Off)
option( LLVM_DEPENDENCY_DEBUGGING "Dependency debugging mode to verify correctly expressed library dependencies (Darwin only)" OFF)
option( LLVM_ENABLE_BACKTRACES "Enable embedding backtraces on crash." ON)
option( LLVM_ENABLE_CRASH_DUMPS "Turn on memory dumps on crashes. Currently only implemented on Windows." OFF)
option( LLVM_ENABLE_CRASH_OVERRIDES "Enable crash overrides." ON)
option( LLVM_ENABLE_DAGISEL_COV "Debug: Prints tablegen patterns that were used for selecting" OFF)
option( LLVM_ENABLE_DUMP "Enable dump functions even when assertions are disabled" OFF)
option( LLVM_ENABLE_EXPENSIVE_CHECKS "Enable expensive checks" OFF)
option( LLVM_ENABLE_FFI "Use libffi to call external functions from the interpreter" OFF)
option( LLVM_ENABLE_GISEL_COV "Enable collection of GlobalISel rule coverage" OFF)
option( LLVM_ENABLE_LIBCXX "Use libc++ if available." OFF)
option( LLVM_ENABLE_LIBEDIT "Use libedit if available." ON)
option( LLVM_ENABLE_LIBPFM "Use libpfm for performance counters if available." ON)
option( LLVM_ENABLE_LLD "Use lld as C and C++ linker." OFF)
option( LLVM_ENABLE_MODULES "Compile with C++ modules enabled." OFF)
option( LLVM_ENABLE_PEDANTIC "Compile with pedantic enabled." ON)
option( LLVM_ENABLE_PIC "Build Position-Independent Code" ON)
option( LLVM_ENABLE_PLUGINS "Enable plugin support" ${LLVM_ENABLE_PLUGINS_default})
option( LLVM_ENABLE_TERMINFO "Use terminfo database if available." ON)
option( LLVM_ENABLE_THREADS "Use threads if available." ON)
option( LLVM_ENABLE_UNWIND_TABLES "Emit unwind tables for the libraries" ON)
option( LLVM_ENABLE_WARNINGS "Enable compiler warnings." ON)
option( LLVM_ENABLE_WERROR "Fail and stop if a warning is triggered." OFF)
option( LLVM_ENABLE_Z3_SOLVER
option( LLVM_ENABLE_ZLIB "Use zlib for compression/decompression if available." ON)
option( LLVM_EXTERNALIZE_DEBUGINFO
option( LLVM_FORCE_USE_OLD_TOOLCHAIN
option( LLVM_INCLUDE_BENCHMARKS "Generate benchmark targets. If OFF, benchmarks can't be built." ON)
option( LLVM_INCLUDE_EXAMPLES "Generate build targets for the LLVM examples" ON)
option( LLVM_INCLUDE_GO_TESTS "Include the Go bindings tests in test build targets." ON)
option( LLVM_INCLUDE_RUNTIMES "Generate build targets for the LLVM runtimes." ON)
option( LLVM_INCLUDE_TESTS "Generate build targets for the LLVM unit tests." ON)
option( LLVM_INCLUDE_TOOLS "Generate build targets for the LLVM tools." ON)
option( LLVM_INCLUDE_UTILS "Generate build targets for the LLVM utils." ON)
option( LLVM_INSTALL_BINUTILS_SYMLINKS
option( LLVM_INSTALL_MODULEMAPS "Install the modulemap files in the 'install' target." OFF)
option( LLVM_INSTALL_TOOLCHAIN_ONLY "Only include toolchain files in the 'install' target." OFF)
option( LLVM_INSTALL_UTILS "Include utility binaries in the 'install' target." OFF)
option( LLVM_LINK_LLVM_DYLIB "Link tools against the libllvm dynamic library" OFF)
option( LLVM_OPTIMIZED_TABLEGEN "Force TableGen to be built with optimization" OFF)
option( LLVM_OPTIMIZE_SANITIZED_BUILDS "Pass -O1 on debug sanitizer builds" ON)
option( LLVM_POLLY_BUILD "Build LLVM with Polly" ON)
option( LLVM_POLLY_LINK_INTO_TOOLS "Statically link Polly into tools (if available)" ON)
option( LLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN
option( LLVM_USE_FOLDERS "Enable solution folders in Visual Studio. Disable for Express versions." ON)
option( LLVM_USE_INTEL_JITEVENTS
option( LLVM_USE_OPROFILE
option( LLVM_USE_PERF
option( LLVM_USE_SPLIT_DWARF
option( OPENMP_ENABLE_LIBOMPTARGET "Enable building libomptarget for offloading."
option( POLLY_BUNDLED_ISL "Use the bundled version of libisl included in Polly" ON)
option( POLLY_ENABLE_GPGPU_CODEGEN "Enable GPGPU code generation feature" OFF)
option( SANITIZER_ALLOW_CXXABI "Allow use of C++ ABI details in ubsan" ON)
option( SANITIZER_USE_STATIC_CXX_ABI
option( SANITIZER_USE_STATIC_LLVM_UNWINDER

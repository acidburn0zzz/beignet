# Find the native LLVM includes and library
#
# LLVM_INCLUDE_DIR - where to find llvm include files
# LLVM_LIBRARY_DIR - where to find llvm libs
# LLVM_CFLAGS      - llvm compiler flags
# LLVM_LFLAGS      - llvm linker flags
# LLVM_MODULE_LIBS - list of llvm libs for working with modules.
# LLVM_FOUND       - True if llvm found.
if (LLVM_INSTALL_DIR)
  find_program(LLVM_CONFIG_EXECUTABLE NAMES llvm-config-32 llvm-config-3.2 llvm-config DOC "llvm-config executable" PATHS ${LLVM_INSTALL_DIR} NO_DEFAULT_PATH)
else (LLVM_INSTALL_DIR)                                                                
  find_program(LLVM_CONFIG_EXECUTABLE NAMES llvm-config-32 llvm-config-3.2 llvm-config DOC "llvm-config executable")
endif (LLVM_INSTALL_DIR)

if (LLVM_CONFIG_EXECUTABLE)
  message(STATUS "LLVM llvm-config found at: ${LLVM_CONFIG_EXECUTABLE}")
else (LLVM_CONFIG_EXECUTABLE)
  message(FATAL_ERROR "Could NOT find LLVM executable, please add -DLLVM_INSTALL_DIR=/path/to/llvm-config/ in cmake command")
endif (LLVM_CONFIG_EXECUTABLE)

if (LLVM_FIND_VERSION_MAJOR AND LLVM_FIND_VERSION_MINOR)
  SET(LLVM_FIND_VERSION_NODOT "${LLVM_FIND_VERSION_MAJOR}${LLVM_FIND_VERSION_MINOR}")
  execute_process(
    COMMAND ${LLVM_CONFIG_EXECUTABLE} --version
    OUTPUT_VARIABLE LLVM_VERSION
  )
  string(REGEX REPLACE "([0-9]*)\\.([0-9]*)[^0-9]*" "\\1\\2 " LLVM_VERSION_NODOT ${LLVM_VERSION})
  if (LLVM_VERSION_NODOT VERSION_LESS LLVM_FIND_VERSION_NODOT)
    message(FATAL_ERROR "imcompatible LLVM version ${LLVM_VERSION} required ${LLVM_FIND_VERSION}")
  else (LLVM_VERSION_NODOT VERSION_LESS LLVM_FIND_VERSION_NODOT)
    if (LLVM_VERSION_NODOT VERSION_EQUAL LLVM_FIND_VERSION_NODOT)
      message(STATUS "find stable LLVM version ${LLVM_VERSION}")
    else (LLVM_VERSION_NODOT VERSION_EQUAL LLVM_FIND_VERSION_NODOT)
      message(STATUS "find unstable LLVM version ${LLVM_VERSION}")
    endif (LLVM_VERSION_NODOT VERSION_EQUAL LLVM_FIND_VERSION_NODOT)
    add_definitions("-DLLVM_${LLVM_VERSION_NODOT}")
  endif (LLVM_VERSION_NODOT VERSION_LESS LLVM_FIND_VERSION_NODOT)
endif (LLVM_FIND_VERSION_MAJOR AND LLVM_FIND_VERSION_MINOR)

execute_process(
  COMMAND ${LLVM_CONFIG_EXECUTABLE} --includedir
  OUTPUT_VARIABLE LLVM_INCLUDE_DIR
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
  COMMAND ${LLVM_CONFIG_EXECUTABLE} --libdir
  OUTPUT_VARIABLE LLVM_LIBRARY_DIR
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
  COMMAND ${LLVM_CONFIG_EXECUTABLE} --cppflags
  OUTPUT_VARIABLE LLVM_CFLAGS
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
  COMMAND ${LLVM_CONFIG_EXECUTABLE} --ldflags
  OUTPUT_VARIABLE LLVM_LFLAGS
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
  COMMAND ${LLVM_CONFIG_EXECUTABLE} --libs
  OUTPUT_VARIABLE LLVM_MODULE_LIBS
  OUTPUT_STRIP_TRAILING_WHITESPACE
)

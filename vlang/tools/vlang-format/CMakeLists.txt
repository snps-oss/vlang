set(LLVM_LINK_COMPONENTS support)

add_llvm_executable(vlang-format
  VlangFormat.cpp
  )

target_link_libraries(vlang-format
  vlangBasic
  vlangFormat
#   clangLex
#   clangRewriteCore
#   clangTooling
)

install(TARGETS vlang-format RUNTIME DESTINATION bin)

# install(PROGRAMS vlang-format-bbedit.applescript DESTINATION share/vlang)
# install(PROGRAMS vlang-format-diff.py DESTINATION share/vlang)
# install(PROGRAMS vlang-format-sublime.py DESTINATION share/vlang)
# install(PROGRAMS vlang-format.el DESTINATION share/vlang)
# install(PROGRAMS vlang-format.py DESTINATION share/vlang)
# install(PROGRAMS git-vlang-format DESTINATION bin)

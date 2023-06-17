vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Klrohias/unimage-native
  REF c96100472ecb64d5a6ec53df377bef75d26c9151
  SHA512 de7b70f591f165bbe07dfadb6bc6345d646b8eee53c06ea2cbeb7ea1884e7df782a3e1a3666e63fc7bfd372727141c172e05db9ca6c1b29d8570d1f3149d74a6
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)


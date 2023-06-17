vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Klrohias/unimage-native
  REF 5d699e3ecaa0d30601020159fb99d28afac8f2ef
  SHA512 db0f67f5f545b08f6deef9c5e80cfbe44fcb0ceaf1fe85fadb60507f8aec8d4c1e2799369c8552bbbd7292e062086767d42ba77af271df6e5b31eca31aecdaf2
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


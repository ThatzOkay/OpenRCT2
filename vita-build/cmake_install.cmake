# Install script for directory: /home/thatzokay/vita/ThatzOkay/OpenRCT2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/vitasdk/arm-vita-eabi")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/local/vitasdk/bin/arm-vita-eabi-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/cmake" --build "/home/thatzokay/vita/ThatzOkay/OpenRCT2/vita-build" --target g2)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            include(/home/thatzokay/vita/ThatzOkay/OpenRCT2/cmake/download.cmake)
            download_openrct2_zip(
                ZIP_VERSION 0.4.6
                DOWNLOAD_DIR $ENV{DESTDIR}/usr/local/vitasdk/arm-vita-eabi/share/openrct2/sequence/
                SKIP_IF_EXISTS /home/thatzokay/vita/ThatzOkay/OpenRCT2/data/sequence/
                ZIP_URL https://github.com/OpenRCT2/title-sequences/releases/download/v0.4.6/title-sequences.zip
                SHA1 80fefc6ebbabc42a6f4703412daa5c62f661420d
            )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            include(/home/thatzokay/vita/ThatzOkay/OpenRCT2/cmake/download.cmake)
            download_openrct2_zip(
                ZIP_VERSION 1.3.13
                DOWNLOAD_DIR $ENV{DESTDIR}/usr/local/vitasdk/arm-vita-eabi/share/openrct2/object/
                SKIP_IF_EXISTS /home/thatzokay/vita/ThatzOkay/OpenRCT2/data/object/
                ZIP_URL https://github.com/OpenRCT2/objects/releases/download/v1.3.13/objects.zip
                SHA1 15a60424d5f4f0b94ac07763b6967ba0e6ae3a7d
            )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            include(/home/thatzokay/vita/ThatzOkay/OpenRCT2/cmake/download.cmake)
            download_openrct2_zip(
                ZIP_VERSION 1.0.4
                SKIP_IF_EXISTS /home/thatzokay/vita/ThatzOkay/OpenRCT2/data/assetpack/openrct2.sound.parkap
                DOWNLOAD_DIR $ENV{DESTDIR}/usr/local/vitasdk/arm-vita-eabi/share/openrct2/
                ZIP_URL https://github.com/OpenRCT2/OpenSoundEffects/releases/download/v1.0.4/opensound.zip
                SHA1 95e71b3684c9eb84c642563dd2cbf2f6e099a8a5
            )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            include(/home/thatzokay/vita/ThatzOkay/OpenRCT2/cmake/download.cmake)
            download_openrct2_zip(
                ZIP_VERSION 1.5
                SKIP_IF_EXISTS /home/thatzokay/vita/ThatzOkay/OpenRCT2/data/assetpack/openrct2.music.alternative.parkap
                DOWNLOAD_DIR $ENV{DESTDIR}/usr/local/vitasdk/arm-vita-eabi/share/openrct2/
                ZIP_URL https://github.com/OpenRCT2/OpenMusic/releases/download/v1.5/openmusic.zip
                SHA1 f3c707e576281758637598ce68880416891fe5f9
            )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrct2" TYPE FILE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/vita-build/g2.dat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrct2" TYPE DIRECTORY FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/data/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/vita-build/libopenrct2.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/vita-build/openrct2")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openrct2" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openrct2")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/local/vitasdk/bin/arm-vita-eabi-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openrct2")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE OPTIONAL FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/vita-build/openrct2-cli")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openrct2-cli" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openrct2-cli")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/local/vitasdk/bin/arm-vita-eabi-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openrct2-cli")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/openrct2" TYPE FILE FILES
    "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/changelog.txt"
    "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/readme.txt"
    "/home/thatzokay/vita/ThatzOkay/OpenRCT2/contributors.md"
    "/home/thatzokay/vita/ThatzOkay/OpenRCT2/licence.txt"
    "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/scripting.md"
    "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/openrct2.d.ts"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metainfo" TYPE FILE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/linux/openrct2.appdata.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/16x16/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x16.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/24x24/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x24.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/32x32/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x32.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/48x48/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x48.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/64x64/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x64.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/96x96/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x96.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/128x128/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x128.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/256x256/apps" TYPE FILE RENAME "openrct2.png" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_x256.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/scalable/apps" TYPE FILE RENAME "openrct2.svg" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/resources/logo/icon_flag.svg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/linux/openrct2.desktop")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/linux/openrct2-savegame.desktop")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/linux/openrct2-scenario.desktop")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/linux/openrct2-uri.desktop")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mime/packages" TYPE FILE RENAME "openrct2.xml" FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/linux/openrct2-mimeinfo.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man6" TYPE DIRECTORY FILES "/home/thatzokay/vita/ThatzOkay/OpenRCT2/distribution/man/" FILES_MATCHING REGEX "/[^/]*\\.6$")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/thatzokay/vita/ThatzOkay/OpenRCT2/vita-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

if (IOS)

set (LIBS ${LIBS} "-framework GoogleMobileAds")

set(CURRENT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/Plugins/AdmobPlugin)

file (GLOB ADMOB_PLUGIN_FILES ${CURRENT_SOURCE_DIR}/*.cpp  ${CURRENT_SOURCE_DIR}/*.mm)
set (PLUGIN_FILES ${PLUGIN_FILES} ${ADMOB_PLUGIN_FILES})

set(FRAMEWORK_SEARCH_PATHS ${FRAMEWORK_SEARCH_PATHS} ${CURRENT_SOURCE_DIR}/ios/GoogleMobileAdsSdkiOS/GoogleMobileAds.xcframework/ios-arm64_armv7)

set (INCLUDE_DIRS ${INCLUDE_DIRS} ${CURRENT_SOURCE_DIR}/ios/GoogleMobileAdsSdkiOS/GoogleMobileAds.xcframework/ios-arm64_armv7/GoogleMobileAds.framework/GMA)

endif() # IOS